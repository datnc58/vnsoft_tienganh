<link rel="stylesheet" media="all" type="text/css" href="<?= base_url('') ?>assets/css/front_end/order/giohang.css" />
<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>




<section class="qts_mid_content">
<div class="container">
    <div class="row">
        <ul class="breadcrumbs-cate">
            <li>
                <a href="<?= base_url()?>">Trang chủ</a>
            </li>
            <li>
                <a href="">Thanh toán</a>
            </li>
        </ul>
        <div class="clearfix"></div>
    </div>
</div>
<div class="container">
    <div class="row_pc">
        <div class="clearfix-20"></div>

        <div class="list_prod_home list_prod_cate">
            <div class="row_13">

                <?php if(count($items)) : ?>
                    <section class="col-md-6 col-lg-6 cart_left">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h5><i class="fa fa-map-marker" aria-hidden="true"></i>&nbsp;<?=lang('infomation_order');?></h5>
                            </div>
                            <div class="panel-body">
                                <div class="infor_acount clearfix">
                                    <div class="clearfix"></div>
                                    <form action="<?=base_url('cart/sendOnpage')?>" method="post" id="send-user-info" class="validate form-horizontal" enctype="multipart/form-data" role="form">
                                        <input type="hidden" name="token" value="<?=$form_key;?>" />
                                        <div class="123">
                                            <div class="clearfix-5"></div>
                                            <div class="form-group">
                                                <label class="col-sm-3"><?=lang('name');?></label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="validate[required] form-control input-sm " name="fullname" value="<?=@$user->last_name?>" placeholder="<?=lang('name');?>">
                                                </div>
                                            </div>
                                            <div class="clearfix-5"></div>
                                            <div class="form-group">
                                                <label class="col-sm-3"><?=lang('phone');?></label>
                                                <div class="col-sm-4">
                                                    <input type="text" class="validate[required,custom[phone]] form-control input-sm " name="phone" value="<?=@$user->phone;?>" placeholder="<?=lang('phone');?>">
                                                </div>
                                                <div class="col-sm-4">
                                                    <input type="text" class="form-control input-sm " name="phone_other" value="" placeholder="<?=lang('phone2');?>">
                                                </div>
                                            </div>
                                            <div class="clearfix-5"></div>
                                            <div class="form-group">
                                                <label class="col-sm-3">Email</label>
                                                <div class="col-sm-9">
                                                    <input type="text" class="validate[required,custom[email]] form-control input-sm "  name="email" value="<?=@$user->email;?>" placeholder="Nhập địa chỉ Email">
                                                </div>
                                            </div>
                                            <div class="clearfix-5"></div>
                                            <div class="form-group">
                                                <label class="col-sm-3">Chọn tỉnh thành</label>
                                                <div class="col-sm-9">
                                                    <select name="tinhthanh" class=" form-control input-sm " onchange="select_tinhthanh()" id="tinhthanh">
                                                        <option value="">Chọn tỉnh thành</option>
                                                        <?php
                                                            if(count($tinh)){
                                                                foreach($tinh as $val){ ?>
                                                                    <option value="<?=$val->id; ?>"><?=$val->name;?></option>
                                                        <?php   }
                                                            }
                                                        ?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="clearfix-5"></div>
                                            <div class="form-group">
                                                <label class="col-sm-3"><?=lang('diachi');?></label>
                                                <div class="col-sm-9">
                                                    <textarea rows="2" placeholder="<?=lang('diachi');?>" class="validate[required] form-control" name="address" id="address"><?=@$user->address;?></textarea>
                                                </div>
                                            </div>

                                            <div class="clearfix-5"></div>
                                        </div>
                                        <script type="text/javascript">
                                            $(document).ready(function(){
                                                $('.validate ').validationEngine();
                                            });
                                        </script>
                                </div>
                            </div>
                            <div class="panel-heading hidden">
                                <h5><i class="fa fa-credit-card"></i>&nbsp;<?=lang('option_payment');?></h5>
                            </div>

                            <div class="panel-heading">
                                <h5><i class="fa fa-file"></i>&nbsp;<?=lang('ghichu');?></h5>
                            </div>
                            <div class="panel-body">
                                <div class="shipping-info-body">
                                    <div class="ship-item ship-note">
                                        <textarea name="note" rows="2" cols="20" id="ctl00_pageBody_txtOrderNode" class="form-input-note" placeholder="<?=lang('ghichu_giaohang');?>"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="row-item checkout-finish checkout-footer">
                                <input type="hidden" value="<?=$form_key?>" name="form_tocken">
                                <button class="checkout-btn checkout-submit" type="submit"><i class="fa fa-shopping-cart"></i><?=lang('guidi');?></button>
                                <div style="clear: both">
                                    <div style="display: none">
                                        <input type="submit" name="ctl00$pageBody$btnSendOrder" value="" id="ctl00_pageBody_btnSendOrder">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <aside id="cart-items" class="sticky col-md-6 col-lg-6 shopping-cart-aside cart_right">
                        <div class="panel panel-default fixgiohang" id="cart-content" >
                            <div class="panel-heading"><h5> <i class="fa fa-shopping-cart"></i>&nbsp;<?=lang('donhang');?> (<?=$this->cart->total_items();?> <?=lang('product');?>)</h5></div>
                            <div class="panel-body" id="panel-body" style="width: 568px;">
                                <div class="col checkout-cart-list">
                                    <div style="display: none!important">
                                        <input type="hidden" name="ctl00$pageBody$hdnQty" id="ctl00_pageBody_hdnQty">
                                        <input type="submit" name="ctl00$pageBody$btnSave" value="" id="ctl00_pageBody_btnSave">
                                    </div>
                                    <ul class="checkout-cart-title">
                                        <li class="col cart-product-name"><?=lang('product');?></li>
                                        <li class="col cart-product-count"><?=lang('sol_shopping');?></li>
                                        <li class="col cart-product-price "><?=lang('dongia');?> (đ)</li>
                                        <li class="col cart-product-money"><?=lang('thanhtien');?> (đ)</li>
                                    </ul>
                                    <ul class="group-cart-product-item clearfix">
                                        <?php foreach($items as $item) : ?>
                                            <li class="cart-product-item" data-record-id="<?=$item['rowid']?>">
                                                <ul>
                                                    <li class="cart-product-name">
                                    <span class="col cart-product-images">
                                        <img src="<?=base_url('upload/img/products/'.$item['pro_dir'].'/thumbnail_2_'.$item['image']);?>">
                                    </span>
                                    <span class="cart-product-info">
                                        <p class="cart-product-title">
                                            <a href="<?=site_url($item['alias'])?>"><?=@$item['name'];?></a></p>

                                    </span>
                                                    </li>
                                                    <li class="cart-product-count"><span class="add-number-cart">
                                                        <span class="ui-spinner ui-widget ui-widget-content ui-corner-all">
                                                            <input type="text" class="txtQty-cart ui-spinner-input" id="qty-<?=$item['rowid']?>" title="Thay đổi số lượng nếu bạn muốn" onkeyup="upQuantityP1($(this))" data-bind="<?=$item['rowid']?>" placeholder="Số lượng" name="qty" data-record="<?=$item['rowid']?>" value="<?=$item['qty']?>" aria-valuemin="0" aria-valuemax="1000" aria-valuenow="4" autocomplete="off" role="spinbutton">
                                                            <a class="ui-spinner-button ui-spinner-up ui-corner-tr" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-n" data-bind="<?=$item['rowid']?>" onclick="upQuantity($(this))">▲</span></a><a class="ui-spinner-button ui-spinner-down ui-corner-br" tabindex="-1"><span class="ui-icon ui-icon-triangle-1-s" data-bind="<?=$item['rowid']?>" onclick="downQuantiy($(this))">▼</span></a></span></span>
                                                    </li>
                                                    <li class="cart-product-price ">
                                                        <p class="cart-product-price-meta"><?=number_format($item['price']);?></p>
                                                        <?php if($item['price'] > 0 && $item['price_old'] > 0) :?>
                                                        <p class="cart-product-price-old"><?=number_format($item['price_old']);?></p>
                                                        <p class="cart-product-price-sale"><?=lang('sale');?>: <?=floor(100-($item['price']/$item['price_old'])*100)?>%</p></li>
                                                    <?php endif;?>
                                                    <li class="cart-product-money"><?=number_format($item['subtotal'])?> đ</li>
                                                    <li class="cart-product-delete">
                                                        <a href="javascript:void(0)" onclick="updateCart1('<?=$item['rowid']?>',0)" title="Xoá <?=@$item['name'];?> khỏi giỏ hàng?" class="lnk-cart-item-rem" data-record="<?=$item['rowid']?>"><i class="fa fa-trash-o"></i></a>
                                                    </li>
                                                </ul>

                                            </li>
                                        <?php endforeach;?>
                                    </ul>
                                </div>
                                <div class="col checkout-footer">
                                    <div class="row-item">
                                        <div class="checkout-footer-left">
                                            <span class="buy-other"><a href="<?=base_url()?>" target="_parent" class="link-other-choice"><?=lang('themspkhac');?></a></span>
                                        </div>
                                        <div class="checkout-footer-right">


                                            <div class="bill-row">
                                                <div class="text-right">Tạm tính:</div>
                                                <div class="col text-bill">
                                                    <?=number_format($this->cart->total());?>  đ
                                                    <input type="hidden" name="carttotal" id="ctl00_pageBody_hdnSubTotal" value="<?=number_format($this->cart->total());?>">
                                                </div>
                                            </div>

                                            <div class="bill-row">
                                                <div class="text-right">Phí vận chuyển:</div>
                                                <div class="col text-bill" id="shipping">
                                                </div>
                                                <input type="hidden" name="shipping2" id="shipping2" value="0">
                                                <input type="hidden" name="tien" id="tien" value="<?=$this->cart->total()?>">
                                            </div>

                                            <div class="bill-row total-order">
                                                <div class="text-right">Tổng giá trị:</div>
                                                <div class="col text-bill">
                                                    <span id="total_cart"><?=number_format($this->cart->total());?> đ</span>
                                                    <input type="hidden" name="subtotal" id="subtotal" value="<?=$this->cart->total()?>">
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="row-item checkout-finish hidden">
                                        <button type="submit" class="checkout-btn hidden" id="btn-checkout-pop" value="<?=lang('dat-hang');?>"><i class="fa fa-shopping-cart"></i><?=lang('dat-hang');?></button>
                                        <button type="submit" class="checkout-btn checkout-submit" id="btn-checkout-first" value="<?=lang('send_order');?>"><i class="fa fa-shopping-cart"></i><?=lang('send_order');?></button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </aside>

                    </form>
                <?php else :?>
                    <section class="col-md-8 col-lg-8">
                        <section class="no-product">
                            <div class="row">
                                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-4">
                                    <div class="icon-circle active animate scale text-center animated"><span class="icon icon-cart-2 small"></span></div>
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 no-tems-text"><br>
                                    <h3><?=lang('emtry_cart');?></h3>
                                    <?=lang('alert_emtry_cart');?>.<br>
                                    Click <a href="<?=site_url();?>" style="color:red"><?=lang('click_hear');?></a> <?=lang('tiepmuahang');?>.
                                </div>
                            </div></section>
                        <!-- Shopping cart -->
                        <!-- //end Shopping cart -->
                    </section>
                <?php endif;?>
            </div>
        </div>
        <div class="mgb30"></div>
        <div class="clearfix"></div>

    </div>
</div>
</section>







<script type="text/javascript">
    function select_tinhthanh(){
        var select_tinhthanh = $('#tinhthanh').val();
        var tien = $('#tien').val();
        var baseurl = '<?php echo base_url();?>';
        $.ajax({
            type: "POST",
            dataType: "html",
            url: baseurl + 'cart/tinhthanh',
            data: {select_tinhthanh:select_tinhthanh, tien:tien},
            success: function (res){
                var kq = JSON.parse(res);
                $('#shipping').html(kq['tien_ship2']+' đ');
                $('#shipping2').val(kq['tien_ship2']);
                $('#total_cart').html(kq['tien'] + ' đ');
            }
        });
    }
    $(document).ready(function () {
        $('#provice').change(function(){
            var proviceid = $(this).val();
            var baseurl = '<?php echo base_url();?>';

            $.ajax({
                type: "POST",
                dataType: "html",
                url: baseurl + 'home/district',
                data: {id:proviceid},
                success: function (res){
                    $('#district_list').html(res);
                }
            });
        });



    });


</script>