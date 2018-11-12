
<article id="body_home">

    <?= $slide?>

    <div class="clearfix"></div>

    <section class="sc_send_home1 clearfix">
        <div class="container">
            <div class="row_pc">

                <div class="group_send_home1 clearfix">
                    <h2 class="tit_gr_sh wow fadeInRight">TIẾNG ANH XUẤT SẮC – VỮNG CHẮC TƯƠNG LAI</h2>
                    <div class="clearfix"></div>
                    <div class="des_tit_grsh wow fadeInLeftBig">HÃY ĐỂ EFA HIỆN THỰC HÓA GIẤC MƠ CỦA CON BẠN</div>
                    <div class="clearfix clearfix-15"></div>
                    <form class="form_send_grsh clearfix">
                        <div class="row_8">
                            <div class="col-lg-350 col-xs-4 col-480-12">
                                <div class="row_7">
                                    <input type="text" class="input_number_grsh wow fadeInUp" value placeholder="Số điện thoại">
                                </div>
                            </div>
                            <div class="col-lg-350 col-xs-4 col-480-12">
                                <div class="row_7">
                                    <select class="select_grsh wow fadeInUp" required aria-invalid="false">
                                        <option value="-1">-- Chọn trung tâm --</option>
                                        <option value="AMA Trương Định">AMA Trương Định</option>
                                        <option value="AMA Trương Định">AMA Trương Định</option>
                                        <option value="AMA Trương Định">AMA Trương Định</option>
                                        <option value="AMA Trương Định">AMA Trương Định</option>
                                        <option value="AMA Trương Định">AMA Trương Định</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-300 col-xs-4 col-480-12">
                                <div class="row_7">
                                    <button class="button_grsh wow fadeInUp">Nhận thông tin</button>
                                </div>
                            </div>

                        </div>
                    </form>
                </div>

            </div>
        </div>
    </section>


    <div class="clearfix"></div>

    <?= $cat_product_home?>
    <?= $blknews_nb?>


    <div class="clearfix"></div>

    <section class="sc_dk_bot clearfix">
        <div class="container">
            <div class="row_pc">

                <div class="col-sm-6 hidden-xs">
                    <div class="clearfix clearfix-25"></div>
                    <div class="avt_dk wow fadeInRightBig">
                        <figure class="img_avt_dk h_1_avt"><img class="w_100" src="<?=site_url()?>assets/css/img/avt_dk.png" alt=""/></figure>
                    </div>
                </div>
                <div class="col-sm-6 col-xs-12">
                    <form class="box_dk_bot clearfix" action="<?= base_url('contact')?>" method="post" role="form">
                        <div class="text-center">
                            <i class="icon_dk_bot fa fa-pencil-square-o"></i>
                        </div>
                        <div class="clearfix clearfix-55"></div>
                        <h2 class="tit_dk_bot">ĐĂNG KÝ TƯ VẤN</h2>
                        <div class="clearfix clearfix-40"></div>
                        <div class="des_tit_dk_bot">
                            Vui lòng điền đầy đủ thông tin, chuyên viên tư vấn của AMA sẽ liên lạc với bạn trong vòng 24 giờ.
                        </div>
                        <div class="clearfix clearfix-35"></div>

                        <div class="list_input_dk_bot">
                            <div class="row_7">
                                <div class="col-sm-6 col-xs-12">
                                    <div class="row_8">
                                        <input type="text" name="full_name" class="input_dk_bot wow fadeInUp " value="" placeholder="Họ tên học viên">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="row_8">
                                        <input type="text" class="input_dk_bot wow fadeInUp " value="" placeholder="Ngày / Tháng / Năm sinh học viên">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="row_8">
                                        <input type="text" class="input_dk_bot wow fadeInUp " value="" placeholder="Họ tên phụ huynh">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="row_8">
                                        <input name="phone"  type="text" class="input_dk_bot wow fadeInUp " value="" placeholder="Điện thoại">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="row_8">
                                        <input name="email" type="text" class="input_dk_bot wow fadeInUp " value="" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-sm-6 col-xs-12">
                                    <div class="row_8">
                                        <input type="text" class="input_dk_bot wow fadeInUp " value="" placeholder="Chi nhanh EFA">
                                    </div>
                                </div>
                            </div>
                            <input type="text" class="input_dk_bot" value="" placeholder="Khóa học quan tâm">
                        </div>

                        <div class="text-center">
                            <input name="sendcontact" type="submit" class="send_dk_bot wow fadeInDownBig" value="Đăng ký ngay">
                        </div>

                    </form>
                </div>

            </div>
        </div>
    </section>

</article>