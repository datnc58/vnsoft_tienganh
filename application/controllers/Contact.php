<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Contact extends MY_Controller
{

    function __construct()
    {
        parent::__construct();
    }
    //index
    public function index(){
        $data = array();


        $this->load->library('captcha');
        $codeCaptcha = $this->captcha->code(5);
        $this->session->set_userdata('sessionCaptchaPostAds', $codeCaptcha);
        $imageCaptcha = 'assets/captcha/'.md5(microtime()).'posa.jpg';
        $this->session->set_userdata('sessionPathCaptchaPostAds', $imageCaptcha);
        $this->captcha->create($codeCaptcha, $imageCaptcha);
        if(file_exists($imageCaptcha))
        {
            $data['imageCaptchaPostAds'] = $imageCaptcha;
            $data['captcha_check'] = $codeCaptcha;
        }
        // $data['tinh'] =  $this->f_homemodel->get_data('province',null,null);
        $data['code_captcha'] = $codeCaptcha;
        $data['formkey'] = $formkey =  rand();

        if(isset($_POST['full_name'])){
            $arr=array(
                'full_name' => $this->input->post('full_name'),
                'phone' => $this->input->post('phone'),
                'email' => $this->input->post('email'),
                'address' => $this->input->post('address'),
                'city' => $this->input->post('city'),
                'country' => $this->input->post('country'),
                'comment' => $this->input->post('message'),
                'time' => time(),
            );
            $id=$this->contact_model->Add('contact',$arr);

            if($id){
                $this->session->set_userData('mss_success','Chúc mừng bạn đã gửi liên hệ thành công!');
            }
            redirect($_SERVER['HTTP_REFERER']);
        }


        $data['home_left']=$this->load->widget('home_left');

        $sBreadcrumbs = '';
        $sBreadcrumbs .= '<li><a href=""> '.lang('lienhe').'</a></li>';
        $data['sBreadcrumbs'] =$sBreadcrumbs;

        $site_name='Contact';
        $site_keyword='Contact';
        $site_description='';

        $seo = array(
            'title' => 'Contact'
        );
        $this->LoadHeader(null,$seo,false);
        $this->load->view('contact/contact',$data);
        $this->LoadFooter();
    }
     // dang ky  mail tran manh
    public  function add_email(){
        if(isset($_POST['email'])){
            $arr=array(
              //  'name' => $_POST['name'],
                'email' => $_POST['email'],
              //  'content' => $_POST['content'],
                'time' => time()
            );
            $item = $this->system_model->getFirstRowWhere('emails',array('email',$_POST['email']));
            if(!empty($item)){
                $this->system_model->Update_where('emails',array('if',$item->id),$arr);
            }
            else{
                $this->system_model->Add('emails',$arr);
            }
            $this->session->set_flashdata("mess", "Email của bạn đăng ký thành công!");
            redirect($_SERVER['HTTP_REFERER']);
        }
    }
   // dat cau hoi dap
    public function  sendQuestion(){
        if(isset($_POST['sendcontact'])){
            $arr=array('full_name' => $this->input->post('full_name'),
                'phone' => $this->input->post('phone'),
                'email' => $this->input->post('email'),
                'address' => $this->input->post('address'),
                'comment' => $this->input->post('comment'),
                'cat_name' => $this->input->post('cat_name'),
                'time' => time(),
            );
            $id=$this->system_model->Add('contact',$arr);

            if($id){
                $this->session->set_userData('mess','Bạn đã gửi thông tin thành công!!!');
            }
            redirect($_SERVER['HTTP_REFERER']);
        }
    }
}