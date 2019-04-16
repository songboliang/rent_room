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
     <h3 class="vipright-title">关注房源</h3>
     <ul class="guanzhueq">
      <li class="guanzhueqcur"><a href="javascript:;">租房</a></li>
      <li><a href="javascript:;">新房</a></li>
      <li><a href="javascript:;">二手房</a></li>
      <div class="clearfix"></div>
     </ul><!--guanzhueq/-->
     <div class="guanzhulist">
      <c:forEach  items="${sessionScope.subscribeRoomList}"  var="subscribeRoom" varStatus="status">
       <c:if test = "${subscribeRoom.room.sellType == '租房'}" >
       <dl>
         <dt><a href="proinfo.jsp"><img src="${pageContext.request.contextPath}/image/${subscribeRoom.room.images[1].img_name}" width="190" height="128" /></a></dt>
        <dd>
         <h3><a href="proinfo.jsp">${subscribeRoom.room.address.addressName}</a></h3>
         <div class="guantext">${subscribeRoom.room.addressDesc}</div>
         <div class="guantext">${subscribeRoom.room.houseType} | ${subscribeRoom.room.area}平米 </div>
         <div class="guantext2">创建时间：${subscribeRoom.createDate}    <a href="javascript:cancelSubscribe('${subscribeRoom.room.roomId}')" class="qxgz">取消关注</a></div>
        </dd>
        <div class="price">¥ <strong>${subscribeRoom.room.price} </strong><span class="font12">元/月</span></div>
        <div class="clearfix"></div>
       </dl>
       </c:if>
      </c:forEach>
     </div><!--guanzhulist/-->
     <div class="guanzhulist">
      <c:forEach  items="${sessionScope.subscribeRoomList}"  var="subscribeRoom" varStatus="status">
       <c:if test = "${subscribeRoom.room.sellType == '新房'}" >
        <dl>
         <dt><a href="proinfo.jsp"><img src="${pageContext.request.contextPath}/image/${subscribeRoom.room.images[1].img_name}" width="190" height="128" /></a></dt>
         <dd>
          <h3><a href="proinfo.jsp">${subscribeRoom.room.address.addressName}</a></h3>
          <div class="guantext">${subscribeRoom.room.addressDesc}</div>
          <div class="guantext">${subscribeRoom.room.houseType} | ${subscribeRoom.room.area}平米 </div>
          <div class="guantext2">创建时间：${subscribeRoom.createDate}    <a href="javascript:cancelSubscribe('${subscribeRoom.room.roomId}')" class="qxgz">取消关注</a></div>
         </dd>
         <div class="price">¥ <strong>${subscribeRoom.room.price} </strong><span class="font12">万</span></div>
         <div class="clearfix"></div>
        </dl>
       </c:if>
      </c:forEach>
     <div class="guanzhulist">
      <c:forEach  items="${sessionScope.subscribeRoomList}"  var="subscribeRoom" varStatus="status">
       <c:if test = "${subscribeRoom.room.sellType == '二手房'}" >
        <dl>
         <dt><a href="proinfo.jsp"><img src="${pageContext.request.contextPath}/image/${subscribeRoom.room.images[0].img_name}" width="190" height="128" /></a></dt>
         <dd>
          <h3><a href="proinfo.jsp">${subscribeRoom.room.address.addressName}</a></h3>
          <div class="guantext">${subscribeRoom.room.addressDesc}</div>
          <div class="guantext">${subscribeRoom.room.houseType} | ${subscribeRoom.room.area}平米 </div>
          <div class="guantext2">创建时间：${subscribeRoom.createDate}    <a href="javascript:cancelSubscribe(${subscribeRoom.room.roomId})" class="qxgz">取消关注</a></div>
         </dd>
         <div class="price">¥ <strong>${subscribeRoom.room.price} </strong><span class="font12">万</span></div>
         <div class="clearfix"></div>
        </dl>
       </c:if>
      </c:forEach>
     </div><!--guanzhulist/-->
    </div><!--vip-right/-->
    <div class="clearfix"></div>
  </div><!--width1190/-->
 </div><!--content/-->


<jsp:include page="/common/tail.jsp"></jsp:include>
</body>
<script type="text/javascript">
 function cancelSubscribe(roomId) {
  alert("123456");
  console.log(roomId);
  $.ajax({
   type: "GET",
   async: true,
   url: "../subscribeRoom/cancelSubscribe.do",
   data:{
    roomId:roomId,
   },
   success: function (msg2) {
     console.log(msg2);
    if (msg2.status == 1) {
     alert(msg2.msg);
    } else if (msg2.status == 0) {
     alert(msg2.msg);
     location = "../room/userguanzhu.do";
    }
   }
  });
 }

</script>
</html>
