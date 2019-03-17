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
   <form action="#" method="get" class="pro-search">
    <table>
     <tr>
      <th>房源区域：</th>
      <td>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&addressName=智慧园">智慧园</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&addressName=立民村">立民村</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&addressName=塘口村">塘口村</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&addressName=勤劳村">勤劳村</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&addressName=芦胜村">芦胜村</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&addressName=知新村">知新村</a>
      </td>
     </tr>
     <tr>
      <th>租金：</th>
      <td>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&price=500-1000">500-1000</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&price=1000-2000">1000-2000</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&price=2001-3000">2001-3000</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&price=3001-4000">3001-4000</a>
       <input type="text" class="protext" /> - <input type="text" class="protext" /> 元 
       <input type="submit" class="proSub"  value="确定" />
      </td>
     </tr>
     <tr>
      <th>面积：</th>
      <td>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&area=10-20">10平方</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&area=21-40">20-40平方</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&area=41-60">41-60平方</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&area=61-80">61-80平方</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&area=81-500">100平方以上</a>
      </td>
     </tr>
     <tr>
      <th>房型：</th>
      <td>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房" class="pro-cur">不限</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&houseType=一室一厅">一室一厅</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&houseType=两室一厅">两室一厅</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&houseType=3室一厅">3室一厅</a>
       <a href="<%=basePath %>room/toprozu.do?sellType=租房&houseType=一室一厅一卫">一室一厅一卫</a>
      </td>
     </tr>
    </table>
    <div class="paixu">
     <strong>排序：</strong>
     <a href="<%=basePath %>room/toprozu.do?sellType=租房" class="pai-cur">默认</a>
     <a href="<%=basePath %>room/toprozu.do?sellType=租房">价格 &or;</a>
     <a href="<%=basePath %>room/toprozu.do?sellType=租房">最新 &or;</a>
    </div>
   </form><!--pro-search/-->
  </div><!--width1190/-->
  <div class="width1190">
   <div class="pro-left">
    <c:forEach  items="${sessionScope.page.beanList}"  var="proinfo" varStatus="status">
     <dl>
      <dt><a href="<%=basePath %>room/toproinfo.do?roomId=${proinfo.roomId}"><img src="${pageContext.request.contextPath}/image/${proinfo.images[0].img_name}" width="286" height="188" /></a></dt>
      <dd>
       <h3><a href="<%=basePath %>room/toproinfo.do?roomId=${proinfo.roomId}">房间号：${proinfo.name} ${proinfo.houseType} ${proinfo.area}平 </a></h3>
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
    <jsp:include page="/common/page.jsp"></jsp:include>
   </div><!--pro-left/-->
   <div class="pro-right">
    <h2 class="right-title">新上房源</h2>
    <div class="right-pro">
     <dl>
      <dt><a href="proinfo.jsp"><img src="images/fang8.jpg" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
       <div class="pro-fang">一室一厅 38平 南</div>
       <div class="right-price">1100元/月</div>
      </dd>
     </dl>
     <dl>
      <dt><a href="proinfo.jsp"><img src="images/fang7.jpg" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
       <div class="pro-fang">一室一厅 38平 南</div>
       <div class="right-price">1100元/月</div>
      </dd>
     </dl>
     <dl>
      <dt><a href="proinfo.jsp"><img src="images/fang6.jpg" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
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
