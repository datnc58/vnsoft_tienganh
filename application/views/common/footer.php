
<div class="clearfix"></div>

<footer id="footer" class="clearfix">

    <section class="sc_footer_top clearfix">
        <div class="container">
            <div class="row_pc">

                <div class="row">
                    <div class="col-md-5 col-xs-12">
                        <h4 class="tit_footer"><span>Thông tin liên hệ</span></h4>
                        <div class="clearfix clearfix-20"></div>
                        <ul class="list_add_ft">
                            <li>
                                Cơ sở 1: A12-TT9 Khu đô thị Văn Quán - Hà Đông - Hà Nội<br/>
                                Hotline: 0243 3523 232 - 0943 465 632
                            </li>
                            <li>
                                Cơ sở 2: LK319 DV7 Khu Hàng Bè - Kiến Hưng - Hà Đông - Hà Nội<br/>
                                Hotline: 0934 684 328 - 036 818 5887
                            </li>
                        </ul>
                    </div>
                    <div class="col-md-7 col-xs-12">
                        <h4 class="tit_footer"><span>Thông tin liên hệ</span></h4>
                        <div class="clearfix clearfix-20"></div>
                        <div class="box_map_ft">
                            <img style="max-width: 100%" src="<?=site_url()?>assets/css/img/map.png" alt=""/>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <div class="clearfix"></div>

    <section class="sc_footer_bot clearfix">
        <div class="container">
            <div class="row_pc">
                © 2018. Bảo lưu mọi quyền.
            </div>
        </div>
    </section>


</footer>

<a href="#top" id="go_top"><i class="fa fa-angle-up"></i></a>

<script type="text/javascript">
    $("a[href='#top']").click(function() {
        $("html, body").animate({ scrollTop: 20 }, "slow");
        return false;
    });
    $(window).scroll(function () {
        if ($(window).scrollTop() >=200) {
            $('#go_top').show();
        }
        else {
            $('#go_top').hide();
        }
    });
</script>
<script src="<?=site_url()?>assets/js/front_end/site/classie.js"></script>
<script src="<?=site_url()?>assets/js/front_end/site/uisearch.js"></script>
<script>
    new UISearch( document.getElementById( 'sb-search' ) );
</script>


<!--Phần lien quan đến đăng nhập giỏ hàng không được xóa-->
<script type="text/javascript" src="<?=site_url()?>assets/js/front_end/init.js"></script>
<link rel="stylesheet" href="<?= base_url('assets/plugin/ValidationEngine/style/validationEngine.jquery.css') ?>">
<script src="<?= base_url('assets/plugin/ValidationEngine/js/jquery.validationEngine-vi.js') ?>" charset="utf-8"></script>
<script src="<?= base_url('assets/plugin/ValidationEngine/js/jquery.validationEngine.js') ?>"></script>
<script>
    $('.validate').validationEngine();
</script>
<?php if($this->session->userData('mss_success')){?>
    <div id="show_success_mss" style="position: fixed; top: 150px; right: 20px;z-index: 99999">
        <div class="alert alert-success alert-dismissible" role="alert">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            <?=$this->session->userData('mss_success');?>
        </div>
        <?php
        $this->session->unset_userdata('mss_success'); ?>
    </div>
<?php }?>
<script>
    setTimeout(function(){
        jQuery('#show_success_mss').fadeOut().empty();
    }, 5000);
</script>
<input type="hidden" value="<?=base_url()?>" id="base_url">

</body>
</html>

