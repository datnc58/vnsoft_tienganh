<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blkmenu_left_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
		//menu left
        //$data['social'] = $this->load->widget('social');
        $data['menu_left'] = $this->f_homemodel->get_data('menu',array('position'=>'left','parent_id'=>0,'lang' => $this->language),
            array('sort'=>'')
        );
        $data['menu_sub'] = $this->f_homemodel->get_data('menu',array( 'position'=>'left','parent_id !='=>0,'lang' => $this->language),
            array('sort'=>'')
        );
        $this->load->view('view',$data);
    }
}