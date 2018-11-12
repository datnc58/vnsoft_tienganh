<footer id="footer">
    <section class="qts_footer_top  hidden-sm hidden-xs">
        <div id="fBorder">
            <p class="g1180 container" style="margin-bottom: 20px">
                <span></span>
            </p>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 p0">
                    <div class="ft-bd">
                        <a href="<?= base_url()?>" title="<?=$this->option->site_name;?>">
                            <img src="<?= base_url($this->option->site_logo)?>">
                        </a>
                        <form action="<?= base_url('home/add_email')?>" method="post" id="formthongtin">
                            <p style="padding:3px 5px 3px 0;margin:0  0 10px 0">
                                <b>Nhập Email để có thể nhận được thông tin đầy đủ và mới nhất mỗi khi có khuyến mãi</b>
                                <input id="inputSubscribe" type="text" name="email" class="input" placeholder="Địa chỉ email của bạn">
                                <input type="hidden" name="gioitinh" id="gioitinh" value="1">
                                <button data-gender="1" class="btnSubscribe btnRed btnColor" onclick="guithongtin(1)" type="button">Nam</button>
                                <button data-gender="0" class="btnSubscribe btnRed btnColor" onclick="guithongtin(0)" type="button">Nữ</button>
                            </p>
                        </form>

                    </div>
                    <script type="text/javascript">
                        function guithongtin(val){
                            $('#gioitinh').val(val);
                            $('#formthongtin').submit();
                        }
                    </script>
                </div>
                <div class="col-md-9 p0">
                    <div class="col-md-5 p0">
                        <div class="ft-bd">
                            <h5>GIỚI THIỆU</h5>
                            <div class="clb10"></div>
                            <p><?=$this->option->site_name;?> - Địa&nbsp;chỉ uy tín và đáng tin cậy hàng đầu của bạn!</p>
                            <p style="padding: 10px 0 10px 10px;">
                                <a target="_blank" href="<?= $this->option->site_fanpage?>" style="display: inline-block;font-size: 15px;border-radius: 20px;background: #0b4f90;font-weight: bold;color: #fff;width: 30px;text-align: center;line-height: 30px;padding:0;" class="fa fa-facebook"></a>
                                <a target="_blank" href="<?= $this->option->link_gg?>" style="display: inline-block;font-size: 15px;border-radius: 20px;background: #cd121b;font-weight: bold;color: #fff;width: 30px;text-align: center;line-height: 30px;padding:0" class="fa fa-google-plus"></a>
                            </p>
                        </div>
                    </div>
                    <?= $this->load->widget('blkmenu_bottom')?>

                    <div class="col-md-4 p0">
                        <div class="ft-bd">
                            <h5>THÔNG TIN THÊM</h5>
                            <?= $this->option->address?>

                        </div>
                        <div class="ft-bd">
                            <h5>LIÊN HỆ</h5>
                            <p>
                                <?= $this->option->shipping?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="qts_footer_mid hidden-lg hidden-md  hidden-sm hidden-xs">
        <div class="container f2">
            <div class="row_pc">
                <div class="row">
                    <ul>
                        <?php if(isset($cate_all) && !empty($cate_all)){ foreach ($cate_all as $cate){ ?>
                            <li class="col-md-2 c">
                                <h6>
                                    <a href="<?= base_url($cate->alias)?>" title="<?= $cate->name?>"><?= $cate->name?></a>
                                </h6>
                                <?php if(isset($cate->cate) && !empty($cate->cate)){ foreach ($cate->cate as $cat){ ?>
                                    <a href="<?= base_url($cat->alias)?>" title="<?= $cate->name?>"><?= $cat->name?></a>
                                <?php } } ?>
                            </li>
                        <?php } } ?>
                        <li class="clearfix"></li>
                    </ul>
                </div>
            </div>
        </div>
    </section>
    <section class="qts_footer_bot" style="background: #f5f5f5">
        <div class="clb20"></div>
        <div class="clb5"></div>
        <div class="container" style="position: relative;">
            <div class="row_pc">
                <div class="fl-l">
                        <span style="font-size:12px;">
                            <strong><?= $this->option->site_name?></strong>
                            <div class="clb10"></div>
                            <?= $this->option->shipping?>
                        </span>
                </div>
                <div class="fl-r fb-area hidden-sm hidden-xs">


                    <div class="fb-page" data-href="<?=@$this->option->site_fanpage; ?>"
                         data-tabs="timeline"  data-height="180" data-small-header="false"
                         data-adapt-container-width="true"
                         data-hide-cover="false" data-show-facepile="true">

                    </div>


                </div>
                <div class="clb10"></div>
            </div>
        </div>
    </section>
