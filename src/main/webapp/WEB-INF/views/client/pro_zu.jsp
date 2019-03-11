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
 
 <div class="footer">
  <div class="width1190">
   <div class="fl"><a href="index.jsp"><strong>邻居大妈</strong></a><a href="about.jsp">关于我们</a><a href="contact.jsp">联系我们</a><a href="user.jsp">个人中心</a></div>
   <div class="fr">
    <dl>
     <dt><img src="images/erweima.png" width="76" height="76" /></dt>
     <dd>微信扫一扫<br />房价点评，精彩发布</dd>
    </dl>
    <dl>
     <dt><img src="images/erweima.png" width="76" height="76" /></dt>
     <dd>微信扫一扫<br />房价点评，精彩发布</dd>
    </dl>
    <div class="clears"></div>
   </div>
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--footer/-->
 <div class="copy">Copyright@ 2015 邻居大妈 版权所有 沪ICP备1234567号-0&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a target="_blank" href="http://www.webqin.net/">秦王网络</a> </div>
 <div class="bg100"></div>
 <div class="zhidinggoufang">
  <h2>指定购房 <span class="close">X</span></h2>
  <form action="#" method="get">
   <div class="zhiding-list">
    <label>选择区域：</label>
    <select>
     <option>智慧园</option>
     <option>立民村</option>
     <option>塘口村</option>
     <option>勤劳村</option>
     <option>芦胜村</option>
     <option>知新村</option>
    </select>
   </div>
   <div class="zhiding-list">
    <label>方式：</label>
    <select>
     <option>租房</option>
     <option>新房</option>
     <option>二手房</option>
    </select>
   </div>
   <div class="zhiding-list">
    <label>联系方式：</label>
    <input type="text" />
   </div>
   <div class="zhidingsub"><input type="submit" value="提交" /></div>
  </form>
  <div class="zhidingtext">
   <h3>指定购房注意事宜：</h3>
   <p>1、请详细输入您所需要购买的房源信息(精确到小区)</p>
   <p>2、制定购房申请提交后，客服中心会在24小时之内与您取得联系</p>
   <p>3、如有任何疑问，请随时拨打我们的电话：400-000-0000</p>
  </div><!--zhidingtext/-->
 </div><!--zhidinggoufang/-->
</body>
</html>
