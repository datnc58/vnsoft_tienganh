<?php
#****************************************#
# * @Author: Tran Manh                   #
# * @Email: dangtranmanh051187@gmail.com #
# * @Website: http://qts.com             #
# * @Copyright: 2017 - 2018              #
#****************************************#
?>
<section class="content-header">
    <h1>
        <?=$btn_name;?> thuộc tính sản phẩm
        <small></small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="<?= base_url('vnsadmin')?>"><i class="fa fa-dashboard"></i> Trang chủ</a></li>
        <li class="active"><a href="<?= base_url('vnsadmin/attribute/listBrand')?>">Danh mục lựa chọn thuộc tính</a></li>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a onclick="history.back()" style="cursor: pointer" title="Quay lại trang trước" ><i class="fa fa-reply"></i></a>
    </ol>
</section>
<section class="content">
    <!-- Page Heading -->
    <div class="row">
        <form class="validate form-horizontal" role="form" id="form-bk" method="POST" action="<?=base_url('vnsadmin/product_selection/Add')?>"
            enctype="multipart/form-data">
            <div class="col-md-9" style="font-size: 12px">
                <div class="panel panel-default">
					<div class="alert alert-dismissible" style="display:none;"></div>
                    <div class="panel-heading">
                        <h3 class="panel-title pull-left">Tổng quan</h3>
                        <div class="pull-right">
							<button type="submit" class="btn btn-success btn-xs" name="add_news"><i
                                class="fa fa-check"></i> <?= @$btn_name; ?>
                            </button>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-body">
                        <div class="form-group">
                            <label  class="col-sm-12">Loại thuộc tính</label>
                            <div class="col-sm-12">
                                <select name="type" id="type" onchange="show_html()" class="form-control input-sm validate[required]" >
                                    <option value="">Chọn thuộc tính</option>
                                    <option value="brand">Thương hiệu</option>
                                    <option value="price">Khoảng giá</option>
                                    <option value="size">Kích thước</option>
                                    <option value="color">Màu sắc</option>
                                    <option value="location">Vị trí</option>
                                </select>
                            </div>
                        </div>
                        <div class="show_value">

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3" style="font-size: 12px">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title pull-left">Tùy chọn</h3>
                        <div class="clearfix"></div>
                    </div>
                    <div class="panel-body">
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
<!-- /.container-fluid -->
<script type="text/javascript">
    function show_html(){
        var type = $('#type').val();
        $.ajax({
            type: "POST",
            url: base_url() + 'vnsadmin/product_selection/show_html',
            data: {type:type},
            success:function(result){
                $('.show_value').html(result);
            }
        });
    }
</script>
