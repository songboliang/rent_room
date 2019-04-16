<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path
            + "/";
%>
<html>
<body>
<!--翻页-->
<form class="listForm" method="post" action="<%=basePath %>room/toprozu.do?sellType=租房">
    <div class="row" >
        <div class="form-inline">
            <label style="font-size:14px;margin-top:22px;">
                <strong>共<b>${sessionScope.page.totalCount}</b>条记录，共<b>${sessionScope.page.totalPage}</b>页</strong>
                &nbsp;
                &nbsp;
                <strong>每页显示</strong>
                <input name="pageCode" value="${sessionScope.page.pageCode}" hidden="hidden"/>
                <select class="form-control" name="pageSize">
                    <option value="2"
                            <c:if test="${sessionScope.page.pageSize == 2}">selected</c:if> >2
                    </option>
                    <option value="3"
                            <c:if test="${sessionScope.page.pageSize == 3}">selected</c:if> >3
                    </option>
                    <option value="4"
                            <c:if test="${sessionScope.page.pageSize == 4}">selected</c:if> >4
                    </option>
                    <option value="5"
                            <c:if test="${sessionScope.page.pageSize == 5}">selected</c:if> >5
                    </option>
                </select>
                <strong>条</strong>
                &nbsp;
                &nbsp;
                <strong>到第</strong>&nbsp;<input type="text" size="3" id="page" name="pageCode"
                                                class="form-control input-sm"
                                                style="width:11%"/>&nbsp;<strong>页</strong>
                &nbsp;
                <button type="submit" class="btn btn-sm btn-info">GO!</button>
            </label>

            <ul class="pagination" style="float:right;" >
                <li>
                    <a href="<%=basePath %>room/toprozu.do?sellType=租房&pageCode=1"><strong>首页</strong></a>
                </li>
                <li>
                    <c:if test="${sessionScope.page.pageCode > 2}">
                        <a href="<%=basePath %>room/toprozu.do?sellType=租房&pageCode=${sessionScope.page.pageCode - 1}">&laquo;</a>
                    </c:if>
                </li>

                <!-- 写关于分页页码的逻辑 -->
                <c:choose>
                    <c:when test="${sessionScope.page.totalPage <= 5}">
                        <c:set var="begin" value="1"/>
                        <c:set var="end" value="${sessionScope.page.totalPage}"/>
                    </c:when>
                    <c:otherwise>
                        <c:set var="begin" value="${sessionScope.page.pageCode - 1}"/>
                        <c:set var="end" value="${sessionScope.page.pageCode + 3}"/>

                        <!-- 头溢出 -->
                        <c:if test="${begin < 1}">
                            <c:set var="begin" value="1"/>
                            <c:set var="end" value="5"/>
                        </c:if>

                        <!-- 尾溢出 -->
                        <c:if test="${end > sessionScope.page.totalPage}">
                            <c:set var="begin" value="${sessionScope.page.totalPage -4}"/>
                            <c:set var="end" value="${sessionScope.page.totalPage}"/>
                        </c:if>
                    </c:otherwise>
                </c:choose>

                <!-- 显示页码 -->
                <c:forEach var="i" begin="${begin}" end="${end}">
                    <!-- 判断是否是当前页 -->
                    <c:if test="${i == requestScope.page.pageCode}">
                        <li class="active"><a href="javascript:void(0);">${i}</a></li>
                    </c:if>
                    <c:if test="${i != requestScope.page.pageCode}">
                        <li>
                            <a href="<%=basePath %>room/toprozu.do?sellType=租房&pageCode=${i}&pageSize=${sessionScope.page.pageSize}">${i}</a>
                        </li>
                    </c:if>
                </c:forEach>

                <li>
                    <c:if test="${sessionScope.page.pageCode < sessionScope.page.totalPage}">
                        <a href="<%=basePath %>room/toprozu.do?sellType=租房&pageCode=${sessionScope.page.pageCode + 1}">&raquo;</a>
                    </c:if>
                </li>
                <li>
                    <a href="<%=basePath %>room/toprozu.do?sellType=租房&pageCode=${sessionScope.page.totalPage}"><strong>末页</strong></a>
                </li>
            </ul>
        </div>
    </div>
</form>
</body>
</html>
