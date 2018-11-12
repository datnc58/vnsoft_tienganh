<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Video extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        $this->load->model('m_video');
        $this->load->helper('url');
        $this->load->library('pagination');
    }
    protected $pagination_config= array(
        'full_tag_open'=>"<ul class='pagination pagination-sm'>",
        'full_tag_close'=>"</ul>",
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
    public function category($alias)
    {
        $this->Check_alias($alias);
        $data = array();
        $data['cate_current'] = $current = $this->m_video->getFirstRowWhere('video_category',array('alias'=>$alias));
        //if(empty($data['cate_current'])){ redirect(base_url('404_override')); }
        $config['base_url'] = base_url('video/'.$alias.'.html');
        $config['page_query_string'] = TRUE;
        $config['enable_query_string'] = TRUE;
        $config['total_rows'] = $this->m_video->count_VideobyCate($current->id);
        $config['per_page'] = 16; // xác định số record ở mỗi trang
        $config['uri_segment'] = 4; // xác định segment chứa page number
        $config=array_merge($config,$this->pagination_config);
        $this->pagination->initialize($config);
        $data['list'] = $this->m_video->getVideoByCategory($current->id,$config['per_page'], $this->input->get('per_page'));
        $data['cate'] = $this->system_model->get_data('video_category',array(
            'lang' => $this->language
        ),array());
        $data['home_right']=$this->load->widget('home_right');
        $seo=array('title'=>@$data['cate_current']->title_seo==''?$data['cate_current']->name:$data['cate_current']->title_seo,
            'description'=>@$data['cate_current']->description_seo,
            'keyword'=>@$data['cate_current']->keyword_seo,
            'image'=>@$data['cate_current']->image,
            'type'=>'article');
        $this->LoadHeader(null,$seo,true);
        $this->load->view('video/category',@$data);
        $this->LoadFooter();
    }
    public function detail($alias)
    {
        //$this->Check_alias($alias);
        $data['video'] = $new = $this->m_video->get_data('video',array(
            'alias'=>$alias,
        ),array(),true);
        $data['cate_current'] = $current = $this->m_video->get_data('video_category',array(
                'id'=>$data['video']->category_id),
            array(),true);
        $data['cate']=$this->m_video->get_data('video_category',array(
            'lang' => $this->language
        ));
        if(!$this->session->userdata('session_'.$new->id)){
            $this->session->set_userdata('session_'.$new->id,1);
            $view = 1;
        }
        else{
            $view = 0;
        }
        $view = $new->view + $view;
        $this->m_video->Update_where('video',array('id' => $new->id),array('view' => $view));
        $data['home_right']=$this->load->widget('home_right');
        $data['video_same'] = $this->m_video->getSimilar($data['cate_current']->id,$data['video']->id,10,0);
        $view = 'video/detail';
        //$data['home_left'] = $this->load->widget('home_left');
        $data['danhmuc'] = $this->load->widget('danhmuc');
        $seo=array('title'=>@$data['video']->title_seo==''?$data['video']->name:$data['video']->title_seo,
            'description'=>@$data['video']->description_seo,
            'keyword'=>@$data['video']->keyword_seo,
            'image'=>@$data['video']->image,
            'type'=>'article');
        $this->LoadHeader(null,$seo,true);
        $this->load->view("video/detail",$data);
        $this->LoadFooter();
    }
}