</footer>
<ul id="menuRight" class="hidden-sm hidden-xs">
    <li style="margin: 0;width: 100%;opacity:1;float: none" class="close">
        <p>
            <i style="background-position: 2px -653px;" class="si"></i>
        </p>
    </li>
    <li style="margin: 60px 0 40px 0;" id="rFavicon">
        <a href="<?= base_url()?>" title="<?=$this->option->site_name;?>">
            <i style="height: 30px; max-width:34px; display: block;overflow: hidden;text-align: center;">
                <img src="<?= base_url($this->option->site_logo)?>" alt="<?=$this->option->site_name;?>" style="width: 100%">
            </i>
        </a>
    </li>
    <li class="activeAble dragCart">
        <p class="tracking" data-t-type="ac" data-t-sec="mnr" data-t-uie="iccart">
            <i style="background-position: 3px -529px;" class="si"></i>Giỏ hàng
            <span class="changeICart"><?=$count?></span>
        </p>
        <ul>
            <li>Giỏ hàng của tôi (<?=$count?>)</li>
            <li>
                <a style="color: #188BB8" rel="nofollow" href="<?= base_url('gio-hang')?>" title="Xem giỏ hàng">Xem giỏ hàng</a>
                <p style="padding:10px 0;border-bottom: 1px solid #ccc;">Tổng tiền: <b style="float:right;color:#f04e23"><?= number_format($this->cart->total())?> VNĐ</b></p>

                <?php foreach ($this->cart->contents() as $item): ?>
                    <div class="itemCarts">
                        <a href="<?= base_url($item['alias'])?>" title="<?= $item['name']?>">
                            <img src="<?=base_url('upload/img/products/'.$item['pro_dir'].'/thumbnail_2_'.$item['image']);?>" alt="<?= $item['name']?>">
                        </a>
                        <p>
                            <a title="<?= $item['name']?>" href="<?= base_url($item['alias'])?>"><?= $item['name']?>
                            </a>
                        </p>
                        <p><b>Số Lượng: <?= $item['qty']?></b>
                            <i data-id="3554279" onclick="xoasp()" class="removeCartItem fa fa-trash-o"></i>
                        </p>
                        <i class="clearfix"></i>
                    </div>
                    <input type="hidden" id="idsp" value="<?= $item['rowid']?>">
                <?php endforeach; ?>
            </li>
            <script>
                function xoasp(){
                    $.ajax({
                        type: "POST",
                        url: $('#base_url').val() + 'cart/deleteone11',
                        data: {id: $('#idsp').val()},
                        success: function (result) {
                            location.reload(base_url());
                        }
                    });
                }
            </script>

        </ul>
    </li>
    <style>
        .itemCarts>p>i {
            float: right;
            margin-right: 10px;
            cursor: pointer;
            font-size: 14px;
            color: #919191;
        }
    </style>
    <li class="hidden">
        <p class="tracking" data-t-type="ac" data-t-sec="mnr" data-t-uie="icwishlist">
            <a class="btnSignin" rel="nofollow" href="" title="yêu thích">
                <i style="background-position: 2px -584px;" class="si"></i> Yêu thích</a>
        </p>
    </li>
    <li class="activeAble">
        <p class="tracking" data-t-type="ac" data-t-sec="mnr" data-t-uie="icproducthis">
            <i style="background-position: 2px -606px;" class="si"></i> Đã xem</p>
        <ul>
            <li>Sản phẩm đã xem</li>

            <li>
                <?php if(isset($_SESSION['daxemsp']) && count($_SESSION['daxemsp'])){ foreach ($_SESSION['daxemsp'] as $v) {?>
                    <div class="itemCarts">
                        <a href="<?= base_url(@$v['alias'])?>" title="<?= @$v['name']?>">
                            <img src="<?= @$v['image']?>" alt="<?= @$v['name']?>">
                        </a>
                        <p>
                            <a title="<?= @$v['name']?>" href="<?= base_url(@$v['alias'])?>"><?= @$v['name']?>
                            </a>
                        </p>
                        <p><?= number_format(  @$v['price_sale'])?> VNĐ</p>
                        <i class="clearfix"></i>
                    </div>
                <?php } }?>
            </li>
        </ul>
    </li>
    <li class="activeAble">
        <p class="tracking" data-t-type="ac" data-t-sec="mnr" data-t-uie="icproducthis">
            <i style="background-position: 2px -1246px;" class="si"></i> Góp ý</p>
        <ul>
            <li>ý kiến của bạn</li>
            <li>
                <p>
                    nêu ý kiến của bạn:
                </p>
                <form action="<?= base_url('contact')?>" method="post" class="validate" role="form">
                    <input style="width: 100%" name="full_name" id="name" class="validate[required] form-control" placeholder="Họ tên">
                    <input style="width: 100%" name="email" id="email" class="validate[required, custom[email]] form-control" placeholder="Email">
                    <input style="width: 100%" name="phone" id="phone" class="validate[required, custom[phone]] form-control" placeholder="Điện thoại">
                    <textarea name="message" class="form-control" rows="5" style="width: 100%" placeholder="Nội dung phản hồi"></textarea>
                    <input type="submit" name=" Gửi" style="background: tomato;color:#fff;border:none;padding: 3px 20px">
                </form>
            </li>
        </ul>
    </li>
    <li style="margin: 0;">
        <p style="padding: 5px 0;" class="backtotop">
            <i style="background-position: 2px -629px;" class="si"></i>
        </p>
    </li>
