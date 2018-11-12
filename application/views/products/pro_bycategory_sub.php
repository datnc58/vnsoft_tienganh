<article id="body_home">

<div class="container">
<div class="row_pc">

<div class="row_5 row_xs_10">
<div class="col-lg-215 col-md-3 col-xs-12 hidden-sm hidden-xs">
<div class="row_10 row_xs_5">
    <?= $home_left?>
    <style>
        .sp_header_content_left{
            display: none;
        }
    </style>
<section class="qts_left_content">
<div class="clearfix clearfix-15"></div>

<div class="box_left_cate clearfix">
    <h2 class="name_page_cate"><span><?= $danhmuc_left->name?></span></h2>
    <div class="clearfix"></div>
    <ul class="nav_left_cate">
        <?php foreach ($danhmuc_left->danhmuc as $cat): ?>
            <li class="item_menu_cate">
                <a href="<?= base_url($cat->alias)?>" class="link_menu_cate"><?= $cat->name?></a>
                <?php if (count($cat->danhcon) > 0 ):?>
                    <ul class="sub_menu_left_cate">
                        <?php foreach ($cat->danhcon as $pro): ?>
                            <li>
                                <a href="<?= base_url($pro->alias)?>"><?= $pro->name ?></a>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                <?php endif; ?>
            </li>
        <?php endforeach; ?>
    </ul>
</div>

<div class="clearfix clearfix-15"></div>
    <div class="box_left_cate sc_search_left_cate clearfix">

        <div class="search_size_left search_has_drop">
            <div class="tit_search_size_left">Nổi bật <i class="fa fa-caret-down"></i></div>
            <div class="clearfix"></div>
            <div class="search_partner_lef">
                <div class="box_check_partner_left">
                    <ul class="list_check_partner_left">
                        <li>
                            <label>
                                <input class="input_check chk-active-coupon" onclick="filter()" type="checkbox" value="1" id="coupon"><span class="name_partner_check">Sản phẩm bán chạy</span><span class="quantity_partner"> (<?= $banchay?>)</span></label>
                        </li>
                        <li>
                            <label>
                                <input class="input_check chk-active-focus" onclick="filter()" type="checkbox" value="1" id="focus"><span class="name_partner_check">Khuyến mại</span><span class="quantity_partner"> (<?= $khuyemai?>)</span></label>
                        </li>
                        <li>
                            <label>
                                <input class="input_check chk-active-hot" onclick="filter()" type="checkbox" value="1" id="hot"><span class="name_partner_check">Hàng mới về</span><span class="quantity_partner"> (<?= $hot?>)</span></label>
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="search_size_left search_has_drop">
            <div class="tit_search_size_left">Thương hiệu <i class="fa fa-caret-down"></i></div>
            <div class="clearfix"></div>
            <form class="form_search_partner_left hidden">
                <div class="input-group">
                    <input class="form-control" placeholder="" id="name_search_1" onkeydown="filter()">
                    <span class="input-group-btn"> <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button> </span>
                </div>
            </form>
            <div class="clearfix"></div>
            <div class="search_partner_lef">
                <div class="box_check_partner_left">
                    <ul class="list_check_partner_left">
                        <?php foreach ($hangsx as $hang): ?>
                            <li>
                                <label><input class="input_check chk-manf-select" onclick="filter()" name="chat_lieu[]" type="checkbox" value="<?= $hang->hang_id?>"><span class="name_partner_check"><?= $hang->name?></span></label>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </div>
        <input type="hidden" id="cat_id" value="<?= $cate_curent->id?>">
        <div class="clearfix"></div>

        <div class="search_size_left search_has_drop">
            <div class="tit_search_size_left">Xuất xứ <i class="fa fa-caret-down"></i></div>
            <div class="clearfix"></div>
            <form class="form_search_partner_left hidden">
                <div class="input-group">
                    <input class="form-control" placeholder="">
                    <span class="input-group-btn"> <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button> </span>
                </div>
            </form>
            <div class="clearfix"></div>
            <div class="search_partner_lef">
                <div class="box_check_partner_left">
                    <ul class="list_check_partner_left">
                        <?php if(count($locales)) : ?>
                            <?php foreach($locales as $locale) : ?>
                                <li>
                                    <label><input class="input_check chk-specs" type="checkbox" onclick="filter()" value="<?=@$locale->id?>">
                                    <span class="name_partner_check">
                                        <?=$locale->name;?>
                                        <?php foreach ($product_locale as $local){
                                            if($local->locale == $locale->id){
                                                echo "( ".$local->count123." sp )";
                                            }
                                        } ?>
                                    </span>
                                    </label>
                                </li>
                            <?php endforeach;?>
                        <?php endif; ?>

                    </ul>
                </div>
            </div>
        </div>

        <div class="clearfix"></div>

        <div class="search_size_left search_has_drop price_search_drop">
            <div class="tit_search_size_left">Giá sản phẩm <i class="fa fa-caret-down"></i></div>
            <div class="clearfix"></div>
            <div class="search_partner_lef">
                <div class="box_check_partner_left check_price_search">
                    <ul class="list_check_partner_left">
                        <?php foreach ($pfilters as $pfilter): ?>
                            <li>
                                <label for="chk_price_<?=@$pfilter->id;?>">
                                    <input class="input_check chk-price-select" type="radio" name="optradio" onclick="filter()"  id="chk_price_<?=@$pfilter->id;?>" type="checkbox" value="<?=@$pfilter->from_price.'-'.$pfilter->to_price;?>" data-m-alias="<?=@$pfilter->from_price.'-'.$pfilter->to_price;?>">
                            <span class="name_partner_check">
                                <?=@$pfilter->name;?>
                                <?php
                                $i = 0;
                                foreach ($product_price as $pric){
                                    if($pric->price_sale >= $pfilter->from_price && $pric->price_sale <= $pfilter->to_price){
                                        $i++;
                                    }
                                }
                                echo " ( " .$i ."sp )";
                                ?>
                            </span>
                                </label>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                </div>
            </div>
        </div>

    </div>


