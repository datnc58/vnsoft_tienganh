<!-- file css cho gio hang -->
<link rel="stylesheet" href="<?=base_url()?>assets/css/front_end/order/giohang.css"/>

<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>

<section class="qts_mid_content ">
<div class="container">
    <div class="row">
        <ul class="breadcrumbs-cate">
            <li>
                <a href="<?= base_url()?>" title="trang chủ">Trang chủ</a>
            </li>
            <?= $sBreadcrumbs?>
        </ul>
        <div class="clearfix"></div>
    </div>
</div>
<div class="ct-bg">
<div class="container">
<div class="row_pc">
<div class="col-lg-800 col-md-9">
    <div class="row">
        <div class="detail">
            <div class="col-md-6">
                <div class="slider_detail">
                    <input type="hidden" id="__VIEWxSTATE" />
                    <script src="<?=site_url()?>assets/js/front_end/site/modernizr.custom.js" type="text/javascript"></script>
                    <link href="<?=site_url()?>assets/css/front_end/glasscase.minf195.css" rel="stylesheet" />
                    <ul id='girlstop1' class='gc-start' style="width: 100% !important;">
                        <?php $images = explode(',',trim($pro_first->multi_image)); ?>
                        <li style="width: 100% !important;">
                            <img src="<?=base_url('upload/img/products/'.$pro_first->pro_dir.'/'.$pro_first->image)?>" alt='<?=$pro_first->name;?>' data-gc-caption=""  style="width: 100% !important"/>
                        </li>
                        <?php foreach($images as $km => $image) : ?>
                            <?php if($image !='' && !empty($image)) : ?>
                                <li style="width: 100% !important;">
                                    <img src="<?=base_url('upload/img/products/'.$pro_first->img_dir.'/'.$image)?>" alt='<?=$pro_first->name;?>' data-gc-caption="" style="width: 100% !important"/>
                                </li>
                            <?php endif;?>
                        <?php endforeach;?>
                    </ul>
                    <script src="<?=site_url()?>assets/js/front_end/site/jquery.glasscase.minf195.js"></script>
                    <script type="text/javascript">
                        $(function() {

                            $("#girlstop1").glassCase({
                                'widthDisplay': 436,
                                'heightDisplay': 428,
                                'nrThumbsPerRow': 3,
                                'isSlowZoom': false,
                                'isSlowLens': true,
                                'capZType': 'in',
                                'thumbsPosition': 'bottom',
                                'isHoverShowThumbs': true,
                                'colorIcons': '#000',
                                'colorActiveThumb': '#189ed0',
                                'mouseEnterDisplayCB': function() { $('.pInstructions').text('Click to open expanded view'); },
                                'mouseLeaveDisplayCB': function() { $('.pInstructions').text('Roll over image to zoom in'); }
                            });
                        });

                    </script>
                    <div class="clearfix clearfix-10"></div>
                </div>
            </div>
            <div class="col-lg-6 information-product" id="middleProductView">
                <h1 title="<?= $pro_first->name?>">
                    <?= $pro_first->name?>
                    <span class="prdId"> - <?= $pro_first->code?></span>
                    <sub class="fav" data-pid="3633281">
                        <i class="fa fa-heart-o"></i> Yêu thích
                    </sub>
                </h1>
                <div class="pageView">
                    <p id="voteView0" class="si voteView"> <?= $binhluan_all?> Đánh giá</p>
                </div>
                <?php if ($phantram == 0): ?>
                    <style>
                        .detail #voteView0 {
                            background-position: 0 -329px !important;
                        }
                    </style>
                <?php   elseif ($phantram == 1): ?>
                    <style>
                        .detail #voteView0 {
                            background-position: 0 -295px !important;
                        }
                    </style>
                <?php   elseif ($phantram == 2): ?>
                    <style>
                        .detail #voteView0 {
                            background-position: 0 -264px !important;
                        }
                    </style>
                <?php   elseif ($phantram == 3): ?>
                    <style>
                        .detail #voteView0 {
                            background-position: 0 -280px !important;
                        }
                    </style>
                <?php   elseif ($phantram == 4): ?>
                    <style>
                        .detail #voteView0 {
                            background-position: 0 -295px !important;
                        }
                    </style>
                <?php   elseif ($phantram == 5): ?>
                    <style>
                        .detail #voteView0 {
                            background-position: 0 -312px !important;
                        }
                    </style>
                <?php endif; ?>

                <div class="pageView turns-view"><b style="color: #3c974f"><?= $pro_first->view?></b> Lượt đã xem</div>
                <div class="pageView turns-order"><b style="color:#3388c0"><?= $pro_first->order_qty?></b> Lượt mua thành công</div>
                <div class="clearfix"></div>
                <div class="pd10" style="padding:0 10px">
                    <div class="de-price">
                        <?= number_format($pro_first->price_sale)?>đ
                    </div>
                    <script>
                        $('.pd10').addClass('qweqwe');
                    </script>
                    <?= $pro_first->description?>
                    <div class="clb30"></div>
                    số lượng:
                    <select onchange="thayso()" id="myselect">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                    </select>
                    <script type="text/javascript">
                        function thayso(){
                           var val = $( "#myselect option:selected" ).val();
                           $('#txtQty').val(val);
                        }
                    </script>
