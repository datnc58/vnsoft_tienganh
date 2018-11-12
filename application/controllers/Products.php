<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Products extends MY_Controller
{
    function __construct()
    {
        
        parent::__construct();
        $CI =& get_instance();
        $this->load->model('f_productmodel');
        $this->load->library('pagination');
    }
    protected $pagination_config= array(
        'full_tag_open'=>"<ul class='pagination phantrang'>",
        'full_tag_close'=>"</ul>",
        'first_link' => 'Trang đầu',
        'last_link' => 'Trang cuối',
        'num_links' => 2,
        'num_tag_open'=>'<li>',
        'num_tag_close'=>'</li>',
        'cur_tag_open'=>"<li class='disabled'><li class='active'><a href='#'>",
        'cur_tag_close'=>"<span class='sr-only'></span></a></li>",
        'next_tag_open'=>"<li>",
        'next_tagl_close'=>"</li>",
        'prev_tag_open'=>"<li>",
        'prev_tagl_close'=>"</li>",
        'first_tag_open'=>"<li>",
        'first_tagl_close'=>"</li>",
        'last_tag_open'=>"<li>",
        'last_tagl_close'=>"</li>",
    );
    public function pro_bycategory($alias){
        $limit = $this->input->get('limit');
        $sort = '';
        $order='';
        $sort = $this->input->get('sort');
        $order = $this->input->get('order');

        //tim kiếm
        $price_to = $this->input->get('price_to');
        $hang = $this->input->get('hang');

        $where_khoanggia ='product.lang = "vi" ';
        $where_noibat = 'product.lang = "vi"';

        if($price_to !='') {
            $arrp = explode("-",$price_to);
            $where_khoanggia .="and product.price_sale >= ".$arrp[0]." and product.price_sale <= ".$arrp[1]." ";
        }
        if ($hang !=''){
            $where_noibat .="and product.hangsx_id = '".$hang."'";
        }

        $perpage = $this->input->get('per_page');
        $url = '';$urlSort = '';$urlLimit = '';$urlPage = '';
        $url .= $alias.'?';
        $orderString = '';
        if($sort != null && $order != null){
            $url .= 'sort='.$sort.'&order='.$order;
            $urlSort = 'sort='.$sort.'&order='.$order;
            if($sort=='price'){
                $or = 'product.price_sale';
            }else{
                $or = 'product.'.$sort;
            }
            $by = $order;
        }else{
            $or = 'product.id DESC';
        }
        if($limit == null){
            $limit=12;
        }else{
            $url.='&limit='.$limit;
            $urlLimit = '&limit='.$limit;
        }
        if($perpage != null){
            $urlPage = '&per_page='.$perpage;
        }
        $data['sort'] = $sort;
        $data['order'] = $order;
        $data['limit'] = $limit;
        $data['urlLimit'] = $urlLimit;
        $data['urlSort'] = $urlSort;
        $data['urlPage'] = $urlPage;
        $data['alias'] = $alias;

        $data = array();
        $data['cate_curent'] = $current = $this->f_productmodel->getFirstRowWhere('product_category',array('alias'=>$alias));
        $config['base_url'] = base_url('danh-muc/'.$alias.'.html');
        $config['page_query_string'] = TRUE;
        $config['enable_query_string'] = TRUE;
        $config['total_rows'] = $this->f_productmodel->count_ProbyCate($current->id);
        $config['per_page'] = 15; // xác định số record ở mỗi trang
        $config['uri_segment'] = 4; // xác định segment chứa page number
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);
        //var_dump($id);die;
        $data['lists'] = $lists = $this->f_productmodel->getProbyCate($current->id,$or,$config['per_page'], $this->input->get('per_page'),$where_khoanggia,$where_noibat);
//        echo "<pre>";;
//        var_dump($lists);die;
        $data['cate_pro'] = $this->f_productmodel->get_data('product_category',array(
            'lang' => $this->language,
            'parent_id' => $data['cate_curent']->id,
        ),array('name','desc'),null);

        $data['cate_parent2'] = $this->f_productmodel->getFirstRowWhere('product_category',array('id'=>$data['cate_curent']->parent_id));
        $temp = 'products/pro_bycategory';
        $abc = 'view';
        $this->session->set_userData('view',$abc);

        $arr = array(
            'product.lang' => $this->language,
            //'product_category.id' => $data['cate_curent']->id
        );
        $data['hangsx'] = $this->f_productmodel->getHangsx($arr);

        $data['pfilters'] = $this->f_productmodel->get_data('khoanggia',null,array(
            'to_price' => ''
        ));
        $data['locales'] = $this->f_productmodel->get_data('product_locale',array(
            'lang' => $this->language
        ),array('sort' => ''));
        $data['product_price'] = $this->f_productmodel->count_Productprice($current->id);
        $sBreadcrumbs = '';
        // kiem tra xem ton tai danh muc cha k
        if(isset($data['cate_parent2']->name)){
            $sBreadcrumbs .= '<li>   <a  href="'.$data['cate_parent2']->alias.'.html">'.$data['cate_parent2']->name.'</a> </li>';
        }
        $sBreadcrumbs .= '<li><a>'.$data['cate_curent']->name.'</a> </li>';

        $data['sBreadcrumbs'] =$sBreadcrumbs;

        //var_dump($temp);die;
        $seo=array('title'=>@$data['cate_curent']->title_seo==''?$data['cate_curent']->name:$data['cate_curent']->title_seo,
            'description'=>@$data['cate_curent']->description_seo,
            'keyword'=>@$data['cate_curent']->keyword_seo,
            'image'=>@$data['cate_curent']->image,
            'type'=>'products');

        $this->LoadHeader(null,$seo,true);
        $this->load->view('products/pro_bycategory',$data);
        $this->LoadFooter();
    }
    //product detail
    public function detail($var1,$var2){
        $this->ci =& get_instance();

        $data['item'] = $item = $this->f_productmodel->getProductByAlias($var1);
        $data['size'] = $this->f_productmodel->getwherejoinsize($data['item']->id);
        $data['type'] = $this->f_productmodel->getwherejointype($data['item']->id);
        $data['color'] = $this->f_productmodel->getwherejoincolor($data['item']->id);

        $data['pro_first'] = $item;
        if(!$this->session->userdata('session_pro_'.$data['pro_first']->id)){
            $this->session->set_userdata('session_pro_'.$data['pro_first']->id,1);
            $view = 1;
        }
        else{
            $view = 0;
        }
        $view = $data['pro_first']->view + $view;
        $this->f_productmodel->Update('product',$data['pro_first']->id,array(
            'view' => $view
        ));

        $data['session'] = $this->session->all_userdata();
        $data['cate_current']=$this->f_productmodel->getFirstRowWhere('product_category',array(
            'id' => $item->category_id
        ));
        // lay danh muc cha
        $data['cate_parent'] = $current = $this->f_productmodel->getFirstRowWhere('product_category',
            array('id'=>$data['cate_current']->parent_id)
        );


        $data['tags'] = $this->f_productmodel->get_data('product_tag',array(
            'product_id' => $item->id
        ));

        $data['hotlines'] = $this->f_productmodel->get_data('support_online',array(
        ));

// lay danh muc cha
        $data['cate_parent'] = $current = $this->f_productmodel->getFirstRowWhere('product_category',
            array('id'=>$data['cate_current']->parent_id)
        );
        if(isset($data['cate_parent']->id) && $data['cate_parent']->id == 0){
            $cate_id = $data['cate_parent']->id;
            $data['lists'] = $this->f_productmodel->get_data('media_category',array(
                'lang' => $this->language,
                //'pro_id' => $cate_id,
                'parent_id' => 0,
                'home' => 1
            ),array('id','desc'),null);
        }
        else{
            $cate_id = $data['cate_current']->id;
            $data['lists'] = $this->f_productmodel->get_data('media_category',array(
                'lang' => $this->language,
                'pro_id' => $cate_id,
                'parent_id' => 0,
                'home' => 1
            ),array('id','desc'),null);
        }

        $data['tinh'] =  $this->f_productmodel->get_data('province',null,null);
        foreach ($data['lists'] as $key => $cate){
            $data['lists'][$key]->cate = $this->f_productmodel->get_data('media_category',array(
                'lang' => $this->language,
                'parent_id' => $cate->id,
                'home' => 1
            ));

        }

        // san pham lien quan
        $data['pros'] = $this->f_productmodel->getProductSimilar($item->id,$data['cate_current']->id,1,0);

        $pid = $item->id;
        $data['binh_luan_1'] =   $this->f_productmodel->Count('comments_binhluan',array('id_sanpham'=>$pid,'review'=>1,'giatri'=>1));
        $data['binh_luan_2'] =   $this->f_productmodel->Count('comments_binhluan',array('id_sanpham'=>$pid,'review'=>1,'giatri'=>2));
        $data['binh_luan_3'] =   $this->f_productmodel->Count('comments_binhluan',array('id_sanpham'=>$pid,'review'=>1,'giatri'=>3));
        $data['binh_luan_4'] =   $this->f_productmodel->Count('comments_binhluan',array('id_sanpham'=>$pid,'review'=>1,'giatri'=>4));
        $data['binh_luan_5'] =   $this->f_productmodel->Count('comments_binhluan',array('id_sanpham'=>$pid,'review'=>1,'giatri'=>5));
        //$data['danhgia'] = $data['binh_luan_1'] + $data['binh_luan_2'] + $data['binh_luan_3'] + $data['binh_luan_4'] + $data['binh_luan_5']

        $tong = 0;
        $soluong = 0;
        $data['binhluan_all']= $this->f_productmodel->Count('comments_binhluan',array('id_sanpham'=>$pid,'review'=>1));

        $data['comment'] = $this->f_productmodel->get_data('comments_binhluan', array(
            'id_sanpham' => $pid,
            'review' => 1
        ));

        $soluong = $data['binhluan_all'];
        foreach ($data['comment'] as $com){
            $tong += $com->giatri;
        }
        if ($soluong > 0){
            $data['phantram'] = $phantram = ceil($tong / $soluong);
        }
        else{
            $data['phantram'] = $phantram = 0;
        }


        //sản phẩm đã xem
        $_SESSION['daxemsp'][$data['pro_first']->id] = array(
            'id' => $data['pro_first']->id,
            'alias' => $data['pro_first']->alias,
            'name' => $data['pro_first']->name,
            'price_sale' => $data['pro_first']->price_sale,
            'price' => $data['pro_first']->price,
            'image' => base_url('upload/img/products/'.$data['pro_first']->pro_dir.'/'.@$data['pro_first']->image)
        );

        // ma key random
        $data['form_key'] = $key = rand();
        $this->session->set_userdata('keyform',$key);
        //==================Bắt đầu tính bình luận============


        $data['tinhsao'] = $this->f_productmodel->tinhsao($data['item']->id);

        //var_dump($data['binhluan_all']);die;
        $sBreadcrumbs = '';
        // kiem tra xem ton tai danh muc cha k
        if(isset($data['cate_parent']->name)){
            $sBreadcrumbs .= '<li><a href="'.$data['cate_parent']->alias.'">'.$data['cate_parent']->name.'</a> </li>';
        }
        if(isset($data['cate_current']->name)){
            $sBreadcrumbs .= '<li><a href="'.$data['cate_current']->alias.'">'.$data['cate_current']->name.'</a> </li>';
        }
        $sBreadcrumbs .= '<li><a >'.$data['pro_first']->name.'</a></li>';

        $data['sBreadcrumbs'] = $sBreadcrumbs;
        //echo'<pre>'; var_dump($data['sBreadcrumbs']);die;
        $seo=array('title'=>@$data['pro_first']->title_seo==''
            || @$data['pro_first']->title_seo== '0' ?$data['pro_first']->name:$data['pro_first']->title_seo,
            'description'=>@$data['pro_first']->description_seo,
            'keyword'=>@$data['pro_first']->keyword_seo,
            'image'=>@$data['pro_first']->product_image,
            'type'=>'products');

        $this->LoadHeader(null,$seo,false);
        $this->load->view('products/detail',$data);
        $this->LoadFooter();
    }

    public function all_products(){
        $data = array();
        $where = array('lang'=>$this->language);
        $config['base_url'] = base_url('san-pham');
        $config['page_query_string'] = TRUE;
        $config['enable_query_string'] = TRUE;
        $config['total_rows'] = $this->f_productmodel->Count('product',$where);
        $config['per_page'] = 20; // xác định số record ở mỗi trang
        $config['uri_segment'] = 4; // xác định segment chứa page number
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);
        $sort = $this->input->get('sort');
        $order = array('product.id','desc');
        if($sort != null){
            if($sort == '0'){
                $order = array('product.id','desc');
            }
            if($sort == 'asc'){
                $order = array('product.id','asc');
            }
            if($sort=='desc'){
                $order = array('product.id','desc');
            }
        }
        $data['lists'] = $lists = $this->f_productmodel->get_data('product',$where,$order,false,$config['per_page'],$this->input->get('per_page'));

        $data['cate_curent'] = $this->f_productmodel->getFirstRowWhere('product');
        $seo=array('title'=>@$data['cate_curent']->title_seo==''?$data['cate_curent']->name:$data['cate_curent']->title_seo,
                   'description'=>@$data['cate_curent']->description_seo,
                   'keyword'=>@$data['cate_curent']->keyword_seo,
                   'image'=>@$data['cate_curent']->image,
                   'type'=>'products');

        $this->LoadHeader(null,$seo,true);
        $this->load->view('products/all_pro',$data);
        $this->LoadFooter();
    }

    public function laod_view(){
        $data = array();
        $where = array();
        $order = array();
        $value = $_POST['value'];

        //var_dump($value);

        if ($value == 'hot'){

            $where = array(
                'filter_type' => 'lang',
                'filter_value' => $this->language
            );
            $order = array(
                'order_type' => 'time',
                'order_value' => 'desc',
            );
        }
        elseif ($value == 'hot_time'){
            $where = array(
                'filter_type' => 'hot',
                'filter_value' => 1
            );

            $order = array(
                'order_type' => 'time',
                'order_value' => 'desc',
            );
        }
        elseif ($value == 'view'){
            $where = array(
                'filter_type' => 'lang',
                'filter_value' => $this->language
            );
            $order = array(
                'order_type' => 'view',
                'order_value' => 'desc',
            );
        }
        elseif ($value == 'order'){
            $where = array(
                'filter_type' => 'lang',
                'filter_value' => $this->language
            );
            $order = array(
                'order_value' => 'desc',
            );
        }
        elseif ($value == 'coupun'){
            $where = array(
                'filter_type' => 'lang',
                'filter_value' => $this->language
            );
            $order = array(
                'order_type' => 'coupun',
                'order_value' => 'desc',
            );
        }


        $data['lists'] = $this->f_productmodel->getItemByView($where, $order, 0,15);
        $this->load->view('products/view_view',$data);
        //echo '<pre>';
        //var_dump($data['lists']);
    }

}