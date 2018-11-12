/**
 * Created by Administrator on 22/09/2018.
 */
var wpdiscuzReplyButton = '';
$(document).ready(function() {
    $('#wc-comment-click').click(function() {
        $('.wc-form-footer').css('display', 'block');
    });

    $('#reply-parent').click(function() {
        var id = $('#com_id').val();
        var parent = $('#com_parent_id').val();
        console.log('wc-secondary-form-wrapper-' + id + '-' + parent);
        $('#wc-secondary-form-wrapper-' + id + '-' + parent).css('display', 'block');
    });
});
$(document).delegate('.wc-toggle', 'click', function () {
    var uniqueID = getUniqueID($(this), 0);
    var toggleSpan = $(this);
    $('#wc-comm-' + uniqueID + '> .wc-reply').slideToggle(700, function () {
        if ($(this).is(':hidden')) {
            toggleSpan.html('<i class="fa fa-chevron-down" aria-hidden="true"></i>');
        } else {
            toggleSpan.html('<i class="fa fa-chevron-up" aria-hidden="true"></i>');
        }
    });
});
function getUniqueID(field, isMain) {
    var fieldID = '';
    if (isMain) {
        fieldID = field.parents('.wc-main-form-wrapper').attr('id');
    } else {
        fieldID = field.parents('.wc-comment').attr('id');
    }
    var uniqueID = fieldID.substring(fieldID.lastIndexOf('-') + 1);
    return uniqueID;
}

$(document).ready(function() {
    var owl = $('.slider_home3');
    owl.owlCarousel({
        items: 3,
        loop: false,
        margin: 40,
        nav:true,
        autoplay: false,
        lazyLoad: false,
        animateIn: 'fadeIn',
        animateOut: 'fadeOut',
        autoplayTimeout: 3000,
        smartSpeed: 1000,
        autoplayHoverPause: false,
        responsive:{
            1199:{
                items:3
            },
            979:{
                items:3
            },
            768:{
                items:2
            },
            479:{
                items:1
            },
            100:{
                items:1
            }
        }
    });
});