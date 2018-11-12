<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

    class Pages extends MY_Controller
    {

        function __construct()
        {
            parent::__construct();
            $this->load->helper('url');
            $this->load->model('f_pagesmodel');

        }
		public function page_content($alias){
            $this->Check_alias($alias);
            //echo 'âsa';
            $data['page']=$this->f_pagesmodel->get_data('staticpage',array(
                'alias'=>$alias,
                'lang' => $this->language
            ),array(),true);

            $data['page_home']=$this->f_pagesmodel->get_data('staticpage',array(
                'contact_page'=>1,
                'alias !='=>$alias,
                'lang' => $this->language
            ),array(),FALSE);

            //echo '<pre>';
            //var_dump( $data['page_home']);die;
            $sBreadcrumbs = '';
            $sBreadcrumbs .= '<li><a>'.$data['page']->name.'</a></li>';
            $data['sBreadcrumbs'] =$sBreadcrumbs;

            $count = 0;
            if(!isset($_SESSION['cart'])){
                $_SESSION['cart']=array();
            }else{
                foreach ($_SESSION['cart'] as $v) {
                    $count += $v['qty'];
                }
            }
            $data['count']= $this->cart->total_items();
            $data['blksearch'] = $this->load->widget('blksearch');
            $data['home_left']=$this->load->widget('home_left');
//
//
//
//			$data['home_left']=$this->load->widget('home_left');
//            $data['slide_gioi_thieu']=$this->load->widget('slide_gioi_thieu');

            $title=@$data['page']->name;
            $keyword=@$data['page']->keyword;
            $description=@$data['page']->description;
            $seo = array();
            $this->LoadHeader(null,$seo,false);
            $this->load->view('page/view_page',$data);
            $this->LoadFooter();
		}
    }