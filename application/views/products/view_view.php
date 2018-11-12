<div class="slider_news">
    <?php foreach ($lists as $pro): ?>
        <div class="item">
            <div class="prod">
                <a href="<?= base_url('san-pham/'.$pro->pro_alias.'.html')?>" class="h_8585" title="<?= $pro->pro_name?>">
                    <img src="<?= base_url('upload/img/products/'.$pro->pro_dir.'/'.@$pro->pro_img)?>" alt="<?= $pro->pro_name?>" style="height: 170px !important;">
                    <h3><?= $pro->pro_name?></h3>
                </a>
                <?php if ($pro->price_sale > 0 ): ?>
                    <div class="prod-price">
                        <?= number_format($pro->price_sale)?> VNĐ
                    </div>
                <?php else: ?>
                    <div class="prod-price">
                        Liên hệ
                    </div>
                <?php endif; ?>
                <a href="<?= base_url('cart/quick_buy2').'/'.$pro->pro_id ?>" title="<?= $pro->pro_name?>" class="but-buy"><img src="<?= base_url()?>img/i-cart1.png" class="wi" alt="<?= $pro->pro_name?>"> Mua hàng</a>
            </div>
        </div>
    <?php endforeach; ?>
</div>


<script type="text/javascript">
    $(function() {
        $(".slider_news").owlCarousel({
            items: 5,
            responsive: {
                1200: { item: 5 }, // breakpoint from 1200 up
                982: { items: 4 },
                768: { items: 3 },
                480: { items: 2 },
                0: { items: 1, nav: false }
            },
            loop: true,
            rewind: false,
            autoplay: true,
            autoplayTimeout: 4000,
            autoplayHoverPause: true,
            smartSpeed: 500, //slide speed smooth

            dots: false,
            dotsEach: false,
            nav: true,
            navText: ['<img src="<?= base_url()?>img/but-p.png">', '<img src="<?= base_url()?>img/but-n.png">'],
            // navSpeed: 250, //slide speed when click button
            autoWidth: false,
            margin: 17,
            center: false,
            video: false,
            videoHeight: false,
            videoWidth: false,
        });


    });


</script>
<script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/owl.carousel2.min.js"></script>
