<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller
{

    function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('f_homemodel');
    }
    //index
    public function lang($lang){
        if($lang!=null){
            $_SESSION['lang']=$lang;
            redirect(base_url());
        }
    }

    //ajax lấy gia tri quan huyen
    public  function district(){

        if(isset($_POST['id'])){
            $data['district'] = $this->f_homemodel->get_data('district',array(
                'provinceid' => $_POST['id'],
            ));
            $this->load->view('temp/list_district',$data);
        }
    }

    public function index(){ //uh code ci3 k chay dc kieu kia cho nen phai viet lại @@ vẫn chạy đc mà â cac router khac nhu contact , vnsadmin co chay dau
        $this->clear_all_cache();
        $data = array();
        $data['product_cate'] = $this->system_model->get_data('product_category',array('parent_id' => 0,'lang' => $this->language),
            array('sort'=>''),1,5
        );

        $data['slide_top'] = $this->f_homemodel->get_data('images',array(
            'type' => 'left',
            'lang' => $this->language,
        ));

        $data['home'] = $this->f_homemodel->getFirstRowWhere('images',array(
            'type' => 'banner',
            'lang' => $this->language,
        ));

        $seo = array();
        $this->LoadHeader($view=null,$seo,true);
        $this->load->view('home/view_home',$data);
        $this->LoadFooter();
    }
    /**
 * Clears all cache from the cache directory
 */
public function clear_all_cache()
{
    $CI =& get_instance();
    $path = $CI->config->item('cache_path');

    $cache_path = ($path == '') ? APPPATH.'cache/' : $path;

    $handle = opendir($cache_path);
    while (($file = readdir($handle))!== FALSE)
    {
        //Leave the directory protection alone
        if ($file != '.htaccess' && $file != 'index.html')
        {
           @unlink($cache_path.'/'.$file);
        }
    }
    closedir($handle);
}

public function adminstore()
{
    $json = array('status'=>false);
    $json['msg'] = 'API Bạn Cần Nhập API Key Để Thực Hiện Lệnh Này';
    if($this->input->get('API')){
        $api = $this->input->get('API');
        $x = $this->_AdminFalse($api);
        if($x){
            $json['status'] = true;
        }else{
            $json['msg'] = 'API Key Sai ! Bạn Không Thể Thực Hiện Lệnh Này';
        }
    };
    echo json_encode($json);
}


}