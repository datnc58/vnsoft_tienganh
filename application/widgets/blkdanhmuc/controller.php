<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blkdanhmuc_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		
			//danh mục san pham cha
			$data = array();
		    $data['cate_all']=$this->f_homemodel->get_data_cate(array(
                'lang' => $this->language,
                'parent_id'=>0,
                'home' => 1
			),100,0);

            $data['cate_sub'] = $this->f_homemodel->get_data('product_category',array(
                'lang' => $this->language,
                'parent_id !='=>0,
                //'home' => 1
            ),array('sort','desc'),100,0);
            foreach ($data['cate_all'] as $key => $cat) {
                $data['cate_all'][$key]->news = $this->f_homemodel->get_data('product_category',
                    array(
                        'parent_id' => $cat->id,
                        'lang' => $this->language,
                        'home' => 1
                    ),array('sort','desc'),100,0);

            }

					
			$this->load->view('view',$data);
    }
}