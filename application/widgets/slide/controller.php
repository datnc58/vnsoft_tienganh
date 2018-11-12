<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Slide_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
		$data = array();

        $data['slide_home'] = $this->f_homemodel->get_data('images',array(
            'type' => 'banner',
            'lang' => $this->language,
        ),array('sort' => 'desc'),null);
        $data['slide_mobi'] = $this->f_homemodel->get_data('images',array(
            'type' => 'banner',
            'lang' => $this->language,
        ),array('sort' => 'desc'),null);
        $this->load->view('view',$data);
    }
}