var globalData = {};
$(function () {
    var cityCode = $('input[name="website-city-code"]').val(),
        loc = '/web-api',
        cityId = 1;
    //加载城市ID
    $.get(loc + '/base-configure/city-list', function (data) {
        for (var i = 0; i < data.length; i++) {
            if (data[i].code == cityCode) {
                cityId = data[i].id;
            }
        }
        var searchType = '',
            resu = {city_id: cityId};
        //首页广告位
        $.ajax({
            type: "get",
            url: loc + "/home-page/advertisement",
            data: resu,
            success: function (data) {
                var inner = '',
                    adAffixFn = function () {
                        if ($(window).scrollTop() > $(".index-product-box").height() + $(".danke_hd_menu").height()) {
                            $(".danke_header").addClass("adAffix")
                        } else {
                            $(".danke_header").removeClass("adAffix")
                        }
                    };
                if (data.image) {
                    inner = "<div class='index-product-box'><b class='close-ad'></b><a href='" + data.url + "'><img src='" + data.image + "'></a></div>";
                    // 处理head定位问题
                    $('.danke_header').css({"position": "absolute", "top": "112px"});
                    adAffixFn()
                    $(window).on("scroll", function () {
                        if ($(".index-product-box").length) {
                            adAffixFn()
                        }
                    })

                }
                $(inner).insertBefore($('.danke_hd_menu'));

                // 关闭顶部广告位
                $(".close-ad").on("click", function () {
                    $('.danke_header').removeAttr("style")
                    $(this).parent().remove();
                })

            },
            error: function () {
                //alert('加载出错，请稍后再试！')
            }
        });

        //加载banner
        $.ajax({
            type: "get",
            url: loc + "/home-page/banner",
            data: resu,
            success: function (data) {
                var inner = '';
                for (var i = 0; i < data.length; i++) {
                    if (i == 0) {
                        inner += '<div class="item active">' +
                            '<a key="' + i + '" href="' + data[i].url + '" target="_blank" title="' + data[i].title + '">' +
                            '<img alt="' + data[i].title + '图片" title="' + data[i].title + '" src="' + data[i].image + '" />' +
                            '</a></div>';
                    } else {
                        inner += '<div class="item">' +
                            '<a key="' + i + '" href="' + data[i].url + '" target="_blank" title="' + data[i].title + '">' +
                            '<img alt="' + data[i].title + '图片" title="' + data[i].title + '" src="' + data[i].image + '" />' +
                            '</a></div>';
                    }
                }
                $('.banner .carousel-inner').html(inner);
                //顶部搜索栏
                setTimeout(function () {
                    var scTop = parseInt($('.index-box').offset().top);
                    $(window).scroll(function () {
                        if ($(window).scrollTop() > scTop) {
                            $('.search').addClass('fixed');
                            $('.danke_header').addClass('scroll');
                            $('#topbar').stop().animate({'height': '70px'}, 50);
                        } else {
                            $('.search').removeClass('fixed');
                            $('.danke_header').removeClass('scroll');
                            $('#topbar').stop().animate({'height': '60px'}, 50);
                        }
                    });
                    $('#myCarousel').hover(function () {
                        $('.banner .carousel-control.left, .banner .carousel-control.right').css('display', 'block');
                    }, function () {
                        $('.banner .carousel-control.left, .banner .carousel-control.right').css('display', 'none');
                    })
                }, 300);
            },
            error: function () {
                //alert('加载出错，请稍后再试！')
            }
        });
        //加载index
        $.ajax({
            type: "get",
            url: loc + "/home-page/home-data",
            data: resu,
            success: function (data) {
                var rooms = '',
                    sq = '',
                    story = '',
                    arc = '';
                var exist_story = true,
                    exist_sq = true,
                    exist_joint = true,
                    exist_entire = true;
                for (var k = 0; k < data.length; k++) {
                    //精选房源
                    if (data[k].type == '精选房源') {
                        for (var i = 0; i < data[k].data.length; i++) {
                            rooms += '<a key="' + i + 1 + '" href="' + data[k].data[i].url + '" target="_blank">' +
                                '<img title="' + data[k].data[i].image_title + '" src="' + data[k].data[i].image + '" alt="精选房源图片">' +
                                '<span><b>￥' + data[k].data[i].image_title + '</b>元/月</span>' +
                                '<p>' + data[k].data[i].title + ' </p>' +
                                '<label>' + data[k].data[i].sub_title + ' </label>' +
                                '</a>'
                        }
                        $('.box-title-fl').eq(0).find('span').html('<b>' + data[k].type + '</b>' + data[k].title);
                        $('.box-title-fl').eq(0).find('p').html(data[k].sub_title);
                        $('.index-rooms').html(rooms);
                    }
                    //蛋壳商圈
                    if (data[k].type == '蛋壳商圈') {
                        exist_sq = false;
                        if (!data[k].data.length) {
                            $('.index-sqbox').parents(".index-sq").hide();
                        }
                        for (var i = 0; i < data[k].data.length; i++) {
                            sq += '<a key="' + i + 1 + '" href="' + data[k].data[i].url + '" target="_blank">' +
                                '<img title="' + data[k].data[i].image_title + '" src="' + data[k].data[i].image + '" alt="蛋壳商圈图片">' +
                                '<div class="sqlist-bg"></div>' +
                                '<div class="sqlist-text">' +
                                '<label>' + data[k].data[i].title + '</label>' +
                                '<span>' + data[k].data[i].sub_title + '</span>' +
                                '</div>' +
                                '</a>'
                        }
                        $('.J-trade-tit').find('span').html('<b>' + data[k].type + '</b>' + data[k].title);
                        $('.J-trade-tit').find('p').html(data[k].sub_title);
                        $('.index-sqbox').html(sq);
                        $('.index-sqbox a img').hover(function () {
                            $(this).stop().animate({'width': '408px', 'height': '271px', 'margin': '-7px -10px'}, 500);
                        }, function () {
                            $(this).stop().animate({'width': '388px', 'height': '257px', 'margin': '0'}, 100);
                        })
                    }

                    //样板间
                    if (data[k].type == '整租·样板间' || data[k].type == '合租·样板间') {
                        var mImgs1, gImgs1, mImgs2, gImgs2, g = globalData;
                        //区分数据变量&元素名称
                        if (data[k].type == '整租·样板间') {
                            var idName = "sampleYi",
                                styleIndex = 1,
                                modelTit = "J-entire-tit";
                            exist_entire = false;
                        }

                        if (data[k].type == '合租·样板间') {
                            var idName = "sampleHe",
                                styleIndex = 2,
                                modelTit = "J-joint-tit";
                            exist_joint = false;
                        }
                        //初始化标题
                        $('.' + modelTit + ' span').html('<b>' + data[k].type + '</b>' + data[k].title);
                        $('.' + modelTit + ' p').html(data[k].sub_title);

                        //遍历存储数据&&创建布局&&绑定事件
                        var tabTit = "", firstAddon = true;
                        ;
                        $.each(data[k].data, function (i, e) {
                            var muji = e.data["MUJI风"];
                            var gyf = e.data["工业风"];
                            //生成html标签
                            tabTit += "<label is-muji='" + (!!muji ? "1" : "0") + "' is-gyf='" + (!!gyf ? "1" : "0") + "' " + (i == 0 ? "class='on'" : "") + ">" + e.title + "</label>";
                            $(".J-sample-" + styleIndex + " .sample").eq(i).html(sampleTemp(idName, i, e.data));

                            //存储房间照片
                            (g["mImgs" + styleIndex] = g["mImgs" + styleIndex] || []).push(muji ? muji.img : []);
                            (g["mTxts" + styleIndex] = g["mTxts" + styleIndex] || []).push(muji ? [muji.version, muji.designer, muji.desc] : []);
                            (g["gImgs" + styleIndex] = g["gImgs" + styleIndex] || []).push(gyf ? gyf.img : []);
                            (g["gTxts" + styleIndex] = g["gTxts" + styleIndex] || []).push(gyf ? [gyf.version, gyf.designer, gyf.desc] : []);

                            //轮播切换前事件监听
                            $('#' + idName + i).on('slide.bs.carousel', function (e) {
                                var imgObj = $(this).parents(".sample-box").find("img.on");
                                imgObj.each(function () {
                                    $(this).siblings().length && $(this).fadeOut(500).removeClass("on").siblings().fadeIn(500).addClass("on");
                                })
                            });

                            //轮播切换完成后事件监听
                            $('#' + idName + i).on('slid.bs.carousel', function (e) {
                                var index = $('.item.active', this).index();
                                $(this).parents(".sample-box").find(".sample").each(function () {
                                    if ($(this).hasClass("block")) {
                                        return;
                                    }
                                    $(".item", this).eq(index).addClass("active").siblings().removeClass("active")
                                })
                            });
                        })
                        //tab title
                        $(".J-title-" + styleIndex).html(tabTit);

                    }

                    //蛋壳故事
                    if (data[k].type == '蛋壳故事') {
                        exist_story = false;
                        if (!data[k].data.length) {
                            $('.storybox').parents(".index-sq").hide();
                        }
                        for (var i = 0; i < data[k].data.length; i++) {
                            story += '<a key="' + i + 1 + '" href="' + data[k].data[i].url + '" class="storylist s-l' + parseInt(i + 1) + '" target="_blank">' +
                                '<img title="' + data[k].data[i].image_title + '" src="' + data[k].data[i].image + '" alt="蛋壳故事">' +
                                '<div class="sl-text">' +
                                '<label>了解更多</label>' +
                                '<h3><span>' + data[k].data[i].title + '</span></h3>' +
                                '<b></b>' +
                                '<p>' + data[k].data[i].intro + '</p>' +
                                '</div>' +
                                '</a>'
                        }
                        $('.J-story-tit').find('span').html('<b>' + data[k].type + '</b>' + data[k].title);
                        $('.J-story-tit').find('p').html(data[k].sub_title);
                        $('.storybox').html(story);
                    }

                }
                // for end
                //判断是否存在故事类型
                if (exist_story) {
                    //不存在
                    $('.storybox').parents(".index-sq").hide();
                }
                //判断是否存在商圈类型
                if (exist_sq) {
                    //不存在
                    $('.index-sqbox').parents(".index-sq").hide();
                }
                //判断是否存在整租样板间模块
                if (exist_entire) {
                    //不存在
                    $('.J-entire-tit').parents(".index-sq").hide();
                }
                //判断是否存在整租样板间模块
                if (exist_joint) {
                    //不存在
                    $('.J-joint-tit').parents(".index-sq").hide();
                }

                sampleLayerEvent()
                boxTitTab()
                initSampleImg()
            },
            error: function () {
                //alert('加载出错，请稍后再试！')
            }
        });
    });

    //搜索选择
    $('.search-select span').click(function () {
        if ($('.search-select-list').css('display') == 'none') {
            $('.search-select-list').show().focus();
        } else {
            $('.search-select-list').hide();
        }
    });
    $('.search-select-list').blur(function () {
        $('.search-select-list').hide();
    });
    $('.search-select-list label').click(function () {
        $('.search-select span').text($(this).text());
        searchType = $(this).text();
        $('.search-select-list').hide();
    });
    //回车搜索
    $('.search-box input').bind('keypress', function (event) {
        if (event.keyCode == "13") {
            $('.search-btn').trigger('click')
        }
    });
    $('input.search-box').focus(function () {
        $('.search').addClass('newborder');
    }).blur(function () {
        $('.search').removeClass('newborder');
    })
    //搜索跳转
    $('.search-btn').click(function () {
        var $keywords = $.trim($('.search-box input').val());
        if ($.trim($('.search-select span').text()) == '全部') {
            // saMethod.Initiatingsearchrequest(window.location.href, $('.search-box input').val(), true, true, true, true)
            window.location.href = '/room/' + cityCode + '?search=1&search_text=' + encodeURI($keywords) + '&from=home';
        } else {
            // saMethod.Initiatingsearchrequest(window.location.href, $('.search-box input').val(), true, true, true, true)
            window.location.href = '/room/' + cityCode + '/c' + encodeURI(searchType) + '.html?search=1&search_text=' + encodeURI($keywords) + '&from=home';
        }
    });

    //监听样板间首次加载图片
    $(window).on("scroll", function () {
        if (!$(".J-title-2 label:eq(0)").hasClass("already") || !$(".J-title-1 label:eq(0)").hasClass("already")) {
            initSampleImg()
        }
    });
});


