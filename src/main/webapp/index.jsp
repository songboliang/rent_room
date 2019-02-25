<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<%@ include  file="./common/lable.jsp"%>
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
    <li><a href="pro_zu.jsp">租房</a></li>
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
   <h2 class="title">租房 <a href="pro_zu.jsp">更多&gt;&gt;</a></h2>
   <div class="index-fang-list">
    <c:forEach  items="${sessionScope.roomInfos}"  var="proinfo" varStatus="status">
        <c:if test="${status.index<4}">
        <dl>
            <dt><a href="proinfo.jsp"><img src="images/fang1.jpg" width="286" height="188" /></a></dt>
            <dd>
                <h3><a href="proinfo.jsp"></a>${proinfo.name}</h3>
                <div class="hui">${proinfo.price}￥ | ${proinfo.area} | 精装修</div>
            </dd>
        </dl>
        </c:if>
    </c:forEach>
    <div class="clears"></div>
   </div><!--index-fang-list/-->
   
   <h2 class="title">新房 <a href="pro_xin.jsp">更多&gt;&gt;</a></h2>
   <div class="index-fang-list">
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang5.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp"></a>虹桥乐亭</h3>
      <div class="hui">3室2厅2卫 | 147m² | 精装修</div>
     </dd>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang6.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp"></a>静安豪景</h3>
      <div class="hui">3室2厅2卫 | 147m² | 精装修</div>
     </dd>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang7.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp"></a>中凯城市之光(静安)</h3>
      <div class="hui">3室2厅2卫 | 147m² | 精装修</div>
     </dd>
    </dl>
    <dl>
     <dt><a href="proinfo.jsp"><img src="images/fang8.jpg" width="286" height="188" /></a></dt>
     <dd>
      <h3><a href="proinfo.jsp"></a>水塘小区</h3>
      <div class="hui">3室2厅2卫 | 147m² | 精装修</div>
     </dd>
    </dl>
    <div class="clears"></div>
   </div><!--index-fang-list/-->
   
   <h2 class="title">二手房 <a href="pro_er.jsp">更多&gt;&gt;</a></h2>
   <div class="index-ershou">
    <div class="in-er-left">
     <a href="proinfo.jsp"><img src="images/fangt1.jpg" width="380" height="285" /></a>
     <div class="in-er-left-text"><strong class="fl">闵行南方发的撒的发的司法</strong><strong class="fr alignRight">¥2841</strong></div>
    </div><!--in-er-left/-->
    <div class="in-er-right">
     <dl>
      <dt><a href="proinfo.jsp"><img src="images/fang1.jpg" width="150" height="115" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">浦东新区张江日水安华苑</a></h3>
       <div class="in-er-right-text">
        习近平强调，中方重视发展中南中方重视发展中南“同志加兄弟”的特殊关系。双方要坚持做
       </div>
       <div class="price">¥<strong>2890</strong></div>
      </dd>
      <div class="clears"></div>
     </dl>
     <dl>
      <dt><a href="proinfo.jsp"><img src="images/fang3.jpg" width="150" height="115" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">浦东新区张江日水安华苑</a></h3>
       <div class="in-er-right-text">
        习近平强调，中方重视发展中南中方重视发展中南“同志加兄弟”的特殊关系。双方要坚持做
       </div>
       <div class="price">¥<strong>2890</strong></div>
      </dd>
      <div class="clears"></div>
     </dl>
     <dl>
      <dt><a href="proinfo.jsp"><img src="images/fang8.jpg" width="150" height="115" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">浦东新区张江日水安华苑</a></h3>
       <div class="in-er-right-text">
        习近平强调，中方重视发展中南中方重视发展中南“同志加兄弟”的特殊关系。双方要坚持做
       </div>
       <div class="price">¥<strong>2890</strong></div>
      </dd>
      <div class="clears"></div>
     </dl>
     <dl>
      <dt><a href="proinfo.jsp"><img src="images/fang5.jpg" width="150" height="115" /></a></dt>
      <dd>
       <h3><a href="proinfo.jsp">浦东新区张江日水安华苑</a></h3>
       <div class="in-er-right-text">
        习近平强调，中方重视发展中南中方重视发展中南“同志加兄弟”的特殊关系。双方要坚持做
       </div>
       <div class="price">¥<strong>2890</strong></div>
      </dd>
      <div class="clears"></div>
     </dl>
     <div class="clears"></div>
    </div><!--in-er-right/-->
    <div class="clears"></div>
   </div><!--index-ershou/-->
  </div><!--width1190/-->
 </div><!--content/-->
 <div class="xinren">
  <div class="width1190">
   <dl style="background:url(images/icon1.jpg) left center no-repeat;">
    <dt>承诺</dt>
    <dd>真实可信100%真房源<br />链家承诺，假一赔百</dd>
   </dl>
   <dl style="background:url(images/icon2.jpg) left center no-repeat;">
    <dt>权威</dt>
    <dd>独家房源 覆盖全城<br />房源信息最权威覆盖最广</dd>
   </dl>
   <dl style="background:url(images/icon3.jpg) left center no-repeat;">
    <dt>信赖</dt>
    <dd>万名置业顾问 专业服务<br />百万家庭的信赖之选</dd>
   </dl>
   <dl style="background:url(images/icon4.jpg) left center no-repeat;">
    <dt>安全</dt>
    <dd>安心承诺 保驾护航<br />多重风险防范机制 无后顾之忧</dd>
   </dl>
   <div class="clears"></div>
  </div><!--width1190/-->
 </div><!--xinren/-->
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
