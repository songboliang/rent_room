<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%@ include  file="/common/lable.jsp"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<body>
<jsp:include page="/common/head.jsp"/>

 <div class="content">
  <div class="width1190">
   <div class="vip-left">
       <div class="vipNav">
        <h3 class="vipTitle">会员中心</h3>
        <dl>
         <dt class="vipIcon3">账户设置</dt>
          <dd>
           <a href="<%=basePath %>user/user.do" class="vipNavCur">我的资料</a>
           <a href="<%=basePath %>rentroom/changePassword.do">账户密码设置</a>
          </dd>
         <dt class="vipIcon1">我的邻居大妈</dt>
          <dd>
           <a href="<%=basePath %>room/userguanzhu.do">关注房源</a>
           <a href="user_shenqing.jsp">留言</a>
          </dd>
        </dl>
       </div><!--vipNav/-->
    </div><!--vip-left/-->
    <div class="vip-right">
        <h3 class="vipright-title">修改头像</h3>
        <form action="" method="get">
            <dl class="vip-touxiang">
                <dt><img src="images/tx.jpg" width="100" height="100" /></dt>
                <dd>
                    <h3><strong>点击选择文件上传头像</strong></h3>
                    <div class="sctx"><input type="file" id="file" /><a href="javascript:;">上传</a></div>
                    <p>图片格式：GIF、JPG、JPEG、PNG ，最适合尺寸100*100像素</p>
                </dd>
                <div class="clearfix"></div>
            </dl><!--vip-touxiang/-->
        </form>
     <h3 class="vipright-title">修改资料</h3>
     <table class="grinfo">
        <tbody>
        <tr>
        <th>手机号：</th>
        <td> <strong>${sessionScope.userInfo.phone}</strong>
        </td>
        </tr>
        <tr>
        <th><span class="red">*</span> 用户名：</th>
        <td>
        <input class="inp inw" type="text" id="username" value="${sessionScope.userInfo.username}" maxlength="14">
        </td>
        </tr>
        <tr>
            <th><span class="red">*</span> 身份证号码：</th>
            <td>
                <input class="inp inw" type="text" id="userCard" value="${sessionScope.userInfo.userCard}" maxlength="14">
            </td>
        </tr>
        <tr>
        <th><span class="red">*</span> 性 &nbsp; &nbsp;别：</th>
        <td id="wrap">
            <input type="radio" value="男" id="rbSex2" name="sex" checked="${sessionScope.userInfo.sex == '男'} >
            <label for="rbSex1">男</label>
            <input type="radio" value="女" id="rbSex1" name="sex" checked="${sessionScope.userInfo.sex == '女'}">
            <label for="rbSex2">女</label>
        <span id="Sex_Tip"></span>
        </td>
        </tr>
        <tr>
        <th><span class="red"></span> 年 &nbsp; &nbsp;龄：</th>
        <td>
        <input class="inp inw" type="text" id="age" value="${sessionScope.userInfo.age}" onkeyup="this.value=this.value.replace(/[^\d]/g,'')">
        </td>
        </tr>


        <tr>
        <th>&nbsp;Q &nbsp; &nbsp;Q：</th>
        <td>
        <input class="inp inw" type="text" maxlength="15" value="${sessionScope.userInfo.age}" id="qq" onkeyup="return ValidateNumber(this,value)">
        </td>
        </tr>

        <tr>
        <th valign="top">个性签名：</th>
        <td>
        <input id="signature" class="grtextarea" value="${sessionScope.userInfo.signature}" type="text"></input>
        <br>
        <span class="fgrey">(128字符以内)</span>
        </td>
        </tr>
        <tr>
        <th>&nbsp;</th>
        <td colspan="2">
        <label class="butt" id="butt">
        <input type="submit" class="member_mod_buttom" onclick="mod_member()" value="完成修改" id="submit"/>
        </label>
        </td>
        </tr>
        </tbody>
      </table>
    </div><!--vip-right/-->
    <div class="clearfix"></div>
  </div><!--width1190/-->
 </div><!--content/-->

<jsp:include page="/common/tail.jsp"></jsp:include>
</body>

<script type="text/javascript">

    $(function() {
        $("#submit").click(function(){

            $.ajax({
                type : "post",
                async : false,
                url : "../user/modifyUser.do",
                data : {
                    "file": $("#file").val(),
                    "sex":$('#wrap input[name="sex"]:checked ').val(),
                    "username": $("#username").val(),
                    "age": $("#age").val(),
                    "qq": $("#qq").val(),
                    "signature": $("#signature").val(),
                    "userCard":$("#userCard").val(),
                },
                success : function(result) {
                    if(result.status == 1){
                        alert(result.msg);
                    }else if(result.status == 0){
                        alert(result.msg);
                    }
                }
            });
        });
    });
</script>
</html>
