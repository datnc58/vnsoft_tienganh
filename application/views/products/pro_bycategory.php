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
        <div class="filter">
            <div class="filterCate">
                <span>Danh mục</span>
                <?php foreach ($cate_pro as $cate): ?>
                <a href="<?= base_url('danh-muc/'.$cate->alias)?>" title="<?=$cate->name?>"><?=$cate->name?></a>
                <?php endforeach; ?>
                <i class="but fa fa-chevron-up fa-chevron-down"></i>
            </div>
            <div class="filterPrice">
                <span>Khoảng giá</span>
                <?php foreach ($pfilters as $pfilter): ?>
                <a rel="nofollow" title="<?=$pfilter->name?>" href="<?=base_url('danh-muc/'.$cate_curent->alias)?>?price_to=<?=$pfilter->from_price.'-'.$pfilter->to_price;?>"><?=$pfilter->name?></a>
                <?php endforeach; ?>

            </div>
            <div class="filterPrice">
                <span>Thương hiệu</span>
                <?php foreach ($hangsx as $hang): ?>
                    <a rel="nofollow" title="<?=$hang->name;?>" href="<?=base_url('danh-muc/'.$cate_curent->alias)?>?hang=<?=$hang->hang_id;?>" ><?= $hang->name?></a>
                <?php endforeach; ?>
<!--                <i class="but fa fa-chevron-up fa-chevron-down"></i>-->
            </div>

            <input type="hidden" id="cat_id" value="<?= $cate_curent->id?>">
            <script type="text/javascript">
                $(function() {
                    $('.but').click(function() {
                        $(this).toggleClass('fa-chevron-down').parent('div').toggleClass('full');
                    })
                })

            </script>
        </div>
        <div class="clearfix"></div>
        <div class="fl-r filter-select hidden">
            <select>
                <option> tất cả </option>
                <option> tất cả 1 </option>
                <option> tất cả 2</option>
            </select>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="ct-bg">
    <div class="container">
        <div class="row_pc">
            <div class="clb30"></div>
            <article class="arc2 cate">
                <h2 class="heading">
                    <span><?= $cate_curent->name?></span>
                </h2>
                <div class="clb20"></div>
                <div class="m-10">
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
