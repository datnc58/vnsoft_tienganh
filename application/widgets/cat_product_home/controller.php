<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Cat_product_home_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        $this->load->model('f_productmodel');
        $data = array();

        $data['cate_all']=$this->f_homemodel->get_data_cate(array(
            'parent_id'=>0,
            'home' => 1
        ),1,0);


        foreach ($data['cate_all'] as $key => $cate){   
            $data['cate_all'][$key]->cate = $this->f_homemodel->get_data_cate(array(
                'parent_id' => $cate->id,
                'home' => 1
            ), 6, 0);

        }
//        foreach ($data['cate_all'] as $key => $cate) {
//            $data['cate_all'][$key]->product = $this->f_homemodel->get_products(
//                array(
//                    'product.home' => 1,
//                    'id_category' => $cate->id,
//                ),8,0);
//        }

        $this->load->view('view',$data);
    }

}