// 样板间模态框数据展开事件前事件监听
function sampleLayerEvent() {
    var g = globalData, target;
    $('#picture-modal').on("show.bs.modal", function (e) {
        var target = e.relatedTarget,
            getData = function (a, b) {
                return $(target).parents(".J-sample-1").length == 1 ? a : b;
            },
            gImgs = getData(g["gImgs1"], g["gImgs2"]),
            mImgs = getData(g["mImgs1"], g["mImgs2"]),
            mTxts = getData(g["mTxts1"], g["mTxts2"]),
            gTxts = getData(g["gTxts1"], g["gTxts2"]),
            sample = $(target).parents(".sample"),
            ti = sample.index(),
            style = $(".item.active", sample).index(),
            siIdx = +$(target).attr("data-idx"),
            imgArr = style == 0 ? mImgs : gImgs,
            tf = style == 0 ? mTxts : gTxts,
            listUrl = $(".item.active .inList", sample).attr("href"),
            creatTag = function (idx, ele) {
                return '<div class="item ' + (idx == siIdx ? "active" : "") + '"><img src="' + ele + '" alt="样板间展示图片"></div>'
            };
        //轮播html生成
        var str = "",
            modal = "#picture-modal";

        $.each(imgArr[ti], function (idx, ele) {
            str += creatTag(idx, ele)
        })
        //默认选中对应模块
        $(modal + " .J-place span").html($(target).parents(".index-sq").find(".box-title-fr").html())
        //删除弹框中不存在当前风格的模块
        $(".J-place [is-" + (style == 0 ? "muji" : "gyf") + "]").each(function (idx, ele) {
            if ($(ele).attr("is-" + (style == 0 ? "muji" : "gyf") + "") == 0) {
                $(ele).remove();
            }
        })

        //数据插入
        $(modal + " .J-version").html("蛋壳" + tf[ti][0]);
        $(modal + " .J-designer").html(tf[ti][1]);
        $(modal + " .J-picture-desc").html(tf[ti][2])
        $(modal + " .J-place a").attr("href", listUrl);
        $(modal + " .carousel-inner").html(str);
        //给弹出层解除/绑定选择事件
        $(".J-place").off("click");
        $(".J-place").on("click", "label", function () {
            var $this = $(this);
            if ($(this).hasClass("on")) {
                return false;
            }
            $(this).addClass("on").siblings().removeClass("on");
            //插入对应的图片路径
            $.each(imgArr[$(this).index()], function (a, b) {
                $("#picture-modal .carousel-inner img").eq(a).attr("src", b)
            })
        })
    });
}


