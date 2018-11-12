
<?php foreach ($menu_left as $root): ?>
<div class="col-md-6 col-sm-6 col-xs-12">
    <h5 class="tit_ft"><span><?= $root->name?></span></h5>
    <div class="clearfix"></div>
    <ul class="nav_ft_bot">
        <?php foreach ($menu_sub as $sub): ?>
            <?php if($root->id_menu == $sub->parent_id): ?>
                <li><a href="<?= base_url($sub->url)?>"><?=$sub->name?></a></li>
            <?php endif; ?>
        <?php endforeach; ?>

    </ul>
</div>
<?php endforeach; ?>