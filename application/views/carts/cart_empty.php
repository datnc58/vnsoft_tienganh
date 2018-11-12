<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>

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