<!--                    <div class="clb10"></div>-->
                    <?php if ($pro_first->status  == 1): ?>
                        Tình trạng: còn hàng
                    <?php else: ?>
                        Tình trạng: hết hàng
                    <?php endif; ?>

                    <br>
                    <div class="clb20"></div>
                    <input type="hidden" name="form_key" value="<?=@$form_key;?>">
                    <input type="hidden" name="product" id="item_select_id" value="<?=@$pro_first->id;?>">
                    <input type="hidden" name="txtQty" id="txtQty" value="1">
                    <a  onclick="addToCart()" data-toggle="modal" data-target=".bs-example-modal-cart-now" class="de-buy">
                        <img src="<?= base_url()?>img/i-cart1.png"> Mua Hàng
                    </a>
                    <div class="fl-r">
                        <div class="addthis_toolbox addthis_default_style ">
                            <a class="addthis_button_facebook_like" fb:like:layout="button_count" ></a>
                            <a class="addthis_button_tweet"></a>
                            <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                            <a class="addthis_counter addthis_pill_style"></a>
                        </div>
                        <style>
                            .google_plusone_iframe_widget {
                                width: 35px !important;
                            }
                        </style>
                        <script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=xa-4fbe76dc0e946530"></script>
                    </div>
                    <div class="clb40"></div>
                    <div class="clb40"></div>
                </div>
            </div>
            <div class="clb30"></div>
        </div>
    </div>
</div>
<div class="col-lg-200 col-md-3 hidden-sm hidden-xs">
    <div class="detail-tit">Sản phẩm tương tự</div>
    <?php
   
    foreach ($pros as $pr): ?>
    <div class="prod">
        <a href="<?= base_url($pr->alias)?>" class="h_1" title="<?= $pr->name?>">
            <img src="<?=base_url('upload/img/products/'.$pr->pro_dir.'/thumbnail_1_'.@$pr->image)?>" alt="<?= $pr->name?>">
            <h3><?= $pr->name?></h3>
        </a>
        <div class="prod-price">
            <?= number_format($pr->price_sale)?> VNĐ
            <s><?php if ($pr->price > 0 && $pr->price > $pr->price_sale){
                    echo  number_format($pr->price) .'vnđ';
                }?> </s>
        </div>
        <a href="<?= base_url()?>cart/quick_buy/<?=$pr->id?>" title="<?= $pr->name?>" class="but-buy">
            <img src="<?= base_url()?>img/i-cart1.png" class="wi" alt="<?= $pr->name?>"> Mua hàng</a>
    </div>
    <?php endforeach; ?>
