
<div class="menu">
    <h2 class="menu-heading">danh mục sản phẩm
        <i class="fa fa-bars"></i>
    </h2>
    <div class="menu-content open">
        <ul class="cate-menu">
            <?php if(count($cate_all)) : ?>
                <?php foreach ($cate_all as $key_r => $mr) : ?>
                    <li class="<?=check_hassubs1($mr->id,$cate_sub) ;?>">
                        <a href="<?= base_url('danh-muc/'.$mr->alias)?>" title="<?= $mr->name?>" class=""><?= $mr->name?></a>
                        <ul class="dropdown-content ">
                            <?php foreach($cate_sub as $m_sub) : ?>
                                <?php if($m_sub->parent_id==$mr->id) : ?>
                                    <li>
                                        <a style="text-transform:none;" href="<?= base_url('danh-muc/'.$m_sub->alias)?>" title="<?= $m_sub->name?>"><?= $m_sub->name?></a>
                                    </li>
                                <?php endif;?>
                            <?php endforeach;?>

                        </ul>
                    </li>
                <?php endforeach;?>
            <?php endif;?>

        </ul>
    </div>
</div>




