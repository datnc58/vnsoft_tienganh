<section class="qts_mid_content ">
    <div class="container">
        <div class="row">
            <article class="arc1">
                <div class="col-lg-180 col-md-3 p0 "></div>
                <div class="col-lg-820 col-md-9 p0">
                    <div class="col-lg-795 col-md-12 p0">

                        <?=@$this->load->widget('slide'); ?>
                    </div>
                    <div class="col-lg-205 col-md-3 p0 rightside-banner hidden-md hidden-sm hidden-xs">
                        <?php if(isset($slide_top) && !empty($slide_top)){
                            foreach($slide_top as $val){
                                ?>
                                <a href="<?= $val->url; ?>" title="<?=$val->title;?>"><img src="<?=$val->image;?>"></a>
                        <?php }
                            ?>
                        <?php } ?>
                    </div>
                </div>
                <div class="clearfix"></div>
            </article>
        </div>
    </div>
    <div class="ct-bg" style="background: #f5f5f5">
        <div class="container">
            <div class="row_pc">
                <div class="clb30"></div>
                <?= $this->load->widget('product_cate')?>
                <div class="clearfix"></div>
                <?= $this->load->widget('cat_product_home')?>
                <div class="clearfix"></div>
                <?= $this->load->widget('cat_news_home')?>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</section>
</div>
</div>