<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html>
<body>
<div class="header">
    <div class="width1190">
        <div class="fl">欢迎来到邻居大妈！</div>
        <div class="fr">
            <c:if test = '${sessionScope.userInfo == null}' >
                <a href="../login.htm">登录</a> |
                <a href="../register.htm">注册</a>
            </c:if>
            <c:if test= '${sessionScope.userInfo != null}'>
                ${sessionScope.userInfo.username},欢迎登录   | <a href="../login.htm">退出</a>
            </c:if>
        </div>
        <div class="clears"></div>
    </div><!--width1190/-->
</div><!--header/-->
<div class="logo-phone">
    <div class="width1190">
        <h1 class="logo"><a href="index.jsp"><img src="${pageContext.request.contextPath}/images/logo.png" width="163" height="59" /></a></h1>
        <div class="phones"><strong>021-63179891</strong></div>
        <div class="clears"></div>
    </div><!--width1190/-->
</div><!--logo-phone/-->
<div class="list-nav">
    <div class="width1190">
        <div class="list">
            <h3>房源分类</h3>
            <div class="list-list">
                <dl>
                    <dt><a href="javascript:;">房源区域</a></dt>
                    <dd>
                        <a href="javascript:;">智慧园</a>
                        <a href="javascript:;">立民村</a>
                        <a href="javascript:;">塘口村</a>
                        <a href="javascript:;">勤劳村</a>
                        <a href="javascript:;">芦胜村</a>
                        <a href="javascript:;">知新村</a>
                    </dd>
                </dl>
                <dl>
                    <dt><a href="<%=basePath %>room/toproer.do?sellType=租房">租房</a></dt>
                    <dd>
                        <a href="<%=basePath %>room/toproer.do?sellType=租房">租金</a>
                        <a href="<%=basePath %>room/toproer.do?sellType=租房">出租方式</a>
                        <a href="<%=basePath %>room/toproer.do?sellType=租房">面积</a>
                        <a href="<%=basePath %>room/toproer.do?sellType=租房">房型</a>
                    </dd>
                </dl>
                <dl>
                    <dt><a href="<%=basePath %>room/toproer.do?sellType=新房">新房</a></dt>
                    <dd>
                        <a href="<%=basePath %>room/toproer.do?sellType=新房">价格</a>
                        <a href="<%=basePath %>room/toproer.do?sellType=新房">面积</a>
                        <a href="<%=basePath %>room/toproer.do?sellType=新房">房型</a>
                    </dd>
                </dl>
                <dl>
                    <dt><a href="<%=basePath %>room/toproer.do?sellType=二手房">二手房</a></dt>
                    <dd>
                        <a href="<%=basePath %>room/toproer.do?sellType=二手房">价格</a>
                        <a href="<%=basePath %>room/toproer.do?sellType=二手房">面积</a>
                        <a href="<%=basePath %>room/toproer.do?sellType=二手房">房型</a>
                    </dd>
                </dl>
            </div>
        </div><!--list/-->
        <ul class="nav">
            <li><a href="<%=basePath %>user/toindex.do">首页</a></li>
            <li><a href="<%=basePath %>room/toprozu.do?sellType=租房">租房</a></li>
            <li><a href="<%=basePath %>room/toproxin.do?sellType=新房">新房</a></li>
            <li><a href="<%=basePath %>room/toproer.do?sellType=二手房">二手房</a></li>
            <li class="zhiding"><a href="javascript:;">指定购房</a></li>
            <li><a href="user_jingji.jsp">申请自由经纪人</a></li>
            <li><a href="about.jsp">关于我们</a></li>
            <div class="clears"></div>
        </ul><!--nav/-->
        <div class="clears"></div>
    </div><!--width1190/-->
</div><!--list-nav/-->
<div class="banner" style="background:url(${pageContext.request.contextPath}/images/ban.jpg) center center no-repeat;"></div>

</body>
</html>
