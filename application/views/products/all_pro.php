<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>
<section class="qts_mid_content">
    <div class="container">
        <div class="row_pc">
            <!-- ======================================================================= -->
            <article class="arc2">
                <h2 class="heading2">
                    <a href="<?= base_url('san-pham')?>"><?= lang('allproduct')?></a>
                </h2>
                <div class="mgb10"></div>
                <div class="m-60">
                    <?php foreach ($lists as $pro): ?>
                        <div class="col-lg-200 col-md-4 col-xs-6 p100">
                            <div class="prod">
                                <a href="<?= base_url('san-pham/'.$pro->alias)?>" class="h_1" title="<?=$pro->name?>">
                                    <img src="<?=base_url('upload/img/products/'.$pro->pro_dir.'/thumbnail_1_'.@$pro->image)?>" alt="<?=$pro->name?>">
                                    <h3><?=$pro->name?></h3>
                                </a>
                                <div class="prod-price">
                                    <?= number_format($pro->price_sale)?> VNĐ
                                    <s><?php if ($pro->price > 0 && $pro->price > $pro->price_sale){
                                            echo  number_format($pro->price) .'vnđ';
                                        }?> </s>
                                </div>
                                <a href="<?= base_url()?>cart/quick_buy/<?=$pro->id?>" class="but-buy" title="<?=$pro->name?>"><img alt="<?=$pro->name?>" src="<?= base_url()?>img/i-cart1.png" class="wi"> Mua hàng</a>
                            </div>
                        </div>
                    <?php endforeach; ?>
                    <div class="clearfix"></div>
                    <div class="text-center">
                        <?php echo $this->pagination->create_links();?>
                    </div>


                </div>
            </article>
            <div class="mgb30"></div>


            <!-- ======================================================================= -->
            <!-- ======================================================================= -->
            <div class="clearfix"></div>
            <div class="mgb30"></div>

        </div>
    </div>
    <div class="mgb40"></div>
</section>




