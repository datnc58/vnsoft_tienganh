//13 /10 2015

function getXMLHTTP() { //fuction to return the xml http object
    var xmlhttp = false;
    try {
        xmlhttp = new XMLHttpRequest();
    }
    catch (e) {
        try {
            xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        catch (e) {
            try {
                xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
            }
            catch (e1) {
                xmlhttp = false;
            }
        }
    }

    return xmlhttp;
}


function send_comment(sender){
    var comment=$('#'+sender.attr('data-content')).val();
    var id_reply= sender.attr('data-reply');
    $('#loading2').show();
    $('#product_comments').empty();
    $(sender).attr('disabled','disabled');
    var baseurl=$('#baseurl').val();
    $.ajax({
        type: "POST",
        dataType: "json",
        url: baseurl + 'products/send_comment',
        data: {id_pro:sender.attr('data-items'),comment:comment,id_reply:id_reply},
        success: function (result) {
            setInterval(show_comment('#btn_sent'), 2000);
        }
    })
}

function send_reply(sender){
    var comment=$('#'+sender.attr('data-content')).val();
    var id_reply= sender.attr('data-reply');
    $('#loading2').show();
    $('#product_comments').empty();
    $(sender).attr('disabled','disabled');
    var baseurl=$('#baseurl').val();
    $.ajax({
        type: "POST",
        dataType: "json",
        url: baseurl + 'products/send_comment',
        data: {id_pro:sender.attr('data-items'),comment:comment,id_reply:id_reply},
        success: function (result) {
            setInterval(show_comment('#btn_sent'), 2000);
        }
    })
}

function send_comment_binhluan(id){
    var comment = $("#comment").val();
    var giatri = $('#input-21b').val();
    var name_users = $("#name_users").val();
    var email_users = $("#email_users").val();
    var baseurl=$('#baseurl').val();
    $.ajax({
        type: "POST",
        url: baseurl +"products/Add_comment_binhluan",
        data: "comment=" + comment + "&name_users=" + name_users + "&email_users=" + email_users +  "&giatri=" + giatri+  "&id=" + id,
        success: function (ketqua) {
            $("#hienthidanhgia").show();
            $("#vietbinhluan").hide();
            document.getElementById('comment').value = '';
            document.getElementById('input-21b').value = 0;
            var t='<div class="alert alert-success alert-dismissible alert-ml" role="alert"\
                    style="position: absolute;right: 40px;top:0px;width:250px; padding: 15px 5px; ">\
                        Bạn đã gửi bình luận thành công !\
                    </div>';
            $('#show_added').html(t);
            setTimeout(function(){
                $('#show_added').empty();
            }, 5000)
        }
    })
}


function show_reply(divid){
    $('#'+divid).show();
    $('#'+divid+' textarea').focus();
}

function blur_comments(divid,sender){
    if(sender.val()==''){
        $('#'+divid).hide();
    }else{
        return false;
    }
}
function check_login(){
    $('#btn_sent').click();
}


function messs () {
    setTimeout(show_mss, 2000)
}
function show_mss() {

}


$(document).ready(function(){
    $("#hienthidanhgia").show();
    $("#vietbinhluan").hide();
    //shownhaplo();

});
function cho_bl(){
    $("#hienthidanhgia").hide();
    $("#vietbinhluan").show();
}
function bo_binhluan(){
    $("#hienthidanhgia").show();
    $("#vietbinhluan").hide();
}






/*star*/
jQuery(document).ready(function () {
    $("#input-21f").rating({
        starCaptions: function(val) {
            if (val < 3) {
                return val;
            } else {
                return 'high';
            }
        },
        starCaptionClasses: function(val) {
            if (val < 3) {
                return 'label label-danger';
            } else {
                return 'label label-success';
            }
        },
        hoverOnClear: false
    });
    $('#rating-input').rating({
        min: 0,
        max: 5,
        step: 1,
        size: 'lg',
        showClear: false
    });

    $('#btn-rating-input').on('click', function() {
        $('#rating-input').rating('refresh', {
            showClear:true,
            disabled:true
        });
    });


    $('.btn-danger').on('click', function() {
        $("#kartik").rating('destroy');
    });

    $('.btn-success').on('click', function() {
        $("#kartik").rating('create');
    });

    $('#input-21b').on('rating.change', function() {
        //alert($('#input-21b').val());
    });


    $('.rb-rating').rating({'showCaption':true, 'stars':'3', 'min':'0', 'max':'3', 'step':'1', 'size':'xs', 'starCaptions': {0:'status:nix', 1:'status:wackelt', 2:'status:geht', 3:'status:laeuft'}});
});