</div>
<div>
    <div class="clb20"></div>
    <div class="col-lg-8001 col-md-9">
        <div class="clearfix"></div>
        <div class="contact">
            <div class="fl-l hidden">
                <div class="clb20"></div>
                <a href="tel:<?= $this->option->hotline1?>" title="<?= $this->option->hotline1?>"><img src="<?= base_url()?>img/de-hl.png" alt="<?= $this->option->hotline1?>"></a>
            </div>
            <div class="fl-r">
                <span style="text-transform: upercase; font-weight: bold">ĐĂNG KÝ NHẬN EMAIL:</span>     
                <br>
                <form class="de-form validate" action="<?= base_url('home/add_email')?>" method="post">
                    <input type="text" name="email" class="validate[required,custom[email]" placeholder="Email...">
                    <button type="submit">Gửi</button>
                </form>
            </div>
        </div>
        <div class="clb40"></div>
        <ul class="nav detail-tabs">
            <li class="active">
                <a data-toggle="pill" href="#home" title="Thông tin chi tiết">Thông tin chi tiết</a>
            </li>
            <li>
                <a data-toggle="pill" href="#menu1" title="Bình luận">Bình luận</a>
            </li>
            <li>
                <a data-toggle="pill" href="#menu2" title="Đánh giá">Đánh giá</a>
            </li>
        </ul>
        <div class="tab-content">
            <div id="home" class="tab-pane fade in active">
                <?php echo $pro_first->content;   ?>
            </div>
            <div id="menu1" class="tab-pane fade">
                <div class="fb-comments" data-href="<?=base_url($pro_first->alias)?>" data-width="100%"
                     data-numposts="100"
                     data-colorscheme="light">

                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <div style="max-height: 300px; overflow-y: scroll; width: 100%" >
                    <?php foreach( $comment as $com): ?>
                        <div class="comment-texts">
                            <?php if ($com->giatri == 5): ?>
                                <div class="review-rating" title="Rated 5 out of 5">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            <?php elseif ($com->giatri == 4): ?>
                                <div class="review-rating" title="Rated 4 out of 5">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            <?php elseif ($com->giatri == 3): ?>
                                <div class="review-rating" title="Rated 3 out of 5">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            <?php elseif ($com->giatri == 2): ?>
                                <div class="review-rating" title="Rated 2 out of 5">
                                    <i class="fa fa-star"></i>
                                    <i class="fa fa-star"></i>
                                </div>
                            <?php elseif ($com->giatri == 1): ?>
                                <div class="review-rating" title="Rated 1 out of 5">
                                    <i class="fa fa-star"></i>
                                </div>
                            <?php endif ;?>
                            <p class="meta">
                                <strong itemprop="author"><?= $com->user_name?></strong> – <time itemprop="datePublished" datetime="<?= $com->date?>"><?= $com->date?></time>
                            </p>
                            <div itemprop="description" class="description"><p><?= $com->comment?></p>
                            </div>
                        </div>
                    <?php endforeach ;?>
                </div>


                <h3>Đánh giá</h3>
                <form action="<?= base_url('products/Add_comment_binhluan')?>">

                    <b>Tên: </b>
                    <input type="text" name="author"  value="" size="30" aria-required="true" required="">

                    <b>Email: </b>
                    <input name="email" type="email" value="" size="30" aria-required="true" required="">

                    <p><b>đánh giá của bạn</b></p>
                    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
                    <!--                        <link rel="stylesheet" href="fontawesome-stars.css">-->
                    <fieldset class="rating" id="rating">
                        <input type="radio" id="star5" name="rating" value="5" onclick="binhluan(5)" />
                        <label class = "full" for="star5" title="Awesome - 5 stars"></label>
                        <input type="radio" id="star4" name="rating" value="4" onclick="binhluan(4)" />
                        <label class = "full" for="star4" title="Pretty good - 4 stars"></label>
                        <input type="radio" id="star3" name="rating" value="3" onclick="binhluan(3)" />
                        <label class = "full" for="star3" title="Meh - 3 stars"></label>
                        <input type="radio" id="star2" name="rating" value="2" onclick="binhluan(2)" />
                        <label class = "full" for="star2" title="Kinda bad - 2 stars"></label>
                        <input type="radio" id="star1" name="rating" value="1" onclick="binhluan(1)" />
                        <label class = "full" for="star1" title="Sucks big time - 1 star"></label>
                    </fieldset>
                    <div class="clearfix"></div>
                    <br>
                    <textarea rows="5" cols="80" name="comment" cols="45" rows="8" aria-required="true" required=""> </textarea>
                    <br>
                    <input name="submit" type="submit" id="submit" class="submit" value="Gửi đi" onclick="binhluan()" >
                    <input type="hidden" name="comment_post_ID" value="<?=$pro_first->id?>" id="comment_post_ID">
                    <input type="hidden" name="comment_parent" id="comment_parent"  value="">
                </form>
            </div>
        </div>
        <div class="but-group">
            <a href="<?= base_url()?>cart/quick_buy/<?=$pro_first->id?>" class="but-buy" title="<?=$pro_first->name; ?>"><img src="<?= base_url()?>img/i-cart1.png" title="<?=$pro_first->name; ?>">Mua hàng</a>
            <a href="" class="but-buy">xem thêm nhãn sản phẩm</a>
            <a href="" class="but-buy">Ý kiến người đã dùng</a>
            <a href="tel:<?= $this->option->hotline1?>" class="hidden"><img src="<?= base_url()?>img/de-hl.png"></a>
        </div>
        <div class="fb-comment">
            <div class="detail-tit">Bình luận</div>
            <div class="fb-comments" data-href="<?=base_url($pro_first->alias)?>" data-width="100%"
                 data-numposts="100"
                 data-colorscheme="light">

            </div>
        </div>
    </div>
    <div class="col-lg-2001 col-md-3 hidden-sm hidden-xs">
        <div class="hoidap">
            <div class="hd-tit hidden">Hỏi đáp</div>
            <ul class="aq-box">
                <?php foreach ($lists as $lists): ?>
                <li class="dropdowne">
                    <p>
                        <?= $lists->name?>
                        <span class="time">
                            <span class="fl-l">câu hỏi:Admin</span>
                            <span class="fl-r">Ngày:<?= date('d-m-Y',$lists->time)?></span>
                            <span class="clearfix"></span>
                        </span>
                    </p>
                    <ul class="dropdown-content">
                        <?php $i=0; foreach ($lists->cate as $cat): $i++; ?>
                        <li>
                            <span class="tit">
                                Câu trả lời:
                            </span>
                            <span class="as">
                                <?= $i;?>. <?= $cat->name?>
                            </span>
                        </li>
                        <?php endforeach; ?>
                    </ul>
                </li>
                <?php endforeach; ?>

            </ul>
        </div>
    </div>
