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
     <h3 class="vipright-title">修改资料</h3>
     <table class="grinfo">
      <tbody>
        <tr>
        <td>
            <input type="hidden" id="userId" value="${sessionScope.userInfo.id}">
        </td>
        </tr>
        <tr>
        <th>原手机号：</th>
        <td> <strong>${sessionScope.userInfo.phone}</strong></td>
        </tr>
        <tr>
        <th>新密码：</th>
        <td>
        <input class="inp inw" type="password" id="new_password" placeholder="不少于6位">
        </td>
        </tr>
        <tr>
        <th>重复新密码：</th>
        <td>
        <input class="inp inw" type="password" id="new_password1" placeholder="不少于6位">
        </td>
        </tr>
        <tr>
        <th>&nbsp;</th>
        <td colspan="2">
        <label class="butt" id="butt">
        <div class="member_mod_buttom" onclick="sub_username()">完成修改</div>
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


    });
    function sub_username() {
        $.ajax({
            type : "GET",
            async : true,
            url : "../user/changeUserPwd.do",
            data : {
                "userId":$("#userId").val(),
                "newpassword":$("#new_password").val(),
                "newpassword1":$("#new_password1").val()
            },
            success : function(result) {
                console.log(result);
                if(result.status == 0){
                    window.alert(result.msg);
                }else if(result.status == 1){
                    window.alert(result.msg);
                }
            }
        });
    }
</script>
</html>
