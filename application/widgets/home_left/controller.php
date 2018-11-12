<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home_left_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
			$data = array();

        $data['cate_all']=$this->f_homemodel->get_data('product_category',array(
            'lang' => $this->language,
            'parent_id'=>0,
            //'home' => 1
        ));
        foreach ($data['cate_all'] as $key => $cat) {
            $data['cate_all'][$key]->news = $this->f_homemodel->get_data('product_category',
                array(
                    'parent_id' => $cat->id,
                    'lang' => $this->language,
                    //'home' => 1
                ),array('id','asc'),10,0);

        }
        $data['supports_1'] = $this->f_homemodel->get_data('support_online',array(
            'active' => '1',
            //'type' => 1
        ),array('id','desc'),100,0);

        $data['counter']=$this->load->widget('counter');
        $data['blknews_nb']=$this->load->widget('blknews_nb');

		$this->load->view('common/left', $data);
    }
}