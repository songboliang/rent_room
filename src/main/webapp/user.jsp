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
   <div class="vip-left">
       <div class="vipNav">
        <h3 class="vipTitle">会员中心</h3>
        <dl>
         <dt class="vipIcon3">账户设置</dt>
          <dd>
           <a href="user.jsp" class="vipNavCur">我的资料</a>
           <a href="user_pwd.jsp">账户密码设置</a>
          </dd>
         <dt class="vipIcon1">我的邻居大妈</dt>
          <dd>
           <a href="user_guanzhu.jsp">关注房源</a>
           <a href="user_shenqing.jsp">申请社区自由经纪人</a>
           <a href="user_jingji.jsp">社区自由经纪人</a>
          </dd>
        </dl>
       </div><!--vipNav/-->
    </div><!--vip-left/-->
    <div class="vip-right">
     <h3 class="vipright-title">修改头像</h3>
     <form action="#" method="get">
     <dl class="vip-touxiang">
      <dt><img src="images/tx.jpg" width="100" height="100" /></dt>
      <dd>
       <h3><strong>点击选择文件上传头像</strong></h3>
       <div class="sctx"><input type="file" /><a href="javascript:;">上传</a></div>
       <p>图片格式：GIF、JPG、JPEG、PNG ，最适合尺寸100*100像素</p>
      </dd>
      <div class="clearfix"></div>
     </dl><!--vip-touxiang/-->
     </form>
     <h3 class="vipright-title">修改资料</h3>
     <table class="grinfo">
        <tbody>
        <tr>
        <th>手机号：</th>
        <td> <strong>18521032517</strong>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:;"><span style="color:#888;cursor:pointer">(修改手机号)</span></a>
        </td>
        </tr>
        <tr>
        <th><span class="red">*</span> 昵称：</th>
        <td>
        <input class="inp inw" type="text" id="title" value="185****2517" maxlength="14">
        </td>
        </tr>
        <tr>
        <th><span class="red">*</span> 性 &nbsp; &nbsp;别：</th>
        <td>
        <input type="radio" value="2" id="rbSex1" name="sex">
        <label for="rbSex1">女</label>
        <input type="radio" value="1" id="rbSex2" name="sex">
        <label for="rbSex2">男</label>
        <span id="Sex_Tip"></span>
        </td>
        </tr>
        <tr>
        <th><span class="red"></span> 年 &nbsp; &nbsp;龄：</th>
        <td>
        <input class="inp inw" type="text" id="age" value="0" onkeyup="this.value=this.value.replace(/[^\d]/g,'')">
        </td>
        </tr>
        
        
        <tr>
        <th>&nbsp;Q &nbsp; &nbsp;Q：</th>
        <td>
        <input class="inp inw" type="text" maxlength="15" value="" id="qq" onkeyup="return ValidateNumber(this,value)">
        </td>
        </tr>
        
        <tr>
        <th valign="top">个性签名：</th>
        <td>
        <textarea id="sign" class="grtextarea"></textarea>
        <br>
        <span class="fgrey">(128字符以内)</span>
        </td>
        </tr>
        <tr>
        <th>&nbsp;</th>
        <td colspan="2">
        <label class="butt" id="butt">
        <input type="submit" class="member_mod_buttom" onclick="mod_member()" value="完成修改" />
        </label>
        </td>
        </tr>
        </tbody>
      </table>
    </div><!--vip-right/-->
    <div class="clearfix"></div>
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
