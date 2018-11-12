


<article id="body_home">
    <div class="clearfix"></div>
    <div class="container">
        <div class="row_pc">
            <div class="clearfix clearfix-30"></div>
            <section class="content_home">
                <div class="row">
                    <?=$product_noibat?>

                    <div class="col-md-9 col-sm-12 col-xs-12">
                        <div class="clearfix clearfix-25"></div>
                        <ul class="back_link">
                            <li><a href="<?= base_url()?>">Trang chủ</a></li>
                            <?=$sBreadcrumbs?>
                        </ul>
                        <div id="data_product">

                            <div class="clearfix clearfix-30"></div>
                            <div class="list_prod_cate">
                                <div class="row">
                                    <ul class="list-main-page">
                                        <?php foreach ($lists as $pro): ?>
                                            <li>
                                                <div class="row">
                                                    <div class="col-md-12 col-sm-12 col-xs-12 col-560">
                                                        <div class="dcs-new-page">
                                                            <h3 class="name-new-page">
                                                                <a href="<?=base_url($pro->file)?>" title="<?=$pro->name?>"><?=$pro->name?></a>
                                                            </h3>
                                                            <div class="view-news-pages">
                                                                Download: <a href="<?= base_url($pro->file)?>" class="link_dl_detail"><img src="img/icon_dl.png" alt=""/> <?=$pro->name?></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </li>
                                        <?php endforeach; ?>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                                <div class="text-center">
                                    <?php echo $this->pagination->create_links();?>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?= $product_moi?>
                </div>
                <div class="clearfix"></div>
                <div class="clearfix clearfix-20"></div>
            </section>
        </div>
    </div>
</article>


\