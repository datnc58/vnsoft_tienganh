<?php foreach ($cate_all as $cates): ?>
<article class="arc3">
    <h2 class="heading">
        <span><?= $cates->name?></span>
    </h2>
    <div class="row">
        <?php $i=0; foreach ($cates->cate as $cat): $i++;  ?>
        <div class="col-md-4">
            <div class="tin">
                <h3 class="tin-tit"><?= $cat->name?></h3>
                <ul>
                    <?php foreach ($cat->news as $new): ?>
                    <li>
                        <a href="<?= base_url('new/'.$new->alias)?>" title="<?= $new->title?>"><?= $new->title?> </a>
                    </li>
                    <?php endforeach; ?>
                </ul>
            </div>
        </div>
        <?php if ($i % 3 == 0){
                echo '<div class="clearfix"></div>';
            }?>
        <?php endforeach; ?>
    </div>
</article>
<?php endforeach; ?>