</div>
<div class="clb20"></div>
<div class="lienquan">
    <div class="detail-tit">Sản phẩm Bạn vừa xem</div>
    <div class="m-100">
        <?php  if(count($_SESSION['daxemsp'])> 0){ foreach ($_SESSION['daxemsp'] as $v) {?>
        <div class="col-lg-200 col-md-4 col-xs-6 p100">
            <div class="prod">
                <a href="<?= base_url(@$v['alias'])?>" title="<?= @$v['name']?>" class="h_11">
                    <img src="<?= @$v['image']?>" class="w_100" alt="<?= @$v['name']?>" style="height: 100px !important;">
                    <h3><?= @$v['name']?></h3>
                </a>
                <div class="prod-price">
                    <?= number_format(  @$v['price_sale'])?> VNĐ
                    <?php if ($v['price'] > 0): ?>
                    <s><?= number_format(  @$v['price'])?> VNĐ</s>
                    <?php endif; ?>
                </div>
                <a href="<?= base_url()?>cart/quick_buy/<?=@$v['id']?>" title="<?= @$v['name']?>" class="but-buy">
                    <img src="<?= base_url()?>img/i-cart1.png" class="wi" alt="<?= @$v['name']?>"> Mua hàng</a>
            </div>
        </div>
        <?php }} ?>
    </div>
</div>
<div class="clb40"></div>
<div class="clb40"></div>
</div>
</div>
</div>
</section>
</div>
</div>


<script type="text/javascript">


    function formatNumber (num) {
        return num.toString().replace(/(\d)(?=(\d{3})+(?!\d))/g, "$1,")
    }
    function binhluan(dem){
        $('#comment_parent').val(dem)
        //alert(dem);
    }

</script>

<style>
    @import url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

    fieldset, label { margin: 0; padding: 0; }
    h1 { font-size: 1.5em; margin: 10px; }
    .rating {
        border: none;
        float: left;
    }
    .rating > input {
        display: none !important;
    }
    .comment-texts {
        margin: 0 0 0 0px;
        border: 1px solid #e4e1e3;
        border-radius: 4px;
        padding: 1em 1em 0;
    }

    .rating > input { display: none; }
    .rating > label:before {
        margin: 5px;
        font-size: 1.25em;
        font-family: FontAwesome;
        display: inline-block;
        content: "\f005";
    }
    .fa-star:before {
        content: "\f005";
    }

    .rating > .half:before {
        content: "\f089";
        position: absolute;
    }

    .rating > label {
        color: #ddd;
        float: right;
    }
    i.fa.fa-star {
        color: #FFED85;
    }

        /***** CSS Magic to Highlight Stars on Hover *****/

    .rating > input:checked ~ label, /* show gold star when clicked */
    .rating:not(:checked) > label:hover, /* hover current star */
    .rating:not(:checked) > label:hover ~ label { color: #FFD700;  } /* hover previous stars in list */

    .rating > input:checked + label:hover, /* hover current star when changing rating */
    .rating > input:checked ~ label:hover,
    .rating > label:hover ~ input:checked ~ label, /* lighten current selection */
    .rating > input:checked ~ label:hover ~ label { color: #FFED85;  }


    .comment-texts {
        margin: 0 0 0 0px;
        border: 1px solid #e4e1e3;
        border-radius: 4px;
        padding: 1em 1em 0;
        margin: 5px 0px;
    }
    .rank{
        font-size: 12px;
        color: #999;
        text-align: center;
        line-height: 18px;
    }
</style>