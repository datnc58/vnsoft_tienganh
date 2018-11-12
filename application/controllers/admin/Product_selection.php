<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Product_selection extends MY_Controller
{
    function __construct()
    {
        parent::__construct();
        if(!$this->check->is_logined($this->session->userdata('sessionUserAdmin'), $this->session->userdata('sessionGroupAdmin')))
        {
            redirect(base_url().'vnsadmin', 'location');
            die();
        }
        $this->load->model('productmodel');
    }
    public function listSelection()
    {
		$data['list'] = $this->productmodel->get_data('product_selection',array(
        ),array('type' => 'desc'));
        $data['headerTitle'] = 'Quản lý thuộc tính';
        $this->LoadHeaderAdmin($data);
        $this->load->view('admin/product_selection/list', $data);
        $this->load->view('admin/footer');
    }

    public function show_html(){
        $type = $_POST['type'];
        if($type == "price"){
            echo '
                <div class="form-group">
                    <label  class="col-sm-12">Giá bắt đầu</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="price_to"
                            value="" placeholder="Giá bắt đầu"/>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-12">Giá kết thúc</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="price_from"
                            value="" placeholder="Giá kết thúc"/>
                    </div>
                </div>
            ';
        }else if($type == "brand"){
            echo '
                <div class="form-group">
                    <label  class="col-sm-12">Thương hiệu</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="title"
                            value="" placeholder="Tên thương hiệu"/>
                    </div>
                </div>
            ';
        }else if($type == "size"){
            echo '
                <div class="form-group">
                    <label  class="col-sm-12">Tên kích thước</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="title"
                            value="" placeholder="Tên kích thước"/>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-12">Mã kích thước</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="size"
                            value="" placeholder="Mã kích thước"/>
                    </div>
                </div>
            ';
        }else if($type == "color"){
            echo '
                <div class="form-group">
                    <label  class="col-sm-12">Tên màu sắc</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="title"
                            value="" placeholder="Tên kích thước"/>
                    </div>
                </div>
                <div class="form-group">
                    <label  class="col-sm-12">Mã màu</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="color"
                            value="" placeholder="Mã màu"/>
                    </div>
                </div>
            ';
        }else if($type == "location"){
            echo '
                <div class="form-group">
                    <label  class="col-sm-12">Tên vị trí</label>
                    <div class="col-sm-12">
                        <input type="text"  class="form-control input-sm validate[required]" name="title"
                            value="" placeholder="Tên vị trí"/>
                    </div>
                </div>
            ';
        }
    }

    public function Add($id_edit=null)
    {

        $data['btn_name']='Thêm';
		if($id_edit!=null){
            $data['edit']=$this->productmodel->get_data('product_selection',array('id'=>$id_edit),array(),true);
			$data['btn_name']='Cập nhật';
        }

        if (isset($_POST['add_news'])) {

            $arr = array(
                'title' => $this->input->post('title'),
                'type' => $this->input->post('type'),
                'price_to' => $this->input->post('price_to'),
                'price_from' => $this->input->post('price_from'),
                'size' => $this->input->post('size'),
                'color' => $this->input->post('color'),
            );
			
			if (!empty($_POST['edit'])){ 
				$id = $this->productmodel->Update_where('product_selection', array('id'=>$id_edit), $arr);
				$this->session->set_flashdata("mess", "Cập nhật thành công!");
            } else {
                $id = $this->productmodel->Add('product_selection', $arr);
				$this->session->set_flashdata("mess", "Thêm thành công!");
            }

            redirect(base_url('vnsadmin/product_selection/listSelection'));
        }
		//var_dump($data['edit']);die;
        $data['headerTitle'] = "'".$data['btn_name']."lựa chọn thuộc tính sản phẩm";
		$this->LoadHeaderAdmin($data);
        $this->load->view('admin/product_selection/add', $data);
        $this->load->view('admin/footer');
    }
    public function edit($id=null)
    {
        $this->addbrand($id);
    }
    
	// xoa list danh muc
	public function deletes_category(){
        $ids = $this->input->post('checkone');
        foreach($ids as $id)
        {
            $this->delete_brand_once($id);
        }
		$this->session->set_flashdata("mess", "Xóa thành công!");
        redirect($_SERVER['HTTP_REFERER']);
    }
    public function delete_brand_once($id)
    {
		// xoa ban ghi trong product_selection
        $item = $this->productmodel->getFirstRowWhere('product_selection',array(
            'id' => $id
        ));
		// xoa anh trong thu muc
		if(file_exists($item->image)){
            @unlink($item->image);
        }	
		$this->productmodel->Delete_where('product_selection',array('id' => $id));
		$this->productmodel->Delete_Where('product_to_brand', array('brand_id'=>$id));
		$item_alias =$this->productmodel->getFirstRowWhere('alias',array('brand'=>$id));
		if(!empty($item_alias)){
			$this->productmodel->Delete_where('alias',array('brand' => $id));
		}
    }
    //Delete  danh muc product_selection
    public function deletecategory($id)
    {
		$this->delete_brand_once($id);		
        $this->session->set_flashdata("mess", "Xóa thành công!");
		redirect($_SERVER['HTTP_REFERER']);
    }
}