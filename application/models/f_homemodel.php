<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class F_homemodel extends MY_Model{
    function __construct() {
        parent::__construct();
        $this->load->helper('model');
    }

    public function countPoduct_search($where){
        $this->db->select('product.id');
        $this->db->join('product_category','product_category.id=product.category_id','left');
        $this->db->join('product_tag','product_tag.product_id=product.id','left');
        if($where['id'] != '') {
            $this->db->where('product_to_category.id_category',$where['id']);
        }
        if($where['key'] != '') {
            $this->db->like('product.name',$where['key']);
        }
        $this->db->group_by('product.id');
        $q=$this->db->get('product');
        return $q->num_rows();
    }

    public function get_news($where,$limit,$offset){

        $query = $this->db->select('news.id,
                                    news.title,
                                    news.description,
                                    news.focus,
                                    news.home,
                                    news.alias,
                                    news.category_id,
                                    news.image,
                                    news.video,
                                    news.time,
                                    news_category.id as cat_id,
                                    news_category.name,
                                    news_category.alias as cat_alias,
                                    news_category.parent_id,
                                    news_to_category.id_category,
                                    news_to_category.id_news')
            ->from('news')
            ->join('news_to_category', 'news.id = news_to_category.id_news','left')
            ->join('news_category', 'news_category.id = news_to_category.id_category','left')
            ->where($where)
            ->group_by('news.id')
            ->order_by('news.id')
            ->get('', $limit, $offset);

        return $query->result();
    }

    public function get_products($where,$limit,$offset){
        $this->db->select('product.id as pro_id,
                            product.caption_1,
                            product.price,
                            product.quaranty,
                            product.address,
                            product.price_sale,
                            product.price,
                            product.home,
                            product.name,
                            product.hot as pro_hot,
                            product.focus as pro_focus,
                            product.code,
                            product.category_id,
                            product.alias as pro_alias,
                            product.view,
                            product.multi_image,
                            product.pro_dir,
                            product.img_dir,
                            product.caption_3,
                            product.image as pro_img,
                            product.description,
                            product.detail,
                            product.detric,
                            product.time,
                            product.coupun,
                            product_to_category.id_category as id_category
                            ');
        $this->db->join('product_category', 'product_category.id=product.category_id','left');
        $this->db->join('product_to_category', 'product.id=product_to_category.id_product','left');
        $this->db->join('province', 'province.id=product.location','left');
        $this->db->where($where);
        $this->db->limit($limit,$offset);
        $this->db->order_by('product.sort','desc');
        $this->db->group_by('product.id');
        $q=$this->db->get('product');
        return $q->result();
    }


    public function get_data_cate($where, $limit , $offset){
        $this->db->select('*');
        $this->db->where($where);
        $this->db->limit($limit,$offset);
        $this->db->order_by('product_category.sort','desc');
        $q=$this->db->get('product_category');
        return $q->result();
    }


    public function getPoduct_search($where,$limit,$offset){
        $this->db->select('product.id,product.alias,product.status,product.caption_1,product.caption_3,
        product.price,product.price_sale,product.code,product.view,product.multi_image,product.pro_dir,img_dir,
        product.name,product.category_id as cat_id,product.downloaded,product.description,
        product.home,product.image,product.hot,product.focus,product_category.id as cate_id,
        product_category.name as cate_name, product_category.alias as cate_alias,product.number,product_brand.name as brand_name,
        ');
        $this->db->join('product_to_category', 'product.id=product_to_category.id_product','left');
        $this->db->join('product_category', 'product_category.id=product_to_category.id_category','left');

        $this->db->join('province', 'province.id=product.location','left');
        $this->db->join('product_brand', 'product_brand.id = product.style','left');
        if($where['id'] != '') {
            $this->db->where('product_to_category.id_category',$where['id']);
            //$this->db->or_where('product_category.parent_id',$where['id']);
        }
        if($where['key'] != '') {
            $this->db->like('product.name',$where['key']);
        }
        $this->db->group_by('product.id');
        $this->db->order_by('product.id','desc');
        $this->db->limit($limit,$offset);
        $q=$this->db->get('product');
        return $q->result();
    }
    // hien thi san pham cua danh muc
// hien thi danh sách tin tuc
//    public function get_news($where,$order=array(),$limit,$offset){
//
//        $this->db->select('news.id,news.title, news.description,news.alias, news.category_id, news.image, news.time');
//            $this->db->from('news');
//            $this->db->join('news_to_category', 'news.id = news_to_category.id_news');
//            $this->db->where($where);
//            if(!empty($order)&&is_array($order)){
//                foreach ($order as $field => $val){
//                   $this->db->order_by($field,$val);
//                }
//            }else{
//                $this->db->order_by('news.id','desc');
//            }
//            $this->db->group_by('news.id');
//            $this->db->order_by('news.id');
//            $this->db->get('', $limit, $offset);
//            $q=$this->db->get('news');
//        return $q->result();
//    }

    public function get_products2($where,$limit,$offset){
        $this->db->select('product.id as pro_id,
                            product.price,
                            product.address,
                            product.price_sale,
                            product.price,
                            product.name,
                            product.home,
                            product.category_id,
                            product.alias as pro_alias,
                            product.view,
                            product.multi_image,
                            product.pro_dir,
                            product.img_dir,
                            product.image as pro_img,
                            product.description,
                            product.time,
                            ');
        $this->db->join('product_category', 'product_category.id=product.category_id','left');
        $this->db->join('product_to_category', 'product.id=product_to_category.id_product','left');
        $this->db->where($where);
        $this->db->limit($limit,$offset);
        $this->db->order_by('product.time','desc');
        $this->db->group_by('product.id');
        $q=$this->db->get('product');
        return $q->result();
    }

}