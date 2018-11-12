<div class="clearfix"></div>


<div class="content_cate">
    <div class="container">
        <div class="row_pc">


            <div class="clearfix clearfix-25"></div>
            <ul class="back_link">
                <li><a href="<?= base_url()?>" title="trang chủ">Home</a></li>
                <li><span><?= $video->name?></span></li>
            </ul>
            <div class="clearfix clearfix-20"></div>
            <h2 class="tit_page_cate"><a href="<?=base_url();?>" title="<?= $video->name?>>" > <?= $video->name?></a></h2>
            <div class="clearfix clearfix-10"></div>

            <div class="row_20">
                <div class="col-md-8 col-sm-12 col-xs-12">
                    <div class="row_mg_5">
                        <div class="date_pet_cate">
                            By <a href="<?=base_url();?>" title="<?=@$this->option->site_name;?>"><?=@$this->option->site_name;?></a> -  <span><?= date('d/m/Y', $video->time)?></span>
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
                            <div style="font-size:14px; line-height:23px; margin-bottom:10px;"><strong><em><?= $video->description?></em></strong></div>
                            <iframe width="100%" height="500px" src="<?=@$video->link_video;?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                        </div>
                        <div class="date_pet_cate">
                            By <a href="<?=base_url();?>" title="<?=@$this->option->site_name;?>"><?=@$this->option->site_name;?></a> -  <span><?= date('d/m/Y', $video->time)?></span>
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
                            <div class="clearfix clearfix-45"></div>
                            <h4 class="tit_right_cate"><span class="td-pulldown-size">Bài viết liên quan</span></h4>
                            <div class="clearfix"></div>
                            <div class="box_slider_home3 clearfix">
                                <div class="owl-carousel owl-theme slider_home4">
                                    <?php
                                    if(count($video_same)){
                                        foreach($video_same as $val){ ?>
                                            <div class="item">
                                                <div class="box_pet1 fadeInDown wow">
                                                    <a href="<?=base_url($val->alias).'.html';?>" title="<?= $val->name ?>" class="img_pet1 fix_height">
                                                        <img class="w_100" src="<?=base_url($val->image)?>" alt="<?= $val->name ?>"/>
                                                    </a>
                                                    <div class="clearfix"></div>
                                                    <div class="sub_pet1">
                                                        <h3 class="" style="margin-top: 5px; font-size: 16px;"><a href="<?=base_url($val->alias).'.html';?>" title="<?=$val->title;?>"><?=$val->title;?></a></h3>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php   }
                                    }
                                    ?>
                                </div>
                            </div>
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
