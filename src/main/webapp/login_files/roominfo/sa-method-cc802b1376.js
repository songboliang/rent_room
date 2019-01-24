(function(win) {
    win.saMethod = {
        'ClickPhoneInput': function(from) { // 获取验证码
            sa.track('Web_clickphoneinput', {
                'from': from,
            })
        },
        'GetVerifyingCode': function(from, request_typ, is_succeed) { // 获取验证码
            sa.track('Web_getVerifyingcode', {
                'from': from,
                'request_type': request_typ,
                'is_succeed': is_succeed,
            })
        },
        'signUp': function(from, signUpMethod, userID) { // 登录
            sa.track('Web_signup', {
                'from': from,
                'signUpMethod': signUpMethod,
                'userID': userID,
            })
        },
        'Broadcastadvertisement': function(page_type, banner_Location, banner_Name, banner_ID, url) { // 点击轮播图
            sa.track('Web_broadcastadvertisement', {
                'page_type': page_type,
                'banner_Location': banner_Location,
                'banner_Name': banner_Name,
                'banner_ID': banner_ID,
                'url': url,
            })
        },
        'ClickingHomepage': function(module_name, location_id, content_id, content_name) { // 首页模块点击
            sa.track('Web_clickinghomepage', {
                'module_name': module_name,
                'location_id': location_id,
                'content_id': content_id,
                'content_name': content_name,
            })
        },
        'Clickingsearchitem': function(click_type, search_url) { // 点击搜索
            sa.track('Web_clickingsearchitem', {
                'click_type': click_type,
                'search_url': search_url,
            })
        },
        'Initiatingsearchrequest': function(url, keywords, is_recommend_words, is_associate_words, is_history_words, is_result) { // 发起搜索请求
            sa.track('Web_initiatingsearchrequest', {
                'url': url,
                'keywords': keywords,
                'is_recommend_words': is_recommend_words,
                'is_associate_words': is_associate_words,
                'is_history_words': is_history_words,
                'is_result': is_result
            })
        },
        'Clickingthesearchresults': function(keywords, is_recommend_words, is_associate_words, is_history_words, searchresult_sort, business_circle, housedel_id, resblock_name, url) { // 点击搜索结果
            sa.track('Web_clickingthesearchresults', {
                'keywords': keywords,
                'is_recommend_words': is_recommend_words,
                'is_associate_words': is_associate_words,
                'is_history_words': is_history_words,
                'searchresult_sort': searchresult_sort,
                'business_circle': business_circle,
                'housedel_id': housedel_id,
                'resblock_name': resblock_name,
                'url': url,
            })
        },
        'Roomreservation': function(page_type, source_type, url, business_circle, district_name, housedel_id, resblock_name, click_position) { // 我要看房
            sa.track('Web_roomreservation', {
                'page_type': page_type,
                'source_type': source_type,
                'url': url,
                'business_circle': business_circle,
                'district_name': district_name,
                'housedel_id': housedel_id,
                'resblock_name': resblock_name,
                'click_position': click_position,
            })
        },
        'RoomreservationButton': function(page_type, source_type, business_circle, district_name, housedel_id, resblock_name, name, telephone, is_succeed) { // 立即预约
            sa.track('Web_roomreservationbutton', {
                'page_type': page_type,
                'source_type': source_type,
                'business_circle': business_circle,
                'district_name': district_name,
                'housedel_id': housedel_id,
                'resblock_name': resblock_name,
                'name': name,
                'telephone': telephone,
                'is_succeed': is_succeed,
            })
        },
        'EntrustRoomButton': function(name, telephone, resblock_name, is_succeed) { // 立即委托
            sa.track('Web_entrustroombutton', {
                'name': name,
                'telephone': telephone,
                'resblock_name': resblock_name,
                'is_succeed': is_succeed,
            })
        },
        'RecoModuleEXP': function(page_type, source_type, url, tactics_id, business_circle, district_name, housedel_id, resblock_name, item_type, item_location) { // 推荐模块曝光
            sa.track('Web_recomoduleexp', {
                'page_type': page_type,
                'source_type': source_type,
                'url': url,
                'tactics_id': tactics_id,
                'business_circle': business_circle,
                'district_name': district_name,
                'housedel_id': housedel_id,
                'resblock_name': resblock_name,
                'item_type': item_type,
                'item_location': item_location,
            })
        },
        'RecoClick': function(page_type, source_type, url, business_circle, district_name, house_id, housedel_id, resblock_name, location_id, tactics_id, item_type, item_location) { // 推荐模块曝光
            sa.track('Web_recoclick', {
                'page_type': page_type,
                'source_type': source_type,
                'url': url,
                'tactics_id': tactics_id,
                'business_circle': business_circle,
                'district_name': district_name,
                'house_id': house_id,
                'housedel_id': housedel_id,
                'resblock_name': resblock_name,
                'item_type': item_type,
                'item_location': item_location,
                'location_id': location_id,
            })
        },
        'ListPageScreening': function(rent_type, house_positiontype, house_position, house_price, house_feature, house_lifestyle, house_state, house_orientation, sort, house_type) { // 点击搜索结果
            sa.track('Web_listpagescreening', {
                'rent_type': rent_type,
                'house_positiontype': house_positiontype,
                'house_position': house_position,
                'house_price': house_price,
                'house_feature': house_feature,
                'house_lifestyle': house_lifestyle,
                'house_state': house_state,
                'house_orientation': house_orientation,
                'sort': sort,
                'house_type': house_type,
            })
        },
        'collectingRoom': function(source_type, page_name, business_circle, district_name, housedel_id, resblock_id, house_price) { // 收藏房源
            sa.track('Web_collectingroom', {
                'source_type': source_type,
                'page_name': page_name,
                'business_circle': business_circle,
                'district_name': district_name,
                'housedel_id': housedel_id,
                'resblock_id': resblock_id,
                'house_price': house_price,
            })
        },
        'SharingRoom': function(source_type, page_name, business_circle, district_name, house_id, housedel_id, resblock_id, house_price, share_style) { // 分享房源
            sa.track('SharingRoom', {
                'source_type': source_type,
                'page_name': page_name,
                'business_circle': business_circle,
                'district_name': district_name,
                'house_id': house_id,
                'housedel_id': housedel_id,
                'resblock_id': resblock_id,
                'house_price': house_price,
                'share_style': share_style,
            })
        },
        'APPRoomreservation': function(source_type, page_name, business_circle, district_name, house_id, housedel_id, resblock_id, house_price) { // 点击“在线预约”
            sa.track('APPRoomreservation', {
                'source_type': source_type,
                'page_name': page_name,
                'business_circle': business_circle,
                'district_name': district_name,
                'house_id': house_id,
                'housedel_id': housedel_id,
                'resblock_id': resblock_id,
                'house_price': house_price,
            })
        },
        'APPRoomreservationButton': function(source_type, page_name, business_circle, district_name, house_id, housedel_id, resblock_id, house_price, name, telephone, request_idencode, iden_code, look_time, is_succeed) { // 点击“在线预约”
            sa.track('APPRoomreservationButton', {
                'source_type': source_type,
                'page_name': page_name,
                'business_circle': business_circle,
                'district_name': district_name,
                'house_id': house_id,
                'housedel_id': housedel_id,
                'resblock_id': resblock_id,
                'house_price': house_price,
                'name': name,
                'telephone': telephone,
                'request_idencode': request_idencode,
                'iden_code': iden_code,
                'look_time': look_time,
                'is_succeed': is_succeed,
            })
        },

        'Telephonereservation': function(source_type, page_name, business_circle, district_name, housedel_id, house_price1, house_price, resblock_name) { // 电话预约
            sa.track('Web_telephonereservation', {
                'source_type': source_type,
                'page_name': page_name,
                'business_circle': business_circle,
                'district_name': district_name,
                'housedel_id': housedel_id,
                'house_price1': house_price1,
                'house_price': house_price,
                'resblock_name': resblock_name,
            })
        },
        'MobileAuthentication': function(page,name) { // 实人认证埋点
            sa.track('MobileAuthentication', {
                'page_type':page,
                'name': name,
            })
        },
        'ClickingActivityRegister':function (click_type, search_url) {//活动报名模板
            sa.track('Web_ClickingActivityRegister', {
                'click_type': click_type,
                'search_url': search_url
            })
        },
        'ChannelActivityServation': function(url,page,name) { // 渠道H5
            sa.track('ChannelActivityServation', {
                'url':url,
                'coupons_receive':page,
            })
        },
        'orderRoomCommitBtn': function(mobilePhone,currentCityName,currentDistrictName,currentBlockName,address_inp,myBudget) { // 房源定制-提交
            sa.track('orderRoomCommitBtn', {
                'mobilePhone':mobilePhone,
                'currentCityName':currentCityName,
                'currentDistrictName':currentDistrictName,
                'currentBlockName':currentBlockName,
                'address_inp':address_inp,
                'myBudget':myBudget,
            })
        },
        'orderRoomJumpToList': function(content) { // 房源定制-去找房
            sa.track('orderRoomJumpToList', {
                'content':content
            })
        },
        'orderRoomJumpToIndex': function(content) { // 房源定制-回首页
            sa.track('orderRoomJumpToIndex', {
                'content':content
            })
        },
        'orderRoomContactUs': function(mobilePhone) { // 房源定制-联系我们
            sa.track('orderRoomContactUs', {
                'mobilePhone':mobilePhone
            })
        },
        'orderRoomPCClick': function(content) { // 房源定制-pc端入口
            sa.track('orderRoomPCClick', {
                'content':content
            })
        },
        'orderRoomH5Click': function(content) { // 房源定制-H5入口
            sa.track('orderRoomH5Click', {
                'content':content
            })
        },
        'tenantsActiveClick': function(type) { // 租客活动统计
            sa.track('tenantsActiveClick', {
                'btn_type':type
            })
        },
    }
})(window)