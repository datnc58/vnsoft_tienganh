<section class="qts_left_content">
    <h2 class="tit_main_left">
        <a href="#"><img class="icon_tit_left" src="img/icon_tit_left4.png" alt=""/>Danh Mục Dịch Vụ</a>
    </h2>
    <ul class="list_news_left">
        <?php if (isset($service)):
            foreach ($service as $cate) : ?>

                <li>
                    <div class="box_news_left">
                        <div class="sub_news_left">
                            <h3 class="name_news_left"><a href="<?= base_url('danh-muc-tin/'.$cate->alias.'.html')?>"><?= $cate->name?> </a></h3>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </li>
            <?php endforeach; endif; ?>
    </ul>
    <div class="clearfix"></div>
    <div class="clearfix">
        <h2 class="tit_main_left">
            <a href=""><img class="icon_tit_left" src="img/icon_tit_left4.png" alt=""/>TIN TỨC NỔi BẬT</a>
        </h2>
        <ul class="list_news_left">
            <?php if (isset($cate->news)):
            foreach ($cate->news as $n) : ?>
            <li>
                <div class="box_news_left">
                    <a hhref="<?= base_url('new/' . $n->alias . '.html'); ?>" class="img_news_left"><img class="w_100" src="<?= base_url($n->image)?>" alt="<?= $n->title?>"/></a>
                    <div class="sub_news_left">
                        <h3 class="name_news_left"><a href="<?= base_url('new/'.$n->alias.'.html')?>" ><?= $n->title?> </a></h3>
                        <div class="clearfix"></div>
                        <div class="des_news_left"><?= $n->description?></div>
                    </div>
                </div>
            </li>
            <?php endforeach; endif; ?>
        </ul>
        <div class="clearfix"></div>
        <div class="pull-right"><a href="" class="view_more_news_left">>> Xem thêm</a></div>
    </div>
    <div class="box_bd_left clearfix">
        <h2 class="tit_main_left">
            <span><img class="icon_tit_left" src="<?= base_url('assets/css/front_end/') ?>img/icon_tit_left4.png" alt=""/>THỐNG KÊ TRUY CẬP</span>
        </h2>
        <div class="clearfix"></div>
        <div class="box_tktc">
            <ul>
                <li>Đang online: <?= online(); ?></li>
                <li>Hôm nay:  <?= today(); ?></li>
                <li>Tổng: <?= total(); ?></li>
            </ul>
        </div>
    </div>
</section>
