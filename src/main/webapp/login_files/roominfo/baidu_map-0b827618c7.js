// 官方文档: http://developer.baidu.com/map/index.php?title=jspopular


function BaiduDetailMap(lng, lat, label_name, city) {
    var map = new BMap.Map("map-in-modal");
    var point = new BMap.Point(lng, lat);

    this.init = function() {
        map.addControl(new BMap.ScaleControl());
        map.addControl(new BMap.OverviewMapControl());
        map.addControl(new BMap.MapTypeControl());
        map.setCurrentCity(city); // 仅当设置城市信息时，MapTypeControl的切换功能才能可用


        var marker = new BMap.Marker(point, 15);  // 创建标注
        marker.setAnimation(BMAP_ANIMATION_BOUNCE);
        map.addOverlay(marker);              // 将标注添加到地图中

        map.addControl(new BMap.NavigationControl());//添加平移缩放控件
        //map.enableScrollWheelZoom();//支持鼠标滚动缩放
        map.setMinZoom(11);
        map.setMaxZoom(18);

        var label = new BMap.Label(label_name, {offset: new BMap.Size(20, -10)});
        marker.setLabel(label);
    };

    this.show = function() {
        map.centerAndZoom(point, 18);
        this.init();
    };

    this.search = function(keyword, distance) {
        map.centerAndZoom(point, 16);
        this.init();

        var local = new BMap.LocalSearch(map, {
            renderOptions: {
                map: map,
                autoViewport: false
            }
        });
        local.searchNearby(keyword, point, distance);
    };

}
