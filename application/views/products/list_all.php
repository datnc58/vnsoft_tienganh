<?php if (isset($lists)): ?>
<?php foreach ($lists as $pro): ?>
    <li>
        <div class="row">
            <div class="col-md-3 col-sm-5 col-xs-6 col-430">
                <div class="img-prod">
                    <a href="<?= base_url($pro->alias.'.html')?>" title=""><img class="w_100" src="<?= base_url('upload/img/products/'.$pro->pro_dir.'/thumbnail_1_'.@$pro->pro_img)?>" alt=""/></a>
                    <div class="view-prod">
                        <a href="<?= base_url($pro->alias.'.html')?>" title=""class="btn btn-view"><?= lang('book_now')?></a>
                    </div>
                    <div class="text-view-prod">
                        <a href="<?= base_url($pro->alias.'.html')?>" title=""><?= lang('xemct')?></a>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-7 col-xs-6 col-430">
                <div class="tex-prod">
                    <h3 class="name-prod">
                        <a href="<?= base_url($pro->alias.'.html')?>" title=""><?= $pro->pro_name?></a>
                    </h3>
                    <?php if ($pro->price_sale > 0): ?>
                        <div class="price">
                            <?= number_format($pro->price_sale)?> VNĐ
                        </div>
                    <?php else: ?>
                        <div class="price">
                            <?= lang('contact')?>
                        </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </li>
<?php endforeach ; endif;?>