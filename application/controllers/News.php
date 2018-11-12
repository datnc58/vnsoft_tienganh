<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class News extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('f_newsmodel');
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
    //News by category
    public function new_bycategory($alias){
        $this->Check_alias($alias);
        $data = array();
        $data['cate_current'] = $current = $this->f_newsmodel->getFirstRowWhere('news_category',array('alias'=>$alias));
        //if(empty($data['cate_current'])){ redirect(base_url('404_override')); }
        $config['base_url'] = base_url('danh-muc-tin/'.$alias.'.html');
        $config['page_query_string'] = TRUE;
        $config['enable_query_string'] = TRUE;
        $config['total_rows'] = $this->f_newsmodel->count_NewbyCate($current->id);
        $config['per_page'] = 16; // xác định số record ở mỗi trang
        $config['uri_segment'] = 4; // xác định segment chứa page number
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);
        $data['list'] = $this->f_newsmodel->getNewsByCategory($current->id,$config['per_page'], $this->input->get('per_page'));
         $data['cate'] = $this->system_model->get_data('news_category',array(
            'lang' => $this->language
        ),array());
        $data['home_right']=$this->load->widget('home_right');

        $seo=array('title'=>@$data['cate_current']->title_seo==''?$data['cate_current']->name:$data['cate_current']->title_seo,
            'description'=>@$data['cate_current']->description_seo,
            'keyword'=>@$data['cate_current']->keyword_seo,
            'image'=>@$data['cate_current']->image,
            'type'=>'article');
        $this->LoadHeader(null,$seo,true);
        $this->load->view('news/news_category',@$data);
        $this->LoadFooter();
    }
    public function detail($alias){
        $data['news']=$this->f_newsmodel->get_data('news',array(
            'alias'=>$alias,
        ),array(),true);
        // Tin danh muc cha 1 cấp
        $data['cate_current'] = $current = $this->f_newsmodel->get_data('news_category',array(
                'id'=>$data['news']->category_id),
            array(),true);
        // tin danh muc cha 2 cấp
        $data['cate_parent'] = $current = $this->f_newsmodel->get_data('news_category',array(
                'id'=>$data['cate_current']->parent_id),
            array(),true);

        //echo '<pre>';
        //var_dump($data['cate_parent']);die;
        $data['new_same'] = $this->f_newsmodel->getSimilar($data['cate_current']->id,$data['news']->id,10,0);


        $count = 0;
        if(!isset($_SESSION['cart'])){
            $_SESSION['cart']=array();
        }else{
            foreach ($_SESSION['cart'] as $v) {
                $count += $v['qty'];
            }
        }
        $data['count']= $this->cart->total_items();
        $data['blksearch'] = $this->load->widget('blksearch');
        $data['home_left']=$this->load->widget('home_left');


        $sBreadcrumbs = '';
        // kiem tra xem ton tai danh muc cha k
        if(isset($data['cate_parent']->name)){
            $sBreadcrumbs .= '<li><a href="'.$data['cate_parent']->alias.'">'.$data['cate_parent']->name.'</a></li>';
        }
        if(isset($data['cate_current']->name)){
            $sBreadcrumbs .= '<li><a href="'.$data['cate_current']->alias.'">'.$data['cate_current']->name.'</a></li>';
        }
        //$sBreadcrumbs .= '<a href="" class="active">'.$data['cate_current']->name.'</a>';
        //$sBreadcrumbs .= '<li>'.$data['news']->title.'</li>';
        $data['sBreadcrumbs'] =$sBreadcrumbs;

        $seo=array('title'=>@$data['news']->title_seo==''?$data['news']->title:$data['news']->title_seo,
            'description'=>@$data['news']->description_seo,
            'keyword'=>@$data['news']->keyword_seo,
            'image'=>@$data['news']->product_image,
            'type'=>'article');

        $this->LoadHeader(null,$seo,false);
        $this->load->view('news/detail',$data);
        $this->LoadFooter();
    }
    //News by category
    //News by category
}