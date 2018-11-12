<?php foreach ($cate_all as $cate): ?>
<section class="sc_news_home clearfix">
    <div class="container">
        <div class="row_pc">

            <h2 class="tit_home2 wow fadeInDownBig"><span><?= $cate->name?></span></h2>

            <div class="clearfix clearfix-50"></div>

            <div class="list_news_home clearfix">
                <div class="row_5">
                <?php foreach ($cate->news as $item) : ; ?>
                    <div class="col-sm-4 col-xs-12">
                        <div class="row_10">
                            <div class="box_news_home wow fadeInUp clearfix">
                                <figure class="img_news_home"><a href="<?= base_url($item->alias.'.html')?>">
                                        <img class="w_100" src="<?= base_url($item->image)?>" alt="<?= $item->title?>"/></a></figure>
                                <div class="clearfix"></div>
                                <div class="sub_news_home">
                                    <h3 class="name_news_home">
                                        <a href="<?= base_url($item->alias.'.html')?>"><?= $item->title?></a>
                                    </h3>
                                    <div class="clearfix"></div>
                                    <a href="<?= base_url($item->alias.'.html')?>" class="view_news_home" title="<?= $item->title?>"><i class="fa fa-angle-double-right"></i>Xem chi tiết<i class="fa fa-angle-double-left"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
                </div>
            </div>

            <div class="clearfix clearfix-50"></div>

            <div class="text-center">
                <button class="view_all_news"><i class="fa fa-angle-double-right"></i>Xem nhiều hơn<i class="fa fa-angle-double-left"></i></button>
            </div>

        </div>
    </div>
</section>
<?php endforeach; ?>


















