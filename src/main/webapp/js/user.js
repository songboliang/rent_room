;
! function() {
	var layer = layui.layer,
		form = layui.form;


	//监听提交  
	form.on("submit(register)", function() {
		if(phone_status == 0) {
			layer.msg("该手机号已被注册", {
				icon: 5
			});
		} else if(msg_send_count == 0) {
			layer.msg("请点击获取验证码");
		} else {
			$.ajax({
				url: "user/vailSMSCode.do",
				type: "post",
				async: false,
				data: {
					"code": $("#msg-code").val()
				},
				success: function(result) {
					if(result.JSONObject == 1) {
						layer.msg(result.JSONObject.msg);
						return false;
					} else {
						// 发送注册请求到后台匹配
						$.ajax({
							url: "user/register.do",
							type: "post",
							data: {
								"phone": $("#phone").val(),
								"password": $("#password").val(),
								"username" : $("#username").val()
							},
							success: function(result) {
								if(result.status == 0) {
									layer.msg("注册成功");
									setTimeout("location='login.htm'", 2000);
								} else {
									$("form")[0].reset();
									layer.msg(result.msg, {
										icon: 5
									});
								}
							}
						});
					}
				}
			});
		}

		return false;
	});
}();