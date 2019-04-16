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
   <h2 class="title">租房 <a href="pro_zu.jsp">更多&gt;&gt;</a></h2>
   <div class="index-fang-list">
    <c:forEach  items="${sessionScope.roomInfos}"  var="proinfo" varStatus="status">
        <c:if test="${status.index<4}">
        <dl>
            <dt><a href="<%=basePath %>room/toproinfo.do?roomId=${proinfo.roomId}"><img src="${pageContext.request.contextPath}/image/${proinfo.images[0].imgName}" width="286" height="188" /></a></dt>
            <dd>
                <h3><a href="<%=basePath %>room/toproinfo.do?roomId=${proinfo.roomId}"></a>${proinfo.name}</h3>
                <div class="hui">${proinfo.price}￥ | ${proinfo.area} | 精装修 </div>
            </dd>
        </dl>
        </c:if>
    </c:forEach>
    <div class="clears"></div>
   </div><!--index-fang-list/-->
   
   <h2 class="title">新房 <a href="pro_xin.jsp">更多&gt;&gt;</a></h2>
   <div class="index-fang-list">
    <c:forEach  items="${sessionScope.bridalRoomInfos}"  var="proinfo" varStatus="status">
     <c:if test="${status.index<4}">
      <dl>
       <dt><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}"><img src="${pageContext.request.contextPath}/image/${proinfo.images[0].imgName}" width="286" height="188" /></a></dt>
       <dd>
        <h3><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}"></a>${proinfo.name}</h3>
        <div class="hui">${proinfo.price}万￥ | ${proinfo.area} | 简单装修</div>
       </dd>
      </dl>
     </c:if>
    </c:forEach>
    <div class="clears"></div>
   </div><!--index-fang-list/-->
   <h2 class="title">二手房 <a href="pro_er.jsp">更多&gt;&gt;</a></h2>
   <div class="index-fang-list">
    <c:forEach  items="${sessionScope.secondHandRoomInfos}"  var="proinfo" varStatus="status">
     <c:if test="${status.index<4}">
      <dl>
       <dt><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}"><img src="${pageContext.request.contextPath}/image/${proinfo.images[0].imgName}" width="286" height="188" /></a></dt>
       <dd>
        <h3><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}"></a>${proinfo.name}</h3>
        <div class="hui">${proinfo.price}万￥ | ${proinfo.area} | 简单装修</div>
       </dd>
      </dl>
     </c:if>
    </c:forEach>
    <div class="clears"></div>
   </div><!--index-ershou/-->
  </div><!--width1190/-->
 </div><!--content/-->
 <div class="xinren">
  <div class="width1190">
   <dl style="background:url(/images/icon1.jpg) left center no-repeat;">
    <dt>承诺</dt>
    <dd>真实可信100%真房源<br />链家承诺，假一赔百</dd>
   </dl>
   <dl style="background:url(/images/icon2.jpg) left center no-repeat;">
    <dt>权威</dt>
    <dd>独家房源 覆盖全城<br />房源信息最权威覆盖最广</dd>
   </dl>
   <dl style="background:url(/images/icon3.jpg) left center no-repeat;">
    <dt>信赖</dt>
    <dd>万名置业顾问 专业服务<br />百万家庭的信赖之选</dd>
   </dl>
   <dl style="background:url(/images/icon4.jpg) left center no-repeat;">
    <dt>安全</dt>
    <dd>安心承诺 保驾护航<br />多重风险防范机制 无后顾之忧</dd>
   </dl>
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--xinren/-->
 <jsp:include page="/common/tail.jsp"></jsp:include>
</body>
</html>
