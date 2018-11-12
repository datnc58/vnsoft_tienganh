<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home_right_widget extends MY_Widget
{
    // sibar bên phải
    function index(){
        
		$this->load->model('f_homemodel');
		
		$data = array();


        $data['blksupport']=$this->load->widget('blksupport');

        $data['cate_all']=$this->f_homemodel->get_data('media_category',array(
            'lang' => $this->language,
            'home' => 1
            //'home' => 1
        ));
        foreach ($data['cate_all'] as $key => $cat) {
            $data['cate_all'][$key]->news = $this->f_homemodel->get_data('media',
                array(
                'media.lang' => $this->language,
                'media.home' => 1
                //'home' => 1
                ),array('sort'=>'sort'),0,6
            );
        }

        $data['page'] = $this->f_homemodel->getFirstRowWhere('images',
            array(
                'type' => 'home',
                'lang' => $this->language,
            )
        );
        //echo '<pre>';
        //var_dump($data['cate_all']);die;
				
					
		$this->load->view('common/right', $data);
    }
}