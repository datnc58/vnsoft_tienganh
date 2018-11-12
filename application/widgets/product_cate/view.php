<article class="arc2">
    <h2 class="heading">
        <span>Sản phẩm mới</span>
    </h2>
    <ul class="nav home-tabs">
        <li class="active">
            <a data-toggle="pill" href="#tab1" data-params="hot" onclick="load_data(this)">Mới nhất</a>
        </li>
        <li class="hidden">
            <a data-toggle="pill" href="#tab2" data-params="hot_time" onclick="load_data(this)">Hot nhất</a>
        </li>
        <li>
            <a data-toggle="pill" href="#tab3" data-params="view" onclick="load_data(this)">Xem nhiều </a>
        </li>
        <li class="hidden">
            <a data-toggle="pill" href="#tab4" data-params="order" onclick="load_data(this)">Mua nhiều </a>
        </li>
        <li>
            <a data-toggle="pill" href="#tab5" data-params="coupun" onclick="load_data(this)">Giảm giá</a>
        </li>
    </ul>
    <script>
        function load_data(obj){
            var value= $(obj).attr('data-params');
            var id = $(obj).attr('href');
            var base_url = $('#base_url').val();
            $.ajax({
                type: "POST",
                url: base_url + 'load-view',
                data: {value: value},
                success: function (result) {
                    $(''+id).html(result);
                }
            });
        }
    </script>
    <div class="clb20"></div>
    <div class="tab-content">
        <div id="tab1" class="tab-pane fade in active">
            <div class="slider_new">

                <?php foreach ($pros as $pro): ?>
                    <div class="item">
                        <div class="prod">
                            <a href="<?= base_url('san-pham/'.$pro->pro_alias.'.html')?>" class="h_8585" title="<?= $pro->name?>">
                                <img src="<?= base_url('upload/img/products/'.$pro->pro_dir.'/'.@$pro->pro_img)?>" alt="<?= $pro->name?>">
                                <h3><?= $pro->name?></h3>
                            </a>
                            <?php if ($pro->price > 0 ){ ?>
                                <div class="prod-price" style="font-size: 10px !important;">
                                    <strike><?= number_format($pro->price)?></strike> VNĐ
                                </div>
                            <?php } ?>
                            <?php if ($pro->price_sale > 0 ): ?>
                            <div class="prod-price">
                                <?= number_format($pro->price_sale)?> VNĐ
                            </div>
                            <?php else: ?>
                                <div class="prod-price">
                                    Liên hệ
                                </div>
                            <?php endif; ?>
                            <a href="<?= base_url('cart/quick_buy2').'/'.$pro->pro_id ?>" title="<?= $pro->name?>" class="but-buy"><img src="<?= base_url()?>img/i-cart1.png" class="wi" alt="<?= $pro->name?>"> Mua hàng</a>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>

        </div>
        <div id="tab2" class="tab-pane fade">


        </div>
        <div id="tab3" class="tab-pane fade">

        </div>
        <div id="tab4" class="tab-pane fade">

        </div>
        <div id="tab5" class="tab-pane fade">

        </div>
    </div>
</article>