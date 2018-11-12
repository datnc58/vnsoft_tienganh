<article id="body_home">

<div class="container">
<div class="row_pc">

<div class="row_5 row_xs_10">
<div class="col-lg-215 col-md-3 col-xs-12 hidden-sm hidden-xs">
<div class="row_10 row_xs_5">
    <?= $home_left?>
</div>
</div>
<div class="col-lg-785 col-md-9 col-xs-12">
    <div class="row_10 row_xs_5">
        <section class="qts_mid_content">
            <div class="header_page_mid">
                <span class="hotline_hd_page">Hotline: <?= $this->option->hotline1?></span>
                <span class="txt_price_online hidden-480">
                    <a>
                        <img class="icon_logo_price" src="<?= base_url()?>img/icon_logo_price.png" alt=""/> Đặt hàng online
                    </a>

                </span>
            </div>
            <div class="banner_main">
                <a href="<?= base_url($slides->url)?>" class="visible-xs"><img class="w_100" src="<?= base_url($slides->link)?>" alt=""/></a>
                <section class="box_slider_elidefireball hidden-xs" id="container" >
                    <a href="<?= base_url($slides->url)?>" class="a_sl_el">
                        <div class="threesixty product1">
                            <div class="spinner">
                            </div>
                            <ol class="threesixty_images"></ol>
                        </div>
                    </a>
                </section>
            </div>
            <div class="hotline_elide_fire">
                Hotline: <span>0984 750 751 - 0905 845 866</span>
            </div>
            <div class="clearfix"></div>
            <div class="add_cpn_elide_fire">
                <span class="name_cpn_elide_fire">CHI NHÁNH - NHÀ PHÂN PHỐI ĐỘC QUYỀN TẠI HÀ NỘI</span><br/>
                Địa chỉ: <?= $this->option->address ?><br/>
                Hotline: 0975 195 112 - 0904 931 933<br/>
                Điện thoại : (024) 3785 8656 | Fax : 04) 3785 6973<br/>
                Email: <?= $this->option->site_email ?><br/>
            </div>
            <div class="list_news_elide">
                <div class="row">
                    <?php foreach ($elide as $elide): ?>
                    <div class="col-md-4 col-sm-4 col-xs-6 col-480-12">
                        <div class="box_news_elide">
                            <a href="<?= base_url($elide->alias)?>" class="img_elide h_69_elide">
                                <img class="w_100" src="<?= base_url($elide->icon)?>" alt=""/></a>
                            <div class="clearfix"></div>
                            <h3 class="name_elide"><a href=""><?= $elide->name?></a></h3>
                        </div>
                    </div>
                    <?php endforeach; ?>


                </div>
            </div>
            <div class="pull-right hidden">
                <button class="butt_view_more_elide">Xem thêm <i class="fa fa-angle-double-right"></i></button>
            </div>
        </section>
    </div>
</div>
</div>


</div>
</div>

<script type="text/javascript">
    $(".nav_prod_main").addClass("nav_prod_home");
</script>
</article>