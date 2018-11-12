<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Blkmenu_top_widget extends MY_Widget
{
    // Nhận 2 biến truyền vào
    function index(){
        
		$this->load->model('f_homemodel');
		//menu top
		$data['menu_root'] = $this->f_homemodel->get_data('menu',
            array(
                'position'=>'main',
                'parent_id'=>0
            ), array('sort'=>''));
//		xin chao xxx


        foreach ($data['menu_root'] as $key => $cat) {
            $data['menu_root'][$key]->menu_sub =  $this->system_model->get_data('menu',array( 'position'=>'main',
                    'parent_id ='=>$cat->id,
                    'lang' => $this->language),
                array('sort'=>''));
        }

			 $data['menu_sub'] = $this->f_homemodel->get_data('menu',array( 'position'=>'main','parent_id !='=>0,'lang' => $this->language),
                array('sort'=>'')
            );
				 $data['menu_sub_parent'] = $this->f_homemodel->get_data('menu',array( 
				 'position'=>'main',
				 'parent_id !='=>0,
				 'lang' => $this->language),
					array('sort'=>'')
				);
//
        $data['cate_all']=$this->f_homemodel->get_data('product_category',array(
            'lang' => $this->language,
            'parent_id'=>0
        ));
				
		$this->load->view('view',$data);
    }
}