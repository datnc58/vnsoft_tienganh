<script type="text/javascript">
    $('.menu-content').removeClass('open');
</script>
<section class="qts_mid_content clearfix">
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
    <div class="container">
        <div class="row_pc">

            <div class="clearfix clearfix-20"></div>
            <?php
            $map_title = '';
            $map_phone = '';
            $map_adrdress = '';
            if($this->option->map_title !=''){
                $map_title = '<div class="map_title"><b>'.$this->option->map_title.'</b></div>';
            }
            if($this->option->map_adrdress !=''){
                $map_adrdress = '<div><b>'.lang('diachi').': </b>'.$this->option->map_adrdress.'</div>';
            }

            if($this->option->map_phone !=''){
                $map_phone = '<div><b>'.lang('phone').': </b>'.$this->option->map_phone.'</div>';
            }
            $hien_map = "'".$map_title.''.$map_adrdress.''.$map_phone."'";
            ?>

            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

            <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD1w21tUvxObGqTgv2fKillyxFfQxICJbs&language=vi"></script>



            <script type="text/javascript">
                var map;
                var infowindow;
                var marker = new Array();
                var old_id = 0;
                var infoWindowArray = new Array();
                var infowindow_array = new Array();

                function initialize() {
                    var defaultLatLng = new google.maps.LatLng<?=$this->option->hdfMap;?>;
                    var myOptions = {zoom: 15, center: defaultLatLng, scrollwheel: false, mapTypeId: google.maps.MapTypeId.ROADMAP };
                    map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
                    map.setCenter(defaultLatLng);
                    var arrLatLng = new google.maps.LatLng<?=$this->option->hdfMap;?>;
                    infoWindowArray[10349] = <?=$hien_map;?>;
                    loadMarker(arrLatLng, infoWindowArray[10349], 10349);
                    moveToMaker(10349);
                }
                function loadMarker(myLocation, myInfoWindow, id) {
                    marker[id] = new google.maps.Marker({position: myLocation, map: map, visible: true});
                    var popup = myInfoWindow;
                    infowindow_array[id] = new google.maps.InfoWindow({ content: popup});
                    google.maps.event.addListener(marker[id], 'mouseover', function () {
                        if (id == old_id) return;
                        if (old_id > 0) infowindow_array[old_id].close();
                        infowindow_array[id].open(map, marker[id]);
                        old_id = id;
                    });
                    google.maps.event.addListener(infowindow_array[id], 'closeclick', function () {
                        old_id = 0;
                    });
                }

                function moveToMaker(id) {
                    var location = marker[id].position;
                    map.setCenter(location);
                    if (old_id > 0) infowindow_array[old_id].close();
                    infowindow_array[id].open(map, marker[id]);
                    old_id = id;
                }
            </script>
            <style type="text/css">
                body {
                    margin: 0;
                    padding: 0;
                }
            </style>
            <body onLoad="initialize()" onUnload="GUnload()">
            <div id="map_canvas" style="width:100%; height: 400px"></div>

            <div class="clearfix clearfix-30"></div>
            <div class="header_prod_detail">
                <div class="row_15">

                    <div class="col-md-6">
                        <h3 class='tit_news'><a href="" ><?=lang('lhvct');?></a></h3>
                        <form action="" id="register_user_frm" method="post" class="validate form-register"  role="form">
                            <div class="row">
                                <div class="col-md-12">
                                    <div>
                                        <input type="text" name="full_name" id="name" class="validate[required] form-control" placeholder="<?=lang('name');?>">
                                    </div>
                                    <div>
                                        <input type="text" name="email" id="email" class="validate[required, custom[email]] form-control" placeholder="Email">
                                    </div>
                                    <div>
                                        <input type="text" name="phone" id="phone" class="validate[required, custom[phone]] form-control" placeholder="<?=lang('phone');?>">
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div>
                                        <textarea name="message" id="message" class="validate[required] form-control" placeholder="<?=lang('ghichu');?>"></textarea>
                                    </div>
                                </div>



                                <div class="col-md-6 col-sm-6">
                                    <div style="position: relative; margin-top: 5px">
                                        <div id="error_captcha" class="text-danger"></div>
                                    </div>
                                    <input type="text" placeholder="..." class="form-control" name="captcha_user" id="captcha_user">

                                </div>
                                <img src="<?php echo base_url().$imageCaptchaPostAds; ?>" width="160" height="40"  style="margin-top: 5px"/>
                                <input type="hidden" id="captcha_check" value="<?=@$captcha_check;?>">

                                <div class="col-md-12">
                                    <p id="submit" >
                                        <input type="button" name="sendcontact" id="signupuser" value="<?=lang('guidi');?>" class="btn btn-line">
                                    </p>
                                </div>


                            </div>
                        </form>
                    </div>
                    <div id="sidebar" class="col-md-6">
                        <div class="widget widget_text">
                            <h3 class='tit_news'><a href="" ><?=lang('ttlh');?></a></h3>
                            <address>
                                <span><strong><?= lang('diachi')?>: </strong><?=$this->option->address;?></span>
                                <span><strong>Phone:</strong><?=$this->option->hotline1;?></span>
                                <!--                        <span><strong>Fax:</strong>(208) 333 9298</span>-->
                                <span><strong>Email: </strong><a href="mailto:<?=$this->option->site_email;?>"><?=$this->option->site_email;?></a></span>
                                <span><strong>Web: </strong><a href="#test"><?=base_url()?></a></span>
                                <span><strong>Open </strong>Sunday - Friday 08:00 - 18:00</span>
                            </address>
                        </div>
                    </div>

                </div>
            </div>

            <div class="clearfix clearfix-30"></div>




        </div>
    </div>
</section>


<style>
    .tit_news{
        font-size: 13px;
        font-weight: bold;
        color: #333;
        border-bottom: 1px dashed #eaeaea;
        text-transform: uppercase;
        padding: 10px 0;
    }

    .title-service {
        margin: 15px 0px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }
    #sidebar .widget address span {
        border-bottom: solid 1px #ddd;
    }
    address span {
        display: block;
        border-bottom: solid 1px #222;
        padding-bottom: 5px;
        margin-bottom: 5px;
        font-weight: 300;
    }
    a.btn-line:hover, btn-line:hover, address span strong {
        color: #006df0;
    }
    .form-contact .form-horizontal .form-group{
        margin-left:0px;
        margin-right:0px;
    }
    #register_user_frm input[type=text], #send_message textarea, #send_message input[type=email], #search {
        border: solid 1px #ddd;
        background: #f5f5f5;
        color: #333 !important;
        padding: 10px;
        margin-bottom: 5px;
        border-radius: 0 !important;
        height: auto;
    }
    #register_user_frm textarea {
        height: 100px;
    }
</style>

<script type="text/javascript">
    $(document).ready(function(){
        $('#signupuser').click(function(event ){
            event.preventDefault();
            $('#error_captcha').empty();
            jQuery('#register_user_frm').validationEngine({ focusFirstField: true });
            var valid = jQuery("#register_user_frm").validationEngine('validate');
            if(valid){
                $.ajax({
                    type: "POST",
                    dataType: "json",
                    url: base_url() + 'captchacode/checkCaptchaUser',
                    data: {code_captcha:$('#captcha_user').val(),captcha_check:$('#captcha_check').val()},
                    success: function (result) {
                        if(result.check){
                            //alert(result.check);
                            //document.form_u_register.submit();
                            $('#register_user_frm').submit();
                        }else{
                            $('#error_captcha').html(result.ms);
                        }
                    }
                })
            }
        });
    })
</script>


