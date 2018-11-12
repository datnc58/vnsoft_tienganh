<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blkmenu_bottom_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
		//menu bottom
		
		 $data['menu_footer'] = $this->f_homemodel->get_data('menu',array('position'=>'bottom',
                'parent_id'=>0,
                'lang' => $this->language,
             ), array('sort'=>'')
        );

            $data['menus_bottom_sub'] = $this->f_homemodel->get_data('menu',array(
                    'position'=>'bottom',
                    'lang' => $this->language,
                    'parent_id !='=>0),
                array('sort'=>'')
            );

			
			$this->load->view('view',$data);
    }
}