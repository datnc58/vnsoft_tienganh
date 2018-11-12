<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Search extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('m_search');
        $this->load->model('f_homemodel');
        $this->load->library('pagination');
    }

    protected $pagination_config= array(
        'full_tag_open'=>"<ul class='pagination'>",
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

    public function searchPro(){


        $data = array();

        $config['full_tag_open'] = "<ul class='pagination pagin_cate'>";
        $config['full_tag_close'] ="</ul>";
        $config['num_tag_open'] = '<li>';
        $config['num_tag_close'] = '</li>';
        $config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
        $config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
        $config['next_tag_open'] = "<li>";
        $config['next_tagl_close'] = "</li>";
        $config['prev_tag_open'] = "<li>";
        $config['prev_tagl_close'] = "</li>";
        $config['first_tag_open'] = "<li>";
        $config['first_tagl_close'] = "</li>";
        $config['last_tag_open'] = "<li>";
        $config['last_tagl_close'] = "</li>";
        $key=$this->input->get('key');
        $id = $this->input->get('id_cate_search');

        // thêm từ khóa tìm kiếm vào kho lưu trữ
        $data['tukhoa'] = $this->f_homemodel->getFirstRowWhere('search_data', array(
            'name_search' => $key
        ));
        if (isset($data['tukhoa']->id)){
            $arr = array(
                'qty' => $data['tukhoa']->qty + 1,
                'time' => time()
            );
            $this->f_homemodel->Update_where('search_data',array(
                    'id'=>$data['tukhoa']->id),
                $arr
            );
        }else{
            $arr = array(
                'qty' => 1,
                'name_search' => $key,
                'time' => time()
            );
            $id = $this->f_homemodel->Add('search_data', $arr);
        }
        //end thêm từ khóa
        $data['id_cat'] = $id;
        $where=array();

        if($this->input->get()){
            $where = array(
                'id' => $this->input->get('id_cate_search'),
                'key' => $this->input->get('key'),
            );
        }
        else{
            redirect(base_url());
        }

        $config['page_query_string'] = TRUE;
        $config['enable_query_strings'] = TRUE;
        //$config['base_url'] = base_url('search?key='.$this->input->get('key'));
        $config['base_url'] = base_url('tim-kiem?key=' . $this->input->get('key'). $this->input->get('id'));
        $config['total_rows'] = $this->f_homemodel->countPoduct_search($where); // xác định tổng số record
        $config['per_page'] =20;
        $config['uri_segment'] =2;
        $this->pagination->initialize($config);
        $data['lists'] = $this->f_homemodel->getPoduct_search($where,$config['per_page'],$this->input->get('per_page'));
        $data['toal_item'] = $config['total_rows'];
        $data['home_left']=$this->load->widget('home_left');
        $sBreadcrumbs = '';
        $sBreadcrumbs .= '<li><a>'.lang('kqsearch').' ( có '.$data['toal_item'].' '.lang('name_product').' )</a></li>';
        $data['sBreadcrumbs'] =$sBreadcrumbs;

        $title= lang('kqsearch');
        $seo = array(
            'title' => $title
        );

        $this->LoadHeader(null,$seo,true);
        $this->load->view('searchs/pro_search',$data);
        $this->LoadFooter();
    }
    public function filter(){
        $data = array();
        $catid = $this->input->post('id');
        $thuonghieu = $this->input->post('thuong_hieu');
        $khoang_gia = $this->input->post('khoang_gia');
        $xuatxu = $this->input->post('xuatxu');
        $cat = $this->input->post('cat');

        $where_khoanggia = '';
        $where_thuonghieu = '';
        $where_xuatxu = '';
        $whereAll = '';
        $whereAll .='product.active = 1';
        if(!empty($catid)){
            if($cat != ''){
                $whereAll .="and product_category.id = ".$cat." and product_to_category.id_category = ".$catid." ";
            } else {
                $whereAll .=" and product_to_category.id_category = ".$catid." ";
            }
        }
        if($khoang_gia !='')
        {
            if($cat != ''){
                $arr_khoanggia = explode(",",$khoang_gia);
                foreach($arr_khoanggia as $price){
                    $arrp = explode("-",$price);
                    //echo "<pre>";var_dump($arrp);die();
                    $where_khoanggia .="product_category.id = ".$cat." and product.price_sale >= ".$arrp[0]." and product.price_sale <= ".$arrp[1]." or ";
                }
                $where_khoanggia = rtrim($where_khoanggia,'or ');
                $whereAll .= ' and ' .$where_khoanggia;
            } else {
                $arr_khoanggia = explode(",",$khoang_gia);
                foreach($arr_khoanggia as $price){
                    $arrp = explode("-",$price);
                    //echo "<pre>";var_dump($arrp);die();
                    $where_khoanggia .="product.price_sale >= ".$arrp[0]." and product.price_sale <= ".$arrp[1]." or ";
                }
                $where_khoanggia = rtrim($where_khoanggia,'or ');
                $whereAll .= ' and ' .$where_khoanggia;
            }

        }
        if($thuonghieu !='')
        {
            if($cat != ''){
                $arr_thuonghieu = explode(",",$thuonghieu);
                foreach($arr_thuonghieu as $brand){
                    $where_thuonghieu .="product_category.id = ".$cat. " and product_brand.id = '".$brand."' or ";
                }
                $where_thuonghieu = rtrim($where_thuonghieu,'or ');
                $whereAll .= ' and ' .$where_thuonghieu;
            } else {
                $arr_thuonghieu = explode(",",$thuonghieu);
                foreach($arr_thuonghieu as $brand){
                    $where_thuonghieu .=" product_brand.id = '".$brand."' or ";
                }
                $where_thuonghieu = rtrim($where_thuonghieu,'or ');
                $whereAll .= ' and ' .$where_thuonghieu;
            }
        }
        if($xuatxu !='')
        {
            if($cat != ''){
                $arr_xuatxu = explode(",",$xuatxu);
                foreach($arr_xuatxu as $lc){
                    $where_xuatxu .="product_category.id = ". $cat ." and locale.id = '".$lc."' or ";
                }
                $where_xuatxu = rtrim($where_xuatxu,'or ');
                $whereAll .= ' and ' .$where_xuatxu;
            } else {
                $arr_xuatxu = explode(",",$xuatxu);
                foreach($arr_xuatxu as $lc){
                    $where_xuatxu .=" locale.id = '".$lc."' or ";
                }
                $where_xuatxu = rtrim($where_xuatxu,'or ');
                $whereAll .= ' and ' .$where_xuatxu;
            }
        }
        $total_where = $whereAll;
        $sapxep = "order by product.id desc";
        $page =  1;
        if($this->input->post('page')){
            $page = $this->input->post('page');
        }
        $number_per_page = 16;
        $offset = ($page - 1) * $number_per_page;
        $this->load->library('pagination_ajax');
        $data['lists'] = $this->m_search->getProByFilters1($total_where,$sapxep,$number_per_page,$offset);
        $data['total_rows'] = $this->m_search->countProByFilters($total_where);
        $data['phantrang'] = $this->pagination_ajax->create($data['total_rows'], $number_per_page, $page);
        //echo "<pre>";var_dump($data['lists']);die();
        $this->load->view('searchs/view_filter_cat',$data);
    }
    public function autoComplete()
    {
        $data = array();
        $name = $this->input->post('name');
        $data['lists'] = $this->m_search->getItemAutoComplete($name,15,0);
        $this->load->view('searchs/view_autocomplete',$data);
    }
    public function filter_search(){
        $data = array();
        $catid = $this->input->post('id');
        $thuonghieu = $this->input->post('thuong_hieu');
        $khoang_gia = $this->input->post('khoang_gia');
        $xuatxu = $this->input->post('xuatxu');
        $where_khoanggia = '';
        $where_thuonghieu = '';
        $where_xuatxu = '';
        $whereAll = '';
        $whereAll .='product.active = 1';
        if(!empty($catid)){
            $whereAll .=" and product_to_category.id_category = ".$catid." ";
        }
        if($khoang_gia !='')
        {
            $arr_khoanggia = explode(",",$khoang_gia);
            foreach($arr_khoanggia as $price){
                $arrp = explode("-",$price);
                //echo "<pre>";var_dump($arrp);die();
                $where_khoanggia .="product.price_sale >= ".$arrp[0]." and product.price_sale <= ".$arrp[1]." or ";
            }
            $where_khoanggia = rtrim($where_khoanggia,'or ');
            $whereAll .= ' and ' .$where_khoanggia;
        }
        if($thuonghieu !='')
        {
            $arr_thuonghieu = explode(",",$thuonghieu);
            foreach($arr_thuonghieu as $brand){
                $where_thuonghieu .=" product_brand.id = '".$brand."' or ";
            }
            $where_thuonghieu = rtrim($where_thuonghieu,'or ');
            $whereAll .= ' and ' .$where_thuonghieu;
        }
        if($xuatxu !='')
        {
            $arr_xuatxu = explode(",",$xuatxu);
            foreach($arr_xuatxu as $lc){
                $where_xuatxu .=" locale.id = '".$lc."' or ";
            }
            $where_xuatxu = rtrim($where_xuatxu,'or ');
            $whereAll .= ' and ' .$where_xuatxu;
        }
        $total_where = $whereAll;
        $sapxep = "order by product.id desc";
        $page =  1;
        if($this->input->post('page')){
            $page = $this->input->post('page');
        }
        $number_per_page = 16;
        $offset = ($page - 1) * $number_per_page;
        $this->load->library('pagination_ajax');
        $data['lists'] = $this->m_search->getProByFilters1($total_where,$sapxep,$number_per_page,$offset);
        $data['total_rows'] = $this->m_search->countProByFilters($total_where);
        $data['phantrang'] = $this->pagination_ajax->create($data['total_rows'], $number_per_page, $page);
        //echo "<pre>";var_dump($data['lists']);die();
        $this->load->view('searchs/view_filter_search',$data);
    }
}