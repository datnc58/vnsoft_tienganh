<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blknews_nb_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
		//tin tuc mới
        $data = array();
        $data['cate_all']=$this->f_homemodel->get_data('news_category',array(
            'lang' => $this->language,
            'focus' => 1
            //'home' => 1
        ));
        foreach ($data['cate_all'] as $key => $cat) {
            $data['cate_all'][$key]->news = $this->f_homemodel->get_news(
                array(
                    'news_category.id' => $cat->id,
                    'news.lang' => $this->language,
                     'news.home' => 1
                ),4,0);

        }
//        $data['noibat'] = $this->f_homemodel->get_news(
//            array(
//                'news.lang' => $this->language,
//                //'news.hot' => 1,
//                'news.home' => 1
//            ),3,0);
	    $this->load->view('view',$data);
    }
}