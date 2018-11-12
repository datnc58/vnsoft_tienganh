<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Select extends MY_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('f_homemodel');
    }

    public function select_header(){
        $data['header'] = $this->f_homemodel->get_data('uet_header');
        $this->load->view('select/header/listHeader',$data);
    }

    public function enter_header(){
        $id = $_POST['id'];
        $data['image'] = $this->f_homemodel->getFirstRowWhere("uet_header", array("id" => $id));
        $this->load->view('select/header/enterHeader',$data);
    }

    public function select_footer(){
        $this->load->view('select/select_footer');
    }


}