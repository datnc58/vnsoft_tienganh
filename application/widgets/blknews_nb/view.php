<?php foreach ($cate_all as $cate): ?>
<article class="arc4">
    <h2 class="heading1">
        <a href="<?= base_url($cate->alias)?>"><?= $cate->name?></a>
    </h2>
    <div class="mgb30"></div>


        <?php
            $total = count($cate->news);

            $count = $total/2;
            $count = ceil($count);
        //var_dump($count);die;
        ?>



    <?php for ($i=1; $i<=$count; $i++) : ?>
        <?php if ($i%2 != 0) : ?>
            <?php $j=0; foreach ($cate->news as $item) : $j++; ?>
                <?php if ($j <= 2* $i && $j > 2*($i-1)) : ?>
                    <div class="col-md-6 p0">
                        <div class="layout-row">
                            <a href="<?= base_url($item->alias.'.html')?>">
                                <img src="<?= base_url($item->image)?>">
                            </a>
                            <div class="layout-row-ct">
                                <a href="">
                                    <h3><?= $item->title?> </h3>
                                </a>
                                <p>
                                    <?= $item->description?>
                                </p>
                                <a href="<?= base_url($item->alias.'.html')?>" class="fl-r more"><?= lang('xemct')?> &gt;&gt;</a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                <?php
                if ($j == 2*$j) {
                    break;
                }
                ?>
            <?php endforeach; ?>
        <?php else : ?>
            <?php $j=0; foreach ($cate->news as $item) : $j++; ?>
                <?php if ($j <= 2* $i && $j > 2*($i-1)) : ?>
                    <div class="col-md-6 p0">
                        <div class="layout-row-right">
                            <a href="">
                                <img src="<?= base_url($item->image)?>">
                            </a>
                            <div class="layout-row-ct">
                                <a href="<?= base_url($item->alias.'.html')?>">
                                    <h3><?= $item->title?> </h3>
                                </a>
                                <p>
                                    <?= $item->description?>
                                </p>
                                <a href="<?= base_url($item->alias.'.html')?>" class="fl-r more"><?= lang('xemct')?> &gt;&gt;</a>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                <?php endif; ?>
                <?php
                if ($j == 2*$j) {
                    break;
                }
                ?>
            <?php endforeach; ?>
        <?php endif; ?>
    <?php endfor; ?>

</article>
<?php endforeach; ?>




