//样板间标题tab切换 && 懒加载
function boxTitTab() {
    $('.box-title-fr label').click(function () {
        var $this = $(this),
            $box = $this.parents(".index-sq");
        if ($this.hasClass("already") && $this.hasClass("on"))return false;
        $this.addClass("on").siblings().removeClass("on");
        $box.find('.sample').eq($this.index()).addClass("block").siblings().removeClass("block");
        // 切换加载图片
        if ($this.hasClass("already"))return false;
        $box.find('.sample.block [dalay-src]').each(function (i, e) {
            var si = $(e).parents(".sample").find(".item.active").index();
            var loadImg = function () {
                //不是第一张大图&&不带on&&只有一张图片的情况 
                if ($(e).parents(".item").length == 0 && !$(e).hasClass("on") && $(e).parent().children().length != 1) {
                    $(e).parent().children().eq(si).fadeIn(300).parent().addClass("no-bg");
                } else {
                    $(e).fadeIn(300);
                }
            }
            $(e).hide().attr("src", $(e).attr("dalay-src")).on("load", loadImg)
        })
        $this.addClass("already");

    })
}

//样板间首模块懒加载
function initSampleImg() {
    $(".J-title-1,.J-title-2").each(function () {
        if ($(this).offset().top <= $(window).height() + $(document).scrollTop()) {
            $(".J-title-1 label.on,.J-title-2 label.on").trigger("click");
        }
    })
}

