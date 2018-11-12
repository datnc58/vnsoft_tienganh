$(function() {
    render_size();
    var url = window.location.href;
    $('.menu-item  a[href="' + url + '"]').parent().addClass('active');
});

$(window).resize(function() {
    render_size();
});



function render_size() {
    // prod


    var h_8585 = Math.ceil($('.h_8585 img').width());
    $('.h_8585 img').height(Math.ceil(0.8585 * parseInt(h_8585)));

    var h_1 = $('.h_1 img').width();
    $('.h_1 img').height(Math.ceil(1.0426 * parseInt(h_1)));

    var h_11= $('.h_11 img').width();
    $('.h_11 img').height(Math.ceil(1.0426 * parseInt(h_11)));


    // var h_6730 = $('.h_6730 img').width();
    // $('.h_6730 img').height(Math.ceil(0.6730 * parseInt(h_6730)));

    // var h_5135 = $('.h_5135 img').width();
    // $('.h_5135 img').height(Math.ceil(0.5135 * parseInt(h_5135)));

    // var h_6871 = $('.h_6871 img').width();
    // $('.h_6871 img').height(Math.ceil(0.6871 * parseInt(h_6871)));


}
