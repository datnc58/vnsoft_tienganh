<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>
<link rel="stylesheet" media="all" type="text/css" href="<?=base_url()?>assets/plugin/themes/0/bundle.min.css" />
    <div class="clearix clearfix-30"></div>
    <section class="checkout-cart-index">
        <div class="container">
            <div class="row">
                <div class="qts_right_content">
                     <div class="baoho_laodong" style="text-align: center">
                        <h2 class="" style="font-size: 20px; color: #58c603; text-transform: uppercase; font-weight: bold"><span>Đặt hàng thành công</span></h2>
                        <div class="clearix clearfix-30"></div>
                        <div style="padding: 0px 0px; width: 100%; height: auto; display: block">
                            <h4 style=" color: #58c603; font-weight: bold; font-size: 16px;padding-bottom: 5px; padding-left: 10px;">Cảm ơn Quý khách đã đặt hang tại <?=@$this->option->site_name;?></h4>
                            <h4 style="font-size: 14px; padding-left: 10px;">Thông tin đơn hàng đã được gửi tới: Chúng tôi sẽ liên hệ với Quý khách trong thời gian sớm nhất .
                            </h4>
                            <h4 style="font-size: 14px; padding-left: 10px;">Để tiết kiệm thời gian mua hàng. Quý khách vui lòng liên hệ trực tiếp qua số điện thoại: <?=@$this->option->hotline1; ?> / <?=@$this->option->hotline2; ?></h4>

                            <p style="font-weight: bold"><?=$this->option->site_name; ?><br>
                                <?=@$this->option->shipping; ?></p>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <div class="clearfix"></div>
                            <h3 style="text-align: center; font-weight: bold; color: #58c603; margin: 20px 0px; font-size: 20px;">Cảm ơn Quý khách đã mua hàng tại <?=@$this->option->site_name;?></h3>
                        </div>
                     </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>


