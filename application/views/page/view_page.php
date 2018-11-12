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
                <p><i><?= $page->description; ?></i></p>
                <?= $page->content?>
                <div class="clb40"></div>
                <div class="fb-comments" data-href="<?=base_url($page->alias)?>" data-width="100%"
                     data-numposts="100"
                     data-colorscheme="light">

                </div>
            </div>
        </div>
    </div>
</section>
</div>
</div>

<style>
    ul.breadcrumbs-cate {
        padding-bottom: 0px !important;
        /*comment*/
    }
</style>
