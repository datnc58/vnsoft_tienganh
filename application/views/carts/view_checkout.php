<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>





<article class="qts_mid_content">
<div class="container">
<div class="row_pc">

<div class="box_padding_bd clearfix">
<div class="row_7">


<div class="col-lg-1000 col-md-12 col-xs-12">
<div class="row_8">
<div class="qts_mid_content clearfix">
<section class="sc_prod_mid clearfix">
<div class="clb30"></div>

<h2 class="heading">
    <span>Giỏ hàng của bạn</span>
</h2>
<div class="clb30"></div>
<div class="clearfix"></div>
<div class="list_prod_home list_prod_cate">
<div class="row_13">

<?php if(count($items)) : ?>
    <div class="clearfix clearfix-30"></div>
    <section class="col-md-8 col-lg-8 cart_left">
        <!-- Shopping cart -->
        <section class="content-box">
            <div class="shopping-cart">
                <div class="box ">
                    <form id="form-cart" name="form-cart" action="<?=site_url('cap-nhat-gio-hang')?>" method="post">
                        <input name="form_key" type="hidden"  value="<?=@$form_key?>">
                        <table class="table table-bordered table-hover fixgiohang" >
                            <thead style="width: 750px;">
                            <tr class="success">
                                <th class="th-title " width='40%'>Tên sản phẩm</th>
                                <th class="th-title" width='10%'>Số lượng</th>
                                <th class="th-title" width='10%'><?=lang('cost_shopping')?></th>
                                <th class="th-title hidden-xs" width='10%'><?=lang('total_shopping')?></th>
                                <th class="th-title text-center" width='5%'>x</th>
                            </tr>
                            </thead>
                            <tbody style="width: 750px;">
                            <?php if(count($items)) : ?>
                                <?php foreach($items as $item) : ?>
                                    <tr>
                                        <td>
                                            <input type="hidden" name="rowid[]" value="<?=$item['rowid']?>">
                                            <div class="col-sm-7">
                                                <a href="<?=base_url('san-pham/'.$item['alias'].'-'.$item['id'])?>" title="<?=@$item['name'];?>">
                                                    <img class="preview w_100" src="<?=base_url('upload/img/products/'.$item['pro_dir'].'/thumbnail_2_'.$item['image']);?>" alt="<?=@$item['name'];?>">
                                                </a>
                                            </div>
                                            <div class="col-sm-5">
                                                <?=@$item['name'];?>
                                            </div>
                                        </td>
                                        <td>
                                            <input name="qty[]" type="number" id="quantity" value="<?=@$item['qty'];?>" size="4" title="Qty" min="1" class="form-control" maxlength="12">
                                        </td>
                                        <td>
                                            <?=number_format($item['price'])?><?=lang('price_locale');?>
                                        </td>
                                        <td class="hidden-xs">
                                            <?=number_format($item['subtotal'])?><?=lang('price_locale');?>
                                        </td>
                                        <td>
                                            <a href="<?=base_url('cart/deleteone?id='.$item['rowid'])?>" title="Remove item" class="btn  remove-button"><span class="icon-cancel-2 "></span><i class="fa fa-trash"></i>&nbsp; Xóa</a>
                                        </td>
                                    </tr>
                                <?php endforeach;?>
                            <?php else : ?>
                                <tr><td colspan="5"><?=lang('cartnone');?> !!!</td></tr>
                            <?php endif;?>
                            </tbody>
                        </table>
                        <script>
                            jQuery('#quantity').keyup(function(e) {
                                var enterKey = 13;
                                if (e.which == enterKey){
                                    jQuery('#form-cart').submit();
                                }
                            });
                        </script>
                        <div class="row hidden-xs cart_bottom_btns col-sm-12">
                            <a href="<?=base_url()?>" type="button " title="Continue Shopping" class="btn btn-sm btn-primary" ><span><span>Tiếp tục mua hàng</span></span></a>
                            <a href="<?=site_url('xoa-toan-bo-gio-hang')?>"  title="Remove All [X]" class="btn btn-sm  btn-danger" id="empty_cart_button"><span><span>Xóa tất cả sản phẩm [X]</span></span></a>
                            <button type="submit" name="update_cart_action" value="update_qty" title="Update Cart" class="btn btn-sm btn-info "><span><span>Cập nhật</span></span></button>
                        </div>

                        <div class="row visible-xs cart_bottom_btns">

                            <button type="button " title="Continue Shopping" class="btn btn-sm btn-primary" onclick="setLocation('<?=site_url();?>');return false;"><span><span>Tiếp tục mua hàng</span></span></button>



                            <a href="<?=site_url('xoa-toan-bo-gio-hang')?>"  title="Remove All [X]" class="btn btn-sm  btn-primary" id="empty_cart_button"><span><span>Xóa tất cả sản phẩm [X]</span></span></a>

                            <button type="submit" name="update_cart_action" value="update_qty" title="Update Cart" class="btn btn-sm btn-primary "><span><span>Cập nhật</span></span></button>

                        </div>
                    </form>
                </div>
            </div>
        </section>

        <!-- //end Shopping cart -->
        <script type="text/javascript">
            function checkCoupon(){
                var couponcode = jQuery('#coupon_code').val();
                var sub_total = parseInt(jQuery('#sub_total').val());
                var shipping = parseInt(jQuery('#shipping').val());
                jQuery.ajax({
                    url: base_url() + 'check-coupon',
                    dataType:"json",
                    type:"POST",
                    data:{code:couponcode},
                    success : function(res){
                        if(res.check==false){
                            alert('Mã không chính xác ! Vui lòng thử lại.');
                        }else{
                            jQuery('#remove-coupone').val(res.coupon_price);
                            var total_pay = sub_total - (sub_total + shipping)*res.coupon_price/100;
                            jQuery('#total_pay').html(number_format(total_pay));
                            jQuery('#thongbao').html('<div class="title-credit"><h2 class="text-success text-center text-small">Chúc mừng bạn đã nhập mã giảm giá thành công !</h2><div class="discount text-danger">Đơn hàng của bạn được giảm '+res.coupon_price+'%</div></div>');
                        }
                    }
                });
            }
            function update_shipping(val){
                jQuery('#ship_price').html(number_format(parseInt(val)) + 'đ');
                var coupon = jQuery('#remove-coupone').val();
                var total_price = 0;
                var sub_total = parseInt(jQuery('#sub_total').val());
                if(parseInt(coupon) == 0){
                    total_price = sub_total;
                }else{
                    total_price = sub_total + parseInt(val);
                }
                jQuery('#total_pay').html(number_format(total_price) + 'đ');
            }
        </script>
    </section>
    <aside class="col-md-4 col-lg-4 shopping-cart-aside cart_right">
        <div class="panel panel-default">
            <div class="panel-heading"><strong>Tổng đơn hàng</strong></div>
            <div class="panel-body">
                <form id="customer-credit-form-code" action="<?=base_url('shipping')?>" method="post">

                    <div class="cart_total_section">
                        <div class="totals">
                            <table id="shopping-cart-totals-table">
                                <tbody>
                                <tr class="hidden">
                                    <td style="" class="a-left">
                                        Tạm tính:
                                    </td>
                                    <td></td>
                                    <td style="" class="a-right">
                                        <input hidden="" id="sub_total" value="<?=@$this->cart->total()?>" name="subtotal"/>
                                        <span class="price"><?=number_format($this->cart->total())?>đ</span>    </td>
                                </tr>
                                <tr class="hidden">
                                    <td class="a-right">
                                        Phí chuyển hàng
                                    </td>
                                    <td width="45%">
                                        <select name="shipping" class=" required form-control input-sm" id="shipping" onchange="update_shipping(jQuery(this).val())">
                                            <option value="0">--Chọn khu vực-- </option>
                                            <?php foreach($ships as $ship) : ?>
                                                <option value="<?=@$ship->price?>"><?=@$ship->name;?></option>
                                            <?php endforeach;?>
                                        </select></td>
                                    <td class="a-right">
                                        <span id="ship_price">0 đ</span>
                                    </td>
                                </tr>
                                <tfoot>
                                <tr>
                                    <td style="" class="a-left" colspan="1">
                                        <strong>Thành tiền:</strong>
                                    </td>
                                    <td></td>
                                    <td style="" class="a-right">
                                        <strong><span class="price" id="total_pay"><?=number_format($this->cart->total())?>đ</span></strong>

                                    </td>
                                </tr>
                                </tfoot>
                                </tbody>
                            </table>
                            <div class="clb10"></div>
                            <ul class="checkout-types">
                                <li>
                                    <button type="submit" class="btn btn-sm btn-primary btn-checkout">
                                        Thực hiện đặt hàng
                                    </button>
                                </li>
                            </ul>
                        </div>
                    </div>

                </form>
            </div>
        </div>
        <div class="clearfix"></div>
    </aside>
