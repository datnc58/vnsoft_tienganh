
<div id="data_product">

    <div class="filter_cate">
        <div class="row">
            <div class="col-md-3 col-sm-12 col-xs-12">
                <ul class="display_type">
                    <li class="active"><a href="" class="fa fa-th"></a></li>
                    <li><a href="" class="fa fa-th-list hidden"></a></li>
                </ul>
            </div>
            <div class="col-md-6 col-sm-6 col-xs-6 col-480-12">
                <div class="input-group input_sx_filter">
                    <span class="input-group-addon"><?= lang('sorted_by')?></span>
                    <select class="form-control" id="limit" onchange="product_3()">

                        <option value="price_asc" <?php if ($orders == 'price_asc'){echo 'selected="selected"';}?> ><?= lang('price_asc')?></option>
                        <option value="price_des" <?php if ($orders == 'price_des'){echo 'selected="selected"';}?>><?= lang('price_des')?></option>
                        <option value="name_asc" <?php if ($orders == 'name_asc'){echo 'selected="selected"';}?>><?= lang('name_asc')?></option>
                        <option value="name_des" <?php if ($orders == 'name_des'){echo 'selected="selected"';}?>><?= lang('name_des')?></option>
                    </select>

                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-480-12">
                <div class="input-group input_ht_filter">
                    <span class="input-group-addon"><?= lang('display')?></span>
                    <select class="form-control" id="orders" onchange="product_3()">
                        <option value="1000" <?php if ($limit == 1000){echo 'selected="selected"';}?>>All</option>
                        <option value="8" <?php if ($limit == 8){echo 'selected="selected"';}?>>8</option>
                        <option value="12" <?php if ($limit == 12){echo 'selected="selected"';}?>>12</option>
                        <option value="16" <?php if ($limit == 16){echo 'selected="selected"';}?>>16</option>
                        <option value="20" <?php if ($limit == 20){echo 'selected="selected"';}?>>20</option>
                        <option value="24" <?php if ($limit == 24){echo 'selected="selected"';}?>>24</option>
                        <option value="28" <?php if ($limit == 28){echo 'selected="selected"';}?>>28</option>
                        <option value="32" <?php if ($limit == 32){echo 'selected="selected"';}?>>32</option>
                    </select>
                </div>
            </div>
        </div>

    </div>
    <div class="clearfix clearfix-30"></div>

    <div class="clearfix"></div>
    <div class="list_prod_cate">
        <div class="row">
            <?php foreach ($lists as $pro): ?>
                <div class="col-md-4 col-sm-4 col-xs-6 col-480-12">
                    <div class="box_prod">
                        <div class="box_img_prod">
                            <a href="<?= base_url($pro->pro_alias.'.html')?>" class="img_prod h_107407"><img class="w_100" src="<?= base_url('upload/img/products/'.$pro->pro_dir.'/'.@$pro->pro_img)?>" alt=""/></a>
                            <div class="clearfix"></div>
                            <h3 class="name_prod"><a href="<?= base_url($pro->pro_alias.'.html')?>"><?=$pro->pro_name?></a></h3>
                        </div>
                        <div class="clearfix"></div>
                        <?php
                        $giacu = $pro->price;
                        $moi = $pro->price_sale;
                        if ($giacu > $moi && $giacu > 0){
                            $phantram = (($giacu - $moi)/$moi)*100;
                        }
                        else{
                            $phantram = 0;
                        }
                        ?>
                        <div class="sub_prod">
                            <del class="price_old_prod hidden"><?= number_format($pro->price)?> VNĐ</del>
                            <div class="clearfix hidden"></div>
                            <div class="price_new_prod hidden"><?= number_format($pro->price_sale)?> VNĐ</div>
                            <div class="clearfix clearfix-10"></div>
                            <?php if ($phantram > 0): ?>
                                <div class="sale_view">
                                    <span class="sale_prod"><?= lang('sale')?> -<?= $phantram?>%</span>
                                    <a href="<?= base_url($pro->pro_alias.'.html')?>" class="view_prod"><?= lang('xemct')?> <i class="fa fa-angle-right"></i></a>
                                </div>
                            <?php else: ?>
                                <div class="sale_view">
                                    <a href="<?= base_url($pro->pro_alias.'.html')?>" class="view_prod" style="width: 100%"><?= lang('xemct')?> <i class="fa fa-angle-right"></i></a>
                                </div>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>

        </div>

        <div class="clearfix"></div>
        <div class="text-center">

            <?php echo $this->pagination->create_links();?>
        </div>
    </div>
</div>