</ul>
<script type="text/javascript">
    $(function() {
        if ($('#open').val() == 'cart') {
            $('ul#menuRight .activeAble').removeClass('active');
            $('.dragCart').addClass('active');
            $('ul#menuRight').attr('style', 'right:280px;');
            $('ul#menuRight .close').addClass('show');
        }
        $('ul#menuRight .activeAble>p').click(function() {
            var t = $(this).parent('.activeAble');
            if (!t.hasClass('active')) {
                $('ul#menuRight .activeAble').removeClass('active');
                t.addClass('active');
                $('ul#menuRight').attr('style', 'right:280px;');
                $('ul#menuRight .close').addClass('show');
            } else {
                t.removeClass('show');
                $('ul#menuRight .activeAble').removeClass('active');
                $('ul#menuRight').removeAttr('style');
            }
        });
        $('ul#menuRight .close').click(function() {
            $(this).removeClass('show');
            $('ul#menuRight .activeAble').removeClass('active');
            $('ul#menuRight').removeAttr('style');
        });
        $('.removeCartItem').click(function() {
            var mes = $('#dMsg'),
                t = $(this);
            mes.html('<p>' + msgRemoveCartItem + '?</p>');
            mes.dialog({
                title: msgDialog,
                modal: true,
                show: 'scale',
                buttons: [{
                    text: msgAccept,
                    click: function() {
                        removeCart(
                            t.attr('data-id'),
                            function(rs) {
                                if ($('#isPageCart').length) {
                                    document.location.href = document.URL;
                                } else {
                                    $('.changeICart').html(rs.data.totalProducts);
                                    ajaxLoadView({
                                        view: 'menuRight&open=cart',
                                        onSuccess: function(rs) {
                                            $('#appendMenuRight').html(rs);
                                            mes.dialog("close");
                                        }
                                    });
                                }
                            }, null
                        );
                    }
                },
                    {
                        text: msgCancel,
                        click: function() {
                            $(this).dialog("close");
                        }
                    }
                ]
            });
        });

    });

</script>
<script type="text/javascript">
    $(function() {
        // slider_main active
        $(".slider_main").owlCarousel({
            items: 1,
            responsive: {
                1200: { item: 1 }, // breakpoint from 1200 up
                982: { items: 1 },
                768: { items: 1 },
                480: { items: 1 },
                0: { items: 1, nav: false }
            },
            loop: true,
            rewind: false,
            autoplay: true,
            autoplayTimeout: 4000,
            autoplayHoverPause: true,
            smartSpeed: 500, //slide speed smooth

            dots: true,
            dotsEach: false,
            nav: false,
            // navText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
            // navSpeed: 250, //slide speed when click button

            autoWidth: false,
            margin: 1,

            center: false,
            video: false,
            videoHeight: false,
            videoWidth: false,
            URLhashListener: true
        });
        $(".slider_new").owlCarousel({
            items: 5,
            responsive: {
                1200: { item: 5 }, // breakpoint from 1200 up
                982: { items: 4 },
                768: { items: 3 },
                480: { items: 2 },
                0: { items: 1, nav: false }
            },
            loop: true,
            rewind: false,
            autoplay: true,
            autoplayTimeout: 4000,
            autoplayHoverPause: true,
            smartSpeed: 500, //slide speed smooth

            dots: false,
            dotsEach: false,
            nav: true,
            navText: ['<img src="img/but-p.png">', '<img src="img/but-n.png">'],
            // navSpeed: 250, //slide speed when click button

            autoWidth: false,
            margin: 17,

            center: false,
            video: false,
            videoHeight: false,
            videoWidth: false,
        });


    });



    $("a[href='#top'],.backtotop").click(function() {
        $("html, body").animate({
            scrollTop: 0
        }, "slow");
        return false;
    });
    $(window).scroll(function() {
        if ($(window).scrollTop() >= 200) {
            $('#go_top').show();
        } else {
            $('#go_top').hide();
        }
    });

</script>
<script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/owl.carousel2.min.js"></script>
<script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/style-img.js"></script>

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

