<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_cate_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
		//san pham mới	
        $data['pros'] = $this->f_homemodel->get_products2(array(
            'product.home' => 1,
            'product.lang' => $this->language
        ),15,0);
		//var_dump($data['pros']);die;
	    $this->load->view('view',$data);
    }
}