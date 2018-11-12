

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
                <?= $news->content?>
                <div class="clb20"></div>
                <div class="fb-comments" data-href="<?=base_url($news->alias)?>" data-width="100%"
                     data-numposts="100"
                     data-colorscheme="light">

                </div>
                <h4 class="dv_khac"><a href="" class="">Tin tức liên quan</a></h4>
                <div class="sc_slider_lq">
                    <ul class="list_dv">
                        <?php foreach ($new_same as $sam): ?>
                            <li ><a title="<?= $sam->title?>" style="" href="<?= base_url($sam->alias)?>" class=""><?= $sam->title?> (&nbsp;<?= date('d-m-Y', $sam->time)?>)</a></li>
                        <?php endforeach; ?>

                    </ul>
                    <style>
                        .list_dv li a{
                            color: #333333;
                        }
                    </style>
                </div>
                <div class="clb10"></div>

            </div>
        </div>
    </div>
</section>
</div>
</div>
<style>
    .dv_khac {
        font-size: 13px;
        font-weight: bold;
        color: #333;
        border-bottom: 1px dashed #eaeaea;
        text-transform: uppercase;
        padding: 10px 0;
    }
    a {
        text-decoration: none;
        color: #333333;
    }
    .list_dv {
        line-height: 20px;
        padding: 20px;
    }
    .list_dv li {
        list-style: square;
    }
</style>

