<h2 class="tit_right_content"><span>hỗ trợ trực tuyến</span></h2>
<div class="clearfix"></div>
<?php foreach ($supports_1 as $sup1): ?>
<div class="support_right clearfix">
    <div class="tit_sp_right"><?=@$sup1->name;?></div>
    <div class="clearfix"></div>
    <div class="hotline_right">
        <?=@$sup1->phone;?>
    </div>
    <div class="clearfix"></div>
    <a href="mailto:<?= @$sup1->email?>" class="email_right">
        <img class="icon_email_right" src="<?= base_url()?>img/icon_email.png" alt=""/><?= @$sup1->email?>
    </a>
    <div class="clearfix"></div>
    <div class="list_sp_right">
        <a href="<?= @$sup1->skype?>"><img src="<?= base_url()?>img/icon_sp_right1.png" alt=""/></a>
        <a href="https://chat.zalo.me/"><img src="<?= base_url()?>img/icon_sp_right2.png" alt=""/></a>
        <a href=""><img src="<?= base_url()?>img/h.png" alt=""/></a>
    </div>
</div>
<?php endforeach; ?>

