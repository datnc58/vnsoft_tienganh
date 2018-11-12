<article>
    <div class="container">
        <div class="row_pc">
            <div class="back_link">
                <a href="<?= base_url();?>" title="<?=lang('home');?>"><?=lang('home');?></a>
                <?=@$sBreadcrumbs;?>
            </div>
            <div class="clearfix"></div>
            <div class="col-lg-230 col-md-3 col-sm-4 hidden-xs">
                <div class="row">
                    <div class="content_left content_pape_left">
                        <ul class="list_unstyled_prod">
                            <?php foreach($cate_parent as $cate) : ?>
                            <li>
                                <a href="<?=@$cate->alias.'.html'?>" class="item_main_z"><img class="icon_menu" src="<?=base_url(@$cate->image)?>" alt="<?=@$cate->name;?>"><?=@$cate->name;?> (<?=@$cate->num_pro;?>)</a>
                                <?php if(count($cate_parent_sub)) : ?>
								<ul class="sub_list_unstyled_prod">
									<?php foreach($cate_parent_sub as $cat_sub) :
									if($cat_sub->parent_id == $cate->id) :
									?>
									<li><a href="<?=base_url(@$cat_sub->alias.'.html')?>"><?=@$cat_sub->name;?> (<?=@$cat_sub->num_pro;?>)</a></li>
									<?php endif; endforeach;?>
                                </ul>
								<?php endif;?>
                            </li>
							<?php endforeach;?>
                        </ul>
                        <div class="clearfix clearfix-15"></div>
						<?=@$fillter;?>
						<div class="clearfix clearfix-10"></div>
                        <?=@$home_left;?>
                    </div>
                </div>
            </div>
            <div class="col-lg-770 col-md-9 col-sm-8 col-xs-12">
                <div class="row">
                    <div class="content_right clearfix">
						<h2 class="tit_cate_page margin-top">
                            <a href="<?=base_url('top-100-Selling.html')?>"><?=lang('100banchay');?></a>
                        </h2>
                        <div class="clearfix"></div>
						<div class="row_2_5">
							<?php foreach($lists as $pro) : ?>
                            <div class="col-lg-200 col-md-3 col-sm-4 col-xs-4 col-480-12">
                                <div class="row">
                                    <div class="box_prod_slider_page">
                                       <a class="img_prod_slider_page" href="<?= base_url($pro->alias.'.html') ?>" title="<?= $pro->name; ?>">
											<img class="w_100"  src="<?=base_url('upload/img/products/'.$pro->pro_dir.'/thumbnail_1_'.@$pro->image)?>" alt="<?= $pro->name; ?>"/>
										</a>
                                        <div class="clearfix"></div>
                                        <div class="sub_prod_slider_page">
                                            <h3 class="name_prod_slider_page">
											<a title="<?= $pro->name; ?>" href="<?= base_url($pro->alias.'.html') ?>"><?= $pro->name; ?></a>
											</h3>
                                            <div class="clearfix"></div>
											<div class="author_prod_slider_page"><?= $pro->caption_1; ?></div>
											<div class="clearfix"></div>
											<div class="price_prod_slider_page">
												<span class="price_new">
												<?php if(!empty($pro->price_sale)) : ?><?=number_format($pro->price_sale);?>  ₫<?php else : ?><span class="nb_price_hot" style="color:#444444"><?=lang('contact');?> </span><?php endif;?>
												</span><br>
												<?php if($pro->price > 0 && $pro->price_sale > 0) :?>
												<del class="price_old"><?=number_format($pro->price);?> ₫ </del>
												<?php endif;?>
											</div>
											<?php if($pro->price > 0 && $pro->price_sale > 0) :?>
											<div class="sale">-<?=floor(100-($pro->price_sale/$pro->price)*100)?>%</div>
											<?php endif;?>
											<div class="clearfix"></div>
											<div class="box_hd_prod_page">
												<div class="evaluate_star_page">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													(2 <?=lang('nhanxet');?>)
												</div>
												<div class="clearfix"></div>
												<a href="" class="buy_now_page"><?=lang('book_now');?></a>
											</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
							<?php endforeach;?>
                        </div>
						<div class="col-xs-12">
							<center> <?php echo $this->pagination->create_links();?></center>  
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
		</div>
    </div>
</article>
				