//样板间生成轮播html
function sampleTemp(idName, i, o) {
    if ($.isEmptyObject(o)) {
        return '';
    }
    var cityCode = $('input[name="website-city-code"]').val(),
        ret, url, retnType, bigMujiImg, bigGyfImg,
        muji = o["MUJI风"],
        gyf = o["工业风"],
        slideImg = '',
        hasBtn = ""
        loading = "//public.danke.com.cn/public-20180327-FpEitcb1bwIGO4MOtIcEJ6a2vYGf";
    //判断合租整租
    if (idName === "sampleYi") {
        url = "/recommend-list/bj?rent_type=entire_rent";
        retnType = "c整租";
    } else if (idName === "sampleHe") {
        url = "/recommend-list/bj?rent_type=joint_rent";
        retnType = "c合租";
    }
    //判断是否有按钮
    if (!muji || !gyf) {
        hasBtn = "none";
    }

    //大图
    bigMujiImg = muji ? ['<li class="item active">',
        '<a href="' + url + '" ><img dalay-src="' + muji.img[0] + '" title="MUJI风样板间图片" src="' + loading + '" alt="MUJI风样板间图片" /></a>',
        '<p class="sample-name">' + muji.style_desc + '<a class="inList" href="/room/' + cityCode + '/zMUJI风-' + retnType + '.html">查看房源</a></p>',
        '</li>'].join("") : ['<li class="active" style="height:0 !important"></li>'];
    bigGyfImg = gyf ? ['<li class="item ' + (!!o["MUJI风"] ? "" : "active") + '">',
        '<a href="' + url + '" > <img dalay-src="' + gyf.img[0] + '" title="工业风样板间图片" src="' + loading + '" alt="工业风样板间图片" /></a>',
        '<p class="sample-name">' + gyf.style_desc + '<a class="inList" href="/room/' + cityCode + '/z工业风-' + retnType + '.html"">查看房源</a></p>',
        '</li>'].join("") : ['<li class="active" style="height:0 !important"></li>'];

    //右侧3张图片
    $.each([1, 2, 3], function (j, e) {
        var gyfImg = !!gyf ? '<img class="g1 ' + (!!muji ? "" : "on") + '" title="租房，整租，合租" dalay-src="' + gyf.img[j + 1] + '" src="' + loading + '"/>' : "";
        var mujiImg = !!muji ? '<img class="m1 on" title="租房，整租，合租" dalay-src="' + muji.img[j + 1] + '" src="' + loading + '"/>' : "";
        slideImg += '<div class="si" data-idx="' + e + '" data-toggle="modal" data-target="#picture-modal">' + mujiImg + gyfImg + '</div>';
    });
    // //轮播主题布局
    ret = ['<div id="' + idName + i + '" class="sample-slide carousel slide" data-interval="false" data-ride="carousel">',
        '<ul class="sample-list carousel-inner">',
        bigMujiImg,
        bigGyfImg,
        '</ul>',
        '<div class="sample-btn sample-prev ' + hasBtn + '" href="#' + idName + i + '" data-slide="prev"></div>',
        '<div class="sample-btn sample-next ' + hasBtn + '" href="#' + idName + i + '" data-slide="next"></div>',
        ' </div>',
        '<div class="sample-si">' + slideImg + '</div>',
        ' </div>'].join("");
    return ret
}


