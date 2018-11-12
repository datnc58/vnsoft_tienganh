<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= isset($seo['title']) && $seo['title'] != '' ? $seo['title'] : @$this->option->site_name; ?></title>
    <link rel="shortcut icon" href="<?= base_url($this->option->favicon) ?>"/>
    <meta name='description'
          content='<?= isset($seo['description']) ? $seo['description'] : @$this->option->site_description; ?>'/>
    <meta name='keywords'
          content='<?= isset($seo['keyword']) && $seo['keyword'] != '' ? $seo['keyword'] : $this->option->site_keyword; ?>'/>
    <meta name='robots' content='index,follow'/>
    <meta name='revisit-after' content='1 days'/>
    <meta http-equiv='content-language' content='vi'/>
    <!--    for facebook-->
    <meta property="og:title"
          content="<?= isset($seo['title']) && $seo['title'] != '' ? $seo['title'] : @$this->option->site_name; ?>"/>
    <meta property="og:site_name" content="<?= @$this->option->site_name; ?>"/>
    <meta property="og:url" content="<?= current_url(); ?>"/>
    <meta property="og:description"
          content="<?= isset($seo['description']) && $seo['description'] != '' ? $seo['description'] : @$this->option->site_description; ?>"/>
    <meta property="og:type" content="<?= @$seo['type']; ?>"/>
    <meta property="og:image" content="<?= isset($seo['image']) && @$seo['image'] != '' ? base_url(@$seo['image']) : @$this->option->site_logo ; ?>"/>
    <meta property="og:locale" content="vi"/>
    <!-- for Twitter -->
    <meta name="twitter:card"
          content="<?= isset($seo['description']) && $seo['description'] != '' ? $seo['description'] : @$this->option->site_description; ?>"/>
    <meta name="twitter:title"
          content="<?= isset($seo['title']) && $seo['title'] != '' ? $seo['title'] : @$this->option->site_name; ?>"/>
    <meta name="twitter:description"
          content="<?= isset($seo['description']) && $seo['description'] != '' ? $seo['description'] : @$this->option->site_description; ?>"/>
    <meta name="twitter:image"
          content="<?= isset($seo['image']) && $seo['image'] != '' ? base_url($seo['image']) : base_url(@$this->option->site_logo); ?>"/>
    <!-- thay đổi css -->
    <link href="<?=site_url()?>assets/css/front_end/bootstrap.min.css" rel="stylesheet"/>
    <link href="<?=site_url()?>assets/css/front_end/font-awesome.css" rel="stylesheet"/>
    <link href="<?=site_url()?>assets/css/front_end/owl.carousel.min.css"rel="stylesheet">
    <link href="<?=site_url()?>assets/css/front_end/owl.theme.default.min.css"rel="stylesheet">
    <link href="<?=site_url()?>assets/css/front_end/search.css"rel="stylesheet">
    <link href="<?=site_url()?>assets/css/front_end/menu-2.css" rel="stylesheet"/>
    <link href="<?=site_url()?>assets/css/front_end/animate.css" rel="stylesheet"/>
    <link href="<?=site_url()?>assets/css/front_end/style00.css" rel="stylesheet"/>
    <link href="<?=site_url()?>assets/css/front_end/setmedia.css" rel="stylesheet"/>

    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/jquery-1.11.1.min.js"></script>
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/owl.carousel.js"></script>
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/menu-2.js"></script>
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/style-img.js"></script>
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>

    <div id="fb-root"></div>
    <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.3";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-127731915-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-127731915-1');
    </script>

    <!--Start of Tawk.to Script-->
    <script type="text/javascript">
        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
        (function(){
            var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
            s1.async=true;
            s1.src='https://embed.tawk.to/5bcb074fb9993f2ada14f2cc/default';
            s1.charset='UTF-8';
            s1.setAttribute('crossorigin','*');
            s0.parentNode.insertBefore(s1,s0);
        })();
    </script>
    <!--End of Tawk.to Script-->
</head>
<body >



<div class="menu_mb butt_mobile visible-xs visible-sm clearfix">
    <button class="nav-toggle">
        <div class="icon-menu">
            <span class="line line-1"></span>
            <span class="line line-2"></span>
            <span class="line line-3"></span>
        </div>
    </button>
    <div class="text-center">
        <a href="<?= base_url()?>"><img class="img_logo_mb" src="<?= base_url($this->option->site_logo)?>" alt="<?= $this->option->site_name?>"></a>
    </div>
</div><!-- /menu_mb -->
<div class="clearfix clearfix-62 visible-sm visible-xs"></div>


<header id="header">

    <section class="sc_head_top clearfix">
        <div class="container">
            <div class="row_pc">

                <div class="clearfix bd_head_top fadeInDown wow">

                    <ul class="pull-left list_ct_hd hidden-xs">
                        <li><a href="<?= base_url('lien-he')?>">Liên hệ</a></li>
                        <li><a href="">Tuyển dụng</a></li>
                        <li><a href="tel:<?= $this->option->hotline1?>">Hotline: <?= $this->option->hotline1?></a></li>
                    </ul>

                    <div class="pull-right hd_right">
                        <div class="list_link_hd">
                            <a href="" class="fa fa-facebook"></a>
                            <a href="" class="fa fa-google-plus"></a>
                            <a href="" class="fa fa-youtube-play"></a>
                            <a href="" class="fa fa-twitter"></a>
                            <a href="" class="fa fa-instagram"></a>
                            <a href="" class="fa fa-linkedin"></a>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

    <div class="clearfix"></div>

    <section class="sc_head_bot sticky-header clearfix">

        <div class="container">
            <div class="row_pc">
                <div class="col-md-3 hidden-sm hidden-xs">
                    <div class="row">
                        <h1 class="logo_pc"><a href="<?= base_url()?>"><img src="<?= base_url($this->option->site_logo)?>" alt="<?= $this->option->site_name?>"></a></h1>
                    </div>
                </div>
                <div class="col-md-9 col-xs-12">
                    <div class="row">
                        <div class="group_menu_search clearfix">
                            <div id="sb-search" class="sb-search search_box">
                                <?= $blksearch?>
                            </div>
                            <div class="menu_main">
                                <?= $blkmenu_top?>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</header>
<div class="clearfix"></div>