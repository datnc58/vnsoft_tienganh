<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>
<section class="qts_mid_content ">
    <div class="container">
        <div class="row">
            <ul class="breadcrumbs-cate">
                <li>
                    <a href="<?= base_url()?>">Trang chủ</a>
                </li>
                <?= $sBreadcrumbs?>
            </ul>

            <div class="clearfix"></div>
        </div>
    </div>
    <div class="ct-bg">
        <div class="container">
            <div class="row_pc">
                <div class="clb30"></div>
                <article class="arc2 cate">
                    <h2 class="heading">
                        <span>Kết quả tìm kiếm</span>
                    </h2>
                    <div class="clb20"></div>
                    <div class="m-10">
                        <?php foreach ($lists as $pro): ?>
                            <div class="col-lg-200 col-md-4 col-xs-6 p100">
                                <div class="prod">
                                    <a href="<?= base_url($pro->alias)?>" class="h_1">
                                        <img src="<?=base_url('upload/img/products/'.$pro->pro_dir.'/thumbnail_1_'.@$pro->image)?>">
                                        <h3><?=$pro->name?></h3>
                                    </a>
                                    <div class="prod-price">
                                        <?= number_format($pro->price_sale)?> VNĐ
                                        <s><?php if ($pro->price > 0 && $pro->price > $pro->price_sale){
                                                echo  number_format($pro->price) .'vnđ';
                                            }?> </s>
                                    </div>
                                    <a href="<?= base_url()?>cart/quick_buy/<?=$pro->id?>" class="but-buy"><img src="<?= base_url()?>img/i-cart1.png" class="wi"> Mua hàng</a>
                                </div>
                            </div>
                        <?php endforeach; ?>

                        <div class="clearfix"></div>
                        <div class="clb20"></div>
                        <div class="phantrang center">
                            <?php echo $this->pagination->create_links();?>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>
</div>
</div>
