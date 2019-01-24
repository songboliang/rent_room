<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<html>
<body>
<div class="header">
    <div class="width1190">
        <div class="fl">欢迎来到邻居大妈！</div>
        <div class="fr">
            <c:if test = '${sessionScope.userInfo == null}' >
                <a href="login.htm">登录</a> |
                <a href="register.htm">注册</a>
            </c:if>
            <c:if test= '${sessionScope.userInfo != null}'>
                ${sessionScope.userInfo.username},欢迎登录   | <a href="login.htm">退出</a>
            </c:if>
        </div>
        <div class="clears"></div>
    </div><!--width1190/-->
</div><!--header/-->
</body>
</html>
