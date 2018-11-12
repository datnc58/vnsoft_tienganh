
<div class="clearfix"></div>


<div class="content_cate">
<div class="container">
<div class="row_pc">


<div class="clearfix clearfix-50"></div>
<ul class="back_link">
    <li><a href="<?= base_url()?>" title="Trang chủ">Home</a></li>
    <li><span><?= $cate_current->name;?></span></li>
</ul>

<div class="clearfix clearfix-20"></div>
<h2 class="tit_page_cate"><a href="<?=base_url($cate_current->alias).'.html';?>" title="<?= $cate_current->name?>" > <?= $cate_current->name;?></a></h2>
<div class="clearfix clearfix-25"></div>
<div class="row_20">
<div class="col-md-8 col-sm-12 col-xs-12">
    <div class="row_mg_5">
        <div class="date_pet_cate">
            By <a href="<?=base_url();?>" title="<?=@$this->option->site_name;?>"><?=@$this->option->site_name;?></a> -  <span><?= date('d/m/Y', $cate_current->time)?></span>
        </div>
        <div class="clearfix clearfix-20"></div>
        <p>
            <strong>
                <img draggable="false" class="emoji td-animation-stack-type0-2" alt="Địa chỉ" src="<?=base_url()?>assets/css/img/1f4cd.svg">&nbsp;Địa Chỉ:&nbsp;<?=@$this->option->address; ?><br>
                <img draggable="false" class="emoji td-animation-stack-type0-2" alt="Fanpage" src="<?=base_url()?>assets/css/img/1f44d.svg">&nbsp;Fanpage:&nbsp;</strong><a href="<?=@$this->option->site_fanpage; ?>" target="_blank" rel="noopener"><?=@$this->option->site_fanpage; ?></a><strong><br>
                <img draggable="false" class="emoji td-animation-stack-type0-2" alt="Liên hệ" src="<?=base_url()?>assets/css/img/260e.svg">&nbsp;Tư Vấn:&nbsp;<span style="color: #4db2ec;"><a href="tel:<?=@$this->option->hotline1;?>"><?=@$this->option->hotline1;?></a></span>
            </strong>
        </p>
        <div class="clearfix"></div>
        <div class="vns_noidung">
            <?php
            if(count($list)){
                foreach($list as $val){ ?>
                    <div class="col-md-4 col-sm-4 col-xs-12">
                        <div class="row_5">
                            <div class="box_dv_home fadeInDown wow clearfix">
                                <a href="<?=base_url('video-detail/'.$val->alias).'.html';?>" title="<?=$val->name; ?>" class="group_img_name_dv">
                                    <img class="w_100" src="<?=base_url($val->image);?>" alt="<?=$val->name; ?>"/>
                                    <h3 class="name_dv_home"><?=$val->name; ?></h3>
                                </a>
                                <div class="clearfix"></div>
                            </div>

                        </div>
                    </div>
                <?php   }
            }
            ?>
        </div>
    </div>
</div>
<div class="col-md-4 col-sm-12 col-xs-12">
    <?=@$home_right; ?>
</div>
</div>


</div>
</div>
</div>

<div class="clearfix clearfix-35"></div>
