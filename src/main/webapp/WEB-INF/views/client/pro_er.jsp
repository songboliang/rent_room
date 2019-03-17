<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
         + path + "/";
%>
<%@ include  file="/common/lable.jsp"%>

<body>
<jsp:include page="/common/head.jsp"/>
 <div class="content">
  <div class="width1190">
   <form action="#" method="get" class="pro-search">
    <table>
     <tr>
      <th>房源区域：</th>
      <td>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&addressName=智慧园">智慧园</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&addressName=立民村">立民村</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&addressName=塘口村">塘口村</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&addressName=勤劳村">勤劳村</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&addressName=芦胜村">芦胜村</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&addressName=知新村">知新村</a>
      </td>
     </tr>
     <tr>
      <th>价格：</th>
      <td>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&price=40-60">40-60</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&price=60-100">60-100</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&price=100-200">100-200</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&price=200-1000">200万以上</a>
       <input type="text" class="protext" /> - <input type="text" class="protext" /> 万
       <input type="submit" class="proSub"  value="确定" />
      </td>
     </tr>
     <tr>
      <th>面积：</th>
      <td>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&area=20-40">20-40平方</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&area=41-60">41-60平方</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&area=61-80">61-100平方</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&area=100-1000">100平方以上</a>
      </td>
     </tr>
     <tr>
      <th>房型：</th>
      <td>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&houseType=一室一厅">一室一厅</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&houseType=两室一厅">两室一厅</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&houseType=3室一厅">3室一厅</a>
       <a href="<%=basePath %>room/toproer.do?sellType=二手房&houseType=一室一厅一卫">一室一厅一卫</a>
      </td>
     </tr>
    </table>
    <div class="paixu">
     <strong>排序：</strong>
     <a href="<%=basePath %>room/toproer.do?sellType=二手房" class="pai-cur">默认</a>
     <a href="<%=basePath %>room/toproer.do?sellType=二手房">价格 &or;</a>
     <a href="<%=basePath %>room/toproer.do?sellType=二手房">最新 &or;</a>
    </div>
   </form><!--pro-search/-->
  </div><!--width1190/-->
  <div class="width1190">
   <div class="pro-left">
    <c:forEach  items="${sessionScope.page.beanList}"  var="proinfo" varStatus="status">
     <dl>
      <dt><a href="proinfo.jsp"><img src="${pageContext.request.contextPath}/image/${proinfo.images[0].img_name}" width="286" height="188" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">房间号：${proinfo.name} ${proinfo.houseType} ${proinfo.area}平 </a></h3>
       <div class="pro-wei">
        <img src="${pageContext.request.contextPath}/images/weizhi.png" width="12" height="16" /> <strong class="red">${proinfo.address.addressName}</strong>
       </div>
       <div class="pro-fang">详细地址:${proinfo.addressDesc}</div>
       <div class="pra-fa">房东联系方式：${proinfo.phone}  发布时间：${proinfo.createDate} </div>
      </dd>
      <div class="price">¥ <strong>${proinfo.price}</strong><span class="font12">元/月</span></div>
      <div class="clears"></div>
     </dl>
    </c:forEach>
    <!--翻页-->
    <form class="listForm" method="post" action="<%=basePath%>/customer/findByPage.do">
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
         <a href="<%=basePath%>/customer/findByPage.do?pageCode=1"><strong>首页</strong></a>
        </li>
        <li>
         <c:if test="${sessionScope.page.pageCode > 2}">
          <a href="<%=basePath%>/customer/findByPage.do?pageCode=${sessionScope.page.pageCode - 1}">&laquo;</a>
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
           <a href="<%=basePath%>/customer/findByPage.do?pageCode=${i}&pageSize=${sessionScope.page.pageSize}">${i}</a>
          </li>
         </c:if>
        </c:forEach>

        <li>
         <c:if test="${sessionScope.page.pageCode < sessionScope.page.totalPage}">
          <a href="<%=basePath%>/customer/findByPage.do?pageCode=${sessionScope.page.pageCode + 1}">&raquo;</a>
         </c:if>
        </li>
        <li>
         <a href="<%=basePath%>/customer/findByPage.do?pageCode=${sessionScope.page.totalPage}"><strong>末页</strong></a>
        </li>
       </ul>
      </div>
     </div>
    </form>
   </div><!--pro-left/-->
   <div class="pro-right">
    <h2 class="right-title">新上房源</h2>
    <div class="right-pro">
     <dl>
      <dt><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}"><img src="images/fang8.jpg" /></a></dt>
      <dd>
       <h3><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
       <div class="pro-fang">一室一厅 38平 南</div>
       <div class="right-price">1100元/月</div>
      </dd>
     </dl>
     <dl>
      <dt><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}"><img src="images/fang7.jpg" /></a></dt>
      <dd>
       <h3><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
       <div class="pro-fang">一室一厅 38平 南</div>
       <div class="right-price">1100元/月</div>
      </dd>
     </dl>
     <dl>
      <dt><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}"><img src="images/fang6.jpg" /></a></dt>
      <dd>
       <h3><a href="<%=basePath %>room/toproinfosell.do?roomId=${proinfo.roomId}">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
       <div class="pro-fang">一室一厅 38平 南</div>
       <div class="right-price">1100元/月</div>
      </dd>
     </dl>
    </div><!--right-pro/-->
   </div><!--pro-right/-->
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--content/-->

<jsp:include page="/common/tail.jsp"></jsp:include>
</body>
</html>
