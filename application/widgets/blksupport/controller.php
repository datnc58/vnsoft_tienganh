<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blksupport_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
		
		$data['supports_1'] = $this->f_homemodel->get_data('support_online',array(
                'active' => '1',
                //'type' => 1
            ),array('id','desc'),100,0);
			
		//var_dump($data['supports']);die;
		$this->load->view('view',$data);
    }
}