<div class="clearfix"></div>

<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>

<div class="content_cate">
    <div class="container">
        <div class="row_pc">
            <div class="clearfix clearfix-25" style="margin-bottom: 20px;"></div>
            <ul class="back_link">
                <li><a href="<?= base_url()?>" title="trang chủ">Home /</a></li>
                <li><span><?= $cate_current->name?></span></li>
            </ul>
            <style>

                .back_link {
                    list-style: none;
                }
/*comment*/
                .back_link li {
                    display: inline-block;
                    font-size: 14px;
                    font-weight: bold;
                    text-transform: uppercase;
                }
            </style>
            <div class="clearfix clearfix-20"></div>
            <div class="col-md-12" style="margin-bottom: 20px;">
                <div class="row">
                    <?php if (count($list)) {

                        foreach ($list as $key => $val) { ?>
                            <div class="col-md-6 col-sm-6">
                                <div class="col-md-4 col-sm-4 col-xs-4">
                                    <div class="row">
                                        <a href="<?=base_url('new/'.$val->alias).'.html';?>" title="<?=$val->title; ?>"> <img src="<?=base_url($val->image);?>" alt="<?=$val->title; ?>"></a>
                                    </div>
                                </div>
                                <div class="col-md-8 col-sm-8 col-xs-8">
                                    <a href="<?=base_url('new/'.$val->alias).'.html';?>" style="font-weight: bold" title="<?=$val->title; ?>"><?=$val->title; ?></a>
                                    <p><?= LimitString($val->description, 150, '...'); ?></p>
                                </div>
                            </div>

                        <?php    }
                    } ?>
                    <div class="more">
                        <?php echo $this->pagination->create_links();?>
                    </div>
                </div>
            </div>
            <div class="clearfix clearfix-25" style="margin-top: 20px;"></div>
        </div>
    </div>
</div>

<div class="clearfix clearfix-35"></div>
