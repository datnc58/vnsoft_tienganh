

    <section class="sc_slider_main clearfix fadeInDown wow">
        <div class="owl-carousel owl-theme slider_main">

            <?php foreach($slide_home as $slide):?>
                <div class="item">
                    <a href="<?=base_url($slide->url)?>" class="w_100" title="<?=$slide->title;?>">
                        <img src="<?=base_url(@$slide->image)?>" alt="<?=$slide->title?>"/></a>
                </div>
            <?php endforeach;?>
        </div>
        <script type="text/javascript">
            $(document).ready(function() {
                var owl = $('.slider_main');
                owl.owlCarousel({
                    items: 1,
                    loop: true,
                    margin: 10,
                    nav:true,
                    autoplay: true,
                    lazyLoad:true,
                    animateIn: 'fadeIn',
                    animateOut: 'fadeOut',
                    autoplayTimeout: 3000,
                    smartSpeed: 1000,
                    autoplayHoverPause: false,
                    responsive:{
                        1199:{
                            items:1
                        },
                        979:{
                            items:1
                        },
                        768:{
                            items:1
                        },
                        479:{
                            items:1
                        },
                        100:{
                            items:1
                        }
                    }
                });
            });
        </script>
    </section>