<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cat_news_home_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
		// danh muc tư vấn phong thủy
        $data['cate_all']=$this->f_homemodel->get_data('news_category',array(
            'lang' => $this->language,
            'home' => 1,
            'parent_id' => 0
        ));
        foreach ($data['cate_all'] as $key => $cate){
            $data['cate_all'][$key]->cate = $this->f_homemodel->get_data('news_category',array(
                'lang' => $this->language,
                'parent_id' => $cate->id,
                'home' => 1
            ));
            foreach ($data['cate_all'][$key]->cate as $keys => $cat) {
                $data['cate_all'][$key]->cate[$keys]->news = $this->f_homemodel->get_news(
                    array(
                        'news_category.id' => $cat->id,
                        'news.lang' => $this->language,
                        'news.home' => 1
                    ),10,0);
            }
        }
	    $this->load->view('view',$data);
    }
}