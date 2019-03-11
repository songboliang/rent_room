<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%@ include  file="./common/lable.jsp"%>
<%
 String path = request.getContextPath();
 String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<body>
<jsp:include page="./common/head.jsp"/>
 <div class="logo-phone">
  <div class="width1190">
   <h1 class="logo"><a href="index.jsp"><img src="images/logo.png" width="163" height="59" /></a></h1>
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
      <dt><a href="pro_zu.jsp">租房</a></dt>
      <dd>
       <a href="pro_zu.jsp">租金</a>
       <a href="pro_zu.jsp">出租方式</a>
       <a href="pro_zu.jsp">面积</a>
       <a href="pro_zu.jsp">房型</a>
      </dd>
     </dl>
     <dl>
      <dt><a href="pro_xin.jsp">新房</a></dt>
      <dd>
       <a href="pro_xin.jsp">价格</a>
       <a href="pro_xin.jsp">面积</a>
       <a href="pro_xin.jsp">房型</a>
      </dd>
     </dl>
     <dl>
      <dt><a href="pro_er.jsp">二手房</a></dt>
      <dd>
       <a href="pro_er.jsp">价格</a>
       <a href="pro_er.jsp">面积</a>
       <a href="pro_er.jsp">房型</a>
      </dd>
     </dl>
    </div>
   </div><!--list/-->
   <ul class="nav">
    <li><a href="index.jsp">首页</a></li>
    <li><a href="../room/topro_zu.do">租房</a></li>
    <li><a href="pro_xin.jsp">新房</a></li>
    <li><a href="pro_er.jsp">二手房</a></li>
    <li class="zhiding"><a href="javascript:;">指定购房</a></li>
    <li><a href="user_jingji.jsp">申请自由经纪人</a></li>
    <li><a href="about.jsp">关于我们</a></li>
    <div class="clears"></div>
   </ul><!--nav/-->
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--list-nav/-->
 <div class="banner" style="background:url(images/ban.jpg) center center no-repeat;"></div>
 
 <div class="content">
  <div class="width1190">
   <form action="#" method="get" class="pro-search">
    <table>
     <tr>
      <th>房源区域：</th>
      <td>
       <a href="javascript:;" class="pro-cur">不限</a>
       <a href="javascript:;">智慧园</a>
       <a href="javascript:;">立民村</a>
       <a href="javascript:;">塘口村</a>
       <a href="javascript:;">勤劳村</a>
       <a href="javascript:;">芦胜村</a>
       <a href="javascript:;">知新村</a>
      </td>
     </tr>
     <tr>
      <th>租金：</th>
      <td>
       <a href="javascript:;" class="pro-cur">不限</a>
       <a href="javascript:;">500-1000</a>
       <a href="javascript:;">10001-2000</a>
       <a href="javascript:;">2001-3000</a>
       <a href="javascript:;">3001-4000</a>
       <input type="text" class="protext" /> - <input type="text" class="protext" /> 元 
       <input type="submit" class="proSub"  value="确定" />
      </td>
     </tr>
     <tr>
      <th>出租方式：</th>
      <td>
       <a href="javascript:;" class="pro-cur">不限</a>
       <a href="javascript:;">短租</a>
       <a href="javascript:;">长租</a>
       <a href="javascript:;">合租</a>
       <a href="javascript:;">个人</a>
      </td>
     </tr>
     <tr>
      <th>面积：</th>
      <td>
       <a href="javascript:;" class="pro-cur">不限</a>
       <a href="javascript:;">10平方</a>
       <a href="javascript:;">20-40平方</a>
       <a href="javascript:;">41-60平方</a>
       <a href="javascript:;">61-80平方</a>
       <a href="javascript:;">100平方以上</a>
      </td>
     </tr>
     <tr>
      <th>房型：</th>
      <td>
       <a href="javascript:;" class="pro-cur">不限</a>
       <a href="javascript:;">一室一厅</a>
       <a href="javascript:;">两室一厅</a>
       <a href="javascript:;">3室一厅</a>
       <a href="javascript:;">一室一厅一卫</a>
      </td>
     </tr>
    </table>
    <div class="paixu">
     <strong>排序：</strong>
     <a href="javascript:;" class="pai-cur">默认</a>
     <a href="javascript:;">价格 &or;</a>
     <a href="javascript:;">最新 &or;</a>
    </div>
   </form><!--pro-search/-->
  </div><!--width1190/-->
  <div class="width1190">
   <div class="pro-left">
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang1.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
      <div class="pro-wei">
       <img src="images/weizhi.png" width="12" height="16" /> <strong class="red">智慧园</strong>
      </div>
      <div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
      <div class="pra-fa">发布人：张先生  发布时间：2015-12-03</div>
     </dd>
     <div class="price">¥ <strong>2890</strong><span class="font12">元/月</span></div>
     <div class="clears"></div>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang2.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
      <div class="pro-wei">
       <img src="images/weizhi.png" width="12" height="16" /> <strong class="red">智慧园</strong>
      </div>
      <div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
      <div class="pra-fa">发布人：张先生  发布时间：2015-12-03</div>
     </dd>
     <div class="price">¥ <strong>2890</strong><span class="font12">元/月</span></div>
     <div class="clears"></div>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang3.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
      <div class="pro-wei">
       <img src="images/weizhi.png" width="12" height="16" /> <strong class="red">智慧园</strong>
      </div>
      <div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
      <div class="pra-fa">发布人：张先生  发布时间：2015-12-03</div>
     </dd>
     <div class="price">¥ <strong>2890</strong><span class="font12">元/月</span></div>
     <div class="clears"></div>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang4.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
      <div class="pro-wei">
       <img src="images/weizhi.png" width="12" height="16" /> <strong class="red">智慧园</strong>
      </div>
      <div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
      <div class="pra-fa">发布人：张先生  发布时间：2015-12-03</div>
     </dd>
     <div class="price">¥ <strong>2890</strong><span class="font12">元/月</span></div>
     <div class="clears"></div>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang5.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
      <div class="pro-wei">
       <img src="images/weizhi.png" width="12" height="16" /> <strong class="red">智慧园</strong>
      </div>
      <div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
      <div class="pra-fa">发布人：张先生  发布时间：2015-12-03</div>
     </dd>
     <div class="price">¥ <strong>2890</strong><span class="font12">元/月</span></div>
     <div class="clears"></div>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang6.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
      <div class="pro-wei">
       <img src="images/weizhi.png" width="12" height="16" /> <strong class="red">智慧园</strong>
      </div>
      <div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
      <div class="pra-fa">发布人：张先生  发布时间：2015-12-03</div>
     </dd>
     <div class="price">¥ <strong>2890</strong><span class="font12">元/月</span></div>
     <div class="clears"></div>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang7.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp">中装一室一厅，楼层好，采光足，稀缺房源</a></h3>
      <div class="pro-wei">
       <img src="images/weizhi.png" width="12" height="16" /> <strong class="red">智慧园</strong>
      </div>
      <div class="pro-fang">一室一厅 38平 南 楼层中部/6层</div>
      <div class="pra-fa">发布人：张先生  发布时间：2015-12-03</div>
     </dd>
     <div class="price">¥ <strong>2890</strong><span class="font12">元/月</span></div>
     <div class="clears"></div>
    </dl>
    <jsp:include page="common/page.jsp"></jsp:include>
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