</section>
</div>
</div>
<div class="col-lg-785 col-md-9 col-xs-12">
<div class="row_10 row_xs_5">
<div class="qts_mid_content">
    <div class="header_page_mid">
        <span class="hotline_hd_page">Hotline: <?= $this->option->hotline1?></span>
        <span class="txt_price_online hidden-480"><img class="icon_logo_price" src="<?= base_url()?>img/icon_logo_price.png" alt=""/> Đặt hàng online</span>
    </div>
<div class="clearfix"></div>
<div id="ctl00_pageBody_plhCatalog">
<h2 class="tit_page_cate">
    <a href="" class="name_tit_page_cate"><?= $cate_curent->name?></a>
<!--    <a href="" class="view_all_prod_page">Xem tất cả <i class="fa fa-angle-double-right"></i></a>-->
</h2>
<div class="clearfix"></div>
<div class="list_prod_page_page">
<div class="row_5">
    <?php foreach ($lists as $pro): ?>
    <div class="col-md-3 col-sm-4 col-xs-6">
        <div class="row_10">
            <div class="box_prod_cate_cate clearfix">
                <a href="<?= base_url($pro->pro_alias.'.html')?>" class="img_prod_hot h_69_cate_cate">
                    <img class="w_100" src="<?=base_url('upload/img/products/'.$pro->pro_dir.'/thumbnail_1_'.@$pro->image)?>" alt="" style="height: 139.38px;"></a>
                <div class="sub_prod_hot">
                    <h3 class="name_prod_hot"><a href=""><?= $pro->name?></a></a></h3>
                    <div class="clearfix"></div>
                    <?php if ($pro->price_sale > 0): ?>
                        <div class="price_prod_hot">Giá: <span><?= number_format($pro->price_sale)?> đ/bộ</span></div>
                    <?php else: ?>
                        <div class="price_prod_hot">Giá: <span>Liên hệ</span></div>
                    <?php endif; ?>
                    <div class="clearfix"></div>
                    <div class="guarantee_prod_hot"><?= $pro->caption_3?></div>
                    <div class="clearfix"></div>
                    <a href="<?= base_url($pro->pro_alias.'.html')?>" class="view_prod_hot">Chi tiết</a>
                </div>
            </div>
        </div>
    </div>
    <?php endforeach; ?>

    <div class="clearfix-25"></div>
    <div style="float: right">
        <?php echo $this->pagination->create_links();?>
    </div>



</div>
</div>
</div>

</div>
</div>
</div>
</div>

</div>
</div>
<!--<script type="text/javascript">-->
<!--    $(".nav_prod_main").addClass("nav_prod_home");-->
<!--</script>-->
</article>