<?php else :?>
    <div id="center">
        <div class="container">

            <div class="empty-modal">
                <div class="modal" tabindex="-1" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <a href="<?=base_url();?>" target="_parent" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></a>
                                <h4 class="modal-title"><b>Chưa có sản phẩm nào trong giỏ hàng của bạn.</b></h4>
                            </div>
                            <div class="modal-body">
                                <section class="no-product">
                                    <div class="row">
                                        <div class="col-lg-2 col-md-2 col-sm-4 col-xs-4">
                                            <div class="icon-circle active animate scale text-center animated"><span class="fa fa-shopping-cart" style="font-size: 36px;margin-top:25px;"></span></div>
                                        </div>
                                        <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 no-tems-text"><br>
                                            <h3>Giỏ hàng trống</h3>
                                            Không có sản phẩm nào trong giỏ hàng của bạn.<br>
                                        </div>
                                    </div></section>
                            </div>
                            <div class="modal-footer">
                                <a href="<?=base_url()?>" target="_parent" class="btn btn-primary link-other-choice" id="btn-continue">Tiếp tục mua sắm</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <style>
        .empty-modal .modal {
            position: relative;
            z-index: 1;
            display: block;
        }
    </style>
<?php endif;?>

</div>
</div>
<div class="clearfix"></div>
<div class="text-center">
<!--    --><?php //echo $this->pagination->create_links();?>
</div>

</section>

<div class="clearfix"></div>
</div>
</div>
</div>


</div>


<div class="clearfix clearfix-20"></div>
</div>


</div>
</div>
</article>





