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
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700,900&amp;subset=vietnamese" rel="stylesheet">
    <link rel="stylesheet" href="<?=site_url()?>assets/css/front_end/bootstrap.min.css" />
    <link rel="stylesheet" href="<?=site_url()?>assets/css/front_end/font-awesome.css" />
    <link rel="stylesheet" href="<?=site_url()?>assets/css/front_end/menu-2.css" />
    <link rel="stylesheet" type="text/css" href="<?=site_url()?>assets/css/front_end/owl.theme2.css">
    <link rel="stylesheet" type="text/css" href="<?=site_url()?>assets/css/front_end/style.css">
    <link rel="stylesheet" href="<?=site_url()?>assets/css/front_end/setmedia.css" />
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/bootstrap.min.js"></script>
    <script type="text/javascript" src="<?=site_url()?>assets/js/front_end/site/menu-2.js"></script>



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

<header id="header">
    <section class="qts_head_top">
        <div class="menu_mb butt_mobile visible-xs visible-sm clearfix">
            <button class="nav-toggle">
                <div class="icon-menu">
                    <span class="line line-1"></span>
                    <span class="line line-2"></span>
                    <span class="line line-3"></span>
                </div>
            </button>
            <div class="text-center">
                <a href="<?= base_url()?>" title="<?= $this->option->site_name?>"><img class="img_logo_mb" src="<?= base_url($this->option->site_logo)?>" alt="<?= $this->option->site_name?>" /></a>
            </div>
        </div>
        <!-- /menu_mb -->
        <div class="clearfix clb-header visible-sm visible-xs"></div>
        <div class="container hidden-xs hidden-sm">
            <div class="row_pc">
                <div class="fl-l top-left">
                    <span class="hd-hot"><img src="<?= base_url()?>img/i-hot.png" alt="<?= $this->option->site_name?>"> <?= $this->option->slogan?> </span>
                </div>
                <div class="fl-r top-right">
                    <div class="hd-tin">

                        <?php $i=0; foreach ($menu_left as $left): $i++; ?>
                            <a href="<?= base_url($left->url)?>" title="<?= $left->name?>">
                                <i class="  <?php if ($i == 1){echo 'fa fa-book';}else{echo 'fa fa-gift';}?>"></i> <?= $left->name?>
                            </a>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div class="clearfix"></div>
    <section class="qts_head_mid sticky-header">
        <div class="container">
            <div class="row_pc">
                <div class="fl-l col-md-3 hidden-sm hidden-xs">
                    <div class="row">
                        <h2 class="logo_pc " style="text-align: center; padding-top: 15px">
                            <a href="<?= base_url()?>" title="<?= $this->option->site_name?>" style="text-align: center"><img class="" src="<?= base_url($this->option->site_logo)?>" alt="<?= $this->option->site_name?>" /></a>
                        </h2>
                    </div>
                </div>
                <div class="fl-l col-lg-6 col-md-4">
                    <div class="rowe">
                        <!-- <div class="name">
                            <a href="">
                                <h1 class="hidden-480"> </span>
                            </a>
                        </div> -->
                        <form class="box_search validate" action="<?=base_url('tim-kiem')?>">
                            <div class="input-group">
                                <input type="text" class=" validate[required] form-control input_search" name="key" placeholder="Tìm kiếm">
                                <input type="hidden" id="id_giatri2" name="id_cate_search" value="">
                                    <span class="input-group-btn">
                                        <button class="btn butt_search" type="submit">
                                        </button>
                                    </span>
                            </div>
                        </form>
                        <p class="suggest hidden-md hidden-sm hidden-xs"><b>Từ khóa phổ biến</b></p>
                        <div class="listSuggest hidden-md hidden-sm hidden-xs">
                            <?php foreach ($search_data as $data): ?>
                                <a href="<?= base_url()?>tim-kiem?key=<?= $data->name_search?>" title="tìm kiếm"><?= $data->name_search?></a>
                            <?php endforeach; ?>

                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-5">
                    <div class="row_pc">
                        <div class="fl-l cartt">
                            <a href="<?= base_url('gio-hang')?>" title="giỏ hàng của bạn">
                                    <span class="dib relative">
                                        <img src="<?= base_url()?>img/i-cart.png" alt="giỏ hàng của bạn">
                                        <span class="number"><?= $count?></span>
                                    </span>
                                giỏ hàng
                            </a>
                        </div>
                        <div class="fl-l mid-right">
                            <div class="fl-r hotline-mid">
                                <?= $this->option->hotline1?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </section>
    <div class="after-fixed"></div>
    <section class="qts_head_bot " id='sticky'>
        <section class="sc_header_menu menu_bg hidden-lg hidden-md ">
            <div class="container">
                <div class="row">
                    <div class="row_pc">
                        <div class="col-md-12">
                            <nav class="nav is-fixed " role="navigation">
                                <div class="nav-container">
                                    <?= $this->load->widget('blkmenu_top')?>

                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="menu-pc hidden-sm hidden-xs">
            <div class="container">
                <div class="row">
                    <div class="col-lg-180 col-md-3 p0 ">

                        <?= $this->load->widget('blkdanhmuc')?>
                    </div>
                    <div class="col-lg-820 col-md-9 p0">
                        <div class="policy">
                            <?php $i=0; foreach ($pages as $page): $i++; ?>
                                <a href="<?= base_url('page/'.$page->alias)?>" title="<?= $page->name?>" class="si nth<?= $i?>"><?= $page->name?></a>  
                            <?php endforeach; ?>

                        </div>
                    </div>
                </div>
            </div>
        </section>
    </section>
</header>
