<?php $i=0; foreach ($cate_all as $cate): $i++; ?>
<article class="arc4 c1">
    <div class="showCate">
        <div class="container-fluid">
            <div class="row_pc">
                <div class="col-md-3">
                    <div class="row">
                        <div class="title">
                            <h3>
                                <a class="tracking" href="<?= base_url('danh-muc/'.$cate->alias)?>" title="<?= $cate->name?>">
                                    <span><?= $i;?></span>
                                    <?= $cate->name?>
                                </a>
                            </h3>
                            <div class="title-but">
                                <a href="<?= base_url('danh-muc/'.$cate->alias)?>?sort=order_qty&order=desc" title="<?= $cate->name?>">
                                    <i style="background-position: 3px -529px" class="si"></i>
                                    <br>Mua nhiều
                                </a>
                                <a href="<?= base_url('danh-muc/'.$cate->alias)?>?sort=view&order=desc" title="<?= $cate->name?>">
                                    <i style="background-position: 2px -606px" class="si"></i>
                                    <br>Xem nhiều
                                </a>
                                <div class="clearfix"></div>
                            </div>
                            <ul class="title-link">
                                <?php foreach ($cate->cate as $cat): ?>
                                    <li>
                                        <a href="<?= base_url('danh-muc/'.$cat->alias)?>" style="color: #188bb8; font-weight: 500" title="<?= $cat->name?>"> <?= $cat->name?></a>
                                    </li>
                                <?php endforeach; ?>

                                <a href="<?= base_url('danh-muc/'.$cate->alias)?>" title="more" class="more" style="display: block;color: #000;text-align: center">Xem thêm...</a>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="col-md-9">
                    <div class="row">
                        <?php

                        foreach ($cate->product as $pro)


                            : ?>
                            <div class="col-md-3 col-sm-4 col-xs-6 col-480-12 p0" >
                                <div class="prod2" style="padding: 0px 10px;">
                                    <a href="<?= base_url('san-pham/'.$pro->pro_alias)?>" title="<?= $pro->name?>" class="h_8585">
                                        <div class="relative">
                                            <img src="<?=base_url('upload/img/products/'.$pro->pro_dir.'/'.@$pro->pro_img)?>" alt="<?= $pro->name?>">
                                            <a class="dp-bot" href="<?= base_url()?>cart/quick_buy/<?=$pro->pro_id?>" title="<?= $pro->name?>">
                                                mua ngay
                                            </a>
                                            <div class="dp-top-right hidden">
                                                <?php if ($pro->coupun > 0){
                                                    echo ceil($pro->coupun/$pro->price *100) .'%';
                                                }?>
                                            </div>
                                        </div>
                                        <h3 title="<?= $pro->name?>">
                                            <a href="<?= base_url('san-pham/'.$pro->pro_alias)?>" title="<?= $pro->name?>">
                                                <?= $pro->name?>
                                            </a>

                                        </h3>
                                       
                                        <div class="prod-price">
                                            <?php if($pro->price_sale > 0){ echo number_format($pro->price_sale).' VNĐ';  }else {echo "Liên hệ";} ?>
                                            <s><?php if ($pro->price > 0 && $pro->price > $pro->price_sale){
                                                    echo  number_format($pro->price) .'vnđ';
                                                }?> </s>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        <?php endforeach;?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
</article>
<?php endforeach;?>


