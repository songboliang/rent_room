$(function () {
    //当前房间点击
    $('.room-info-firend table tr').click(function () {
        if ($(this).find('a').length > 0) {
            window.location.href = $(this).find('a').attr('href');
        }
    });

    $(".scroll-to-wechat>a").hover(function () {
        $("#mark-info").show();
    }, function () {
        $("#mark-info").hide();
    })
    $(".floatingLayer b").on("click", function () {
        $(".floatingLayer").fadeOut(1000);
    })

    $('[id^=carousel-selector-]').click(function () {
        var id_selector = $(this).attr("id"),
            id = parseInt(id_selector.substr(id_selector.length - 1)),
            left = parseInt($('.list-inline').css('margin-left'));
        $('#myCarousel').carousel(id);
        $('[id^=carousel-selector-]').removeClass('selected');
        $(this).addClass('selected');
        if (id * 107 + left >= 428 && id != $('.list-inline li').length - 1) {
            $('.list-inline').stop().animate({'margin-left': left - 107}, 300);
        }
        if (id * 107 + left == 0 && id != 0) {
            $('.list-inline').stop().animate({'margin-left': left + 107}, 300);
        }
    });

    $('#myCarousel').on('slid', function (e) {
        var id = $('.item.active').data('slide-number');
        id = parseInt(id);
        $('[id^=carousel-selector-]').removeClass('selected');
        $('[id=carousel-selector-' + id + ']').addClass('selected');
    });

    //自适应
    $('.list-inline').css('width', $('.list-inline').children('li').length * 107);
    if ($('.list-inline').children('li').length * 107 > 540) {
        $('.iconrightbox').addClass('on');
    }
    var iconwidth = 540;
    //small pic next
    $('.iconrightbox').click(function () {
        var left = parseInt($('.list-inline').css('margin-left'));
        var wid = $('.list-inline').width();
        if (left + wid > iconwidth) {
            $('.list-inline').stop().animate({'margin-left': left - 107}, 300);
            $('.carousel-control.right').click();
        }
        if (left + wid > iconwidth + 107) {
            $('.iconleftbox').addClass('on');
            $('.carousel-control.right').click();
        } else {
            $('.iconrightbox').removeClass('on');
        }
    });
    //small pic prev
    $('.iconleftbox').click(function () {
        var left = parseInt($('.list-inline').css('margin-left'));
        if (left < 0) {
            $('.list-inline').stop().animate({'margin-left': left + 107}, 300);
            $('.carousel-control.left').click();
        }
        if (left < -107) {
            $('.iconrightbox').addClass('on');
            $('.carousel-control.left').click()
        } else {
            $('.iconleftbox').removeClass('on')
        }
    });
    //next
    $('.carousel-control.right').stop().click(function () {
        var i = 0,
            left = parseInt($('.list-inline').css('margin-left'));
        $('.carousel-inner .item').each(function () {
            if ($(this).hasClass('active')) {
                i = $(this).index();
            }
        });
        if ($('.list-inline li').length > 5) {
            if (i > 2 && i < $('.carousel-inner .item').length - 2) {
                $('.list-inline').stop().animate({'margin-left': left - 107}, 300);
            }
            if (i > $('.carousel-inner .item').length - 2) {
                i = -1;
                $('.list-inline').stop().animate({'margin-left': 0}, 300)
            }
        }
        $('.list-inline li a').removeClass('selected');
        $('.list-inline li').eq(i + 1).find('a').addClass('selected')
    });
    //prve
    $('.carousel-control.left').stop().click(function () {
        var i = 0,
            left = parseInt($('.list-inline').css('margin-left'));
        $('.carousel-inner .item').each(function () {
            if ($(this).hasClass('active')) {
                i = $(this).index();
            }
        });
        if ($('.list-inline li').length > 5) {
            if (214 - parseInt($('.list-inline').css('margin-left')) > i * 107) {
                if (parseInt($('.list-inline').css('margin-left')) > 0) {
                    $('.list-inline').stop().animate({'margin-left': 0}, 300)
                } else {
                    $('.list-inline').stop().animate({'margin-left': left + 107}, 300);
                }
            }
            if (i < 0) {
                i = $('.carousel-inner .item').length;
            }
            if (i == 0) {
                $('.list-inline').stop().animate({'margin-left': 540 - parseInt($('.list-inline').width())}, 300)
            }
        }
        $('.list-inline li a').removeClass('selected');
        $('.list-inline li').eq(i - 1).find('a').addClass('selected');
    });
    //右侧浮层
    scrollRight();
    $(window).scroll(function () {
        scrollRight();
    });
    //押金
    $('.roompriceno').click(function () {
        $('.yajinbox').show();
        $('.sevicepricebox,.monthpaybox,.repairpricebox').hide()
    });
    $('.yajinbox .outbox-title p,.sevicepricebox .outbox-title p,.monthpaybox .outbox-title p,.repairpricebox .outbox-title p').click(function () {
        $('.yajinbox,.sevicepricebox,.monthpaybox,.repairpricebox').hide();
    });
    //服务费
    $('.serviceplus').click(function () {
        $('.yajinbox,.monthpaybox,.repairpricebox').hide();
        $('.sevicepricebox').show()
    });
    //维修金
    $('.serviceplus2').click(function () {
        $('.yajinbox,.monthpaybox,.sevicepricebox').hide();
        $('.repairpricebox').show()
    });
    //分期月付
    if (!$('.monthpaybox').hasClass('month')) {
        $('.room_center.price th').eq(4).css({
            'cursor': 'pointer',
            'color': '#3DBCC6',
            'text-decoration': 'underline'
        }).click(function () {
            $('.yajinbox,.sevicepricebox,.repairpricebox').hide();
            $('.monthpaybox').show();
        });
    }
    //查看地图
    $('.map-link-title').click(function () {
        var Top = $('.room-map').offset().top - 55;
        $('body,html').stop().animate({scrollTop: Top}, 300);
        mapLoad();
    });
    var roomId = $('#public-room-id').val();
    $.get('/room/guessroom/' + roomId, function (data) {
        $.each(data, function (idx, item) {
            $('.lk_room_box').append('<dl>' +
                '<dt>' +
                '<a href="' + item.link + '">' +
                '<img src="' + item.pic + '" width="300"' +
                'title="' + item.address + '"' +
                'alt="' + item.address + '图片"/>' +
                '</a>' +
                '</dt>' +
                '<dd>' +
                '<a href="' + item.link + '" target="_blank" title="' + item.address + '">' + item.address + '</a>' +
                '<p>' + item.price + '<b>元/月</b></p>' +
                '</dd>' +
                '</dl>');
        })
    });
    //3D全景看房
    $('.panorama-room').hover(function () {
        $(this).addClass('on');
    }, function () {
        $(this).removeClass('on');
    }).click(function () {
        var url = $(this).attr('url');
        var ohtml = $('<div class="append-iframe-3d"><div class="iframebg-3d"></div><a href="javascript:void(0)"></a>' +
            '<iframe src="' + url + '"></iframe><b></b></div>');
        $('body').append(ohtml);
        IframeRemove();
    })
    //付款方式
    $('.room-price-sale i').click(function () {
        var scrollnum = $('.room-price-method').offset().top;
        $('body,html').stop().animate({scrollTop: scrollnum - 60}, 500)
    });
    //地图
    mapLoad();
    $('.map-leftbox a').click(function () {
        $('.map-leftbox a').removeClass('on');
        $(this).addClass('on');
    });
    $('.map-rightbox a').click(function () {
        mapLoad();
    });

})
function IframeRemove() {
    $('.append-iframe-3d a').click(function () {
        $('.append-iframe-3d').remove();
    })
}
var rightTop = $('.set-right').offset().top - 55;
function scrollRight() {
    var sTop = $(window).scrollTop(),
        wHeight = $(window).height(),
        dHeight = $(document).height(),
        fHeight = $('.footer').height();
    if (sTop > rightTop) {
        $('.set-right').addClass('fixed');
        $('.set-right .viewroom,.set-right .user-phone').show();
    } else {
        $('.set-right').removeClass('fixed');
        $('.set-right .viewroom,.set-right .user-phone').hide();
    }
    if (dHeight - sTop - wHeight < fHeight) {
        $('.set-right').addClass('position');
    } else {
        $('.set-right').removeClass('position');
    }
}