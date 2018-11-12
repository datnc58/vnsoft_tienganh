<?php foreach ($cate_all as $cate): ; ?>
<section class="sc_main_home clearfix">
    <div class="container">
        <div class="row_pc">

            <div class="clearfix clearfix-40"></div>
            <h2 class="tit_home1 wow fadeInDownBig"><span>CÁC KHÓA HỌC TẠI EFA</span></h2>
            <div class="clearfix clearfix-30"></div>

            <div class="list_dv_home">
                <div class="row_29">
                    <?php foreach ($cate->cate as $cat): ?>
                    <div class="col-sm-6 col-xs-12">
                        <div class="mg_14">
                            <div class="box_dv_home wow fadeInUp">
                                <figure class="box_img_dv_home">
                                    <a href="<?= site_url('danh-muc/'.$cat->alias)?>">
                                        <img class="w_100" src="<?=base_url($cat->image)?>" alt="<?= $cat->name?>"/>
                                    </a>
                                </figure>
                                <div class="clearfix"></div>
                                <div class="des_dv_home hidden-xs">
                                    <a href="<?= site_url('danh-muc/'.$cat->alias)?>" title="<?= $cat->name?>">
                                        <?= $cat->description?>
                                    </a>
                                </div>
                                <div class="clearfix"></div>
                                <h3 class="name_dv_home">
                                    <a href="<?= site_url('danh-muc/'.$cat->alias)?>"><?= $cat->name?></a>
                                </h3>
                            </div>
                        </div>
                    </div>
                    <?php endforeach;?>
                </div>
            </div>

        </div>
    </div>
</section>
<?php endforeach;?>



