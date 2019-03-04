<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>房屋租赁系统</title>
    <link rel="stylesheet" type="text/css" href="../css/common.css"/>
    <link rel="stylesheet" type="text/css" href="../css/index.css"/>
    <link rel="stylesheet" type="text/css" href="../css/main.css"/>
    <script type="text/javascript" src="../js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="../js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="../login_files/layui.js"></script>
    <script src="../js/imgUp.js"></script>
   <style>
   

.error {
  
  font-size:13px;
  color: red;
  
}

   </style>
<script type="text/javascript">
    $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单
        $("#myform").validate({

            rules : {
                name : {
                    required : true,
                },

                addressDesc : {
                    required : true,

                },
                area : {
                    required : true,
                    min: 0

                },
                price: {
                    required : true,
                    min: 0

                }

            },
            messages : {
                name : {
                    required : "房屋门牌号不能为空！",
                },

                addressDesc : {
                    required : "地址详细信息不能为空！",

                },
                area : {
                    required : "面积不能为空！",
                    min:"请输入正确的面积"

                },
                price: {
                    required :  "价格不能为空！",
                    min:"请输入正确的租金"

                }

            }
        });
    })


</script>
	
</head>
<body>

<div class="result-title">
<h1>添加房源</h1>
</div>
<div class="result-content">
<div class="sidebar-title">
        <form action="" method="post" id="myform" name="myform" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                                <th><i class="require-red">*</i>门牌号：</th>
                                <td>
                                    <input class="common-text required" value="${room.name}" id="name" name="name" size="50" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>地址：</th>
                                <td><input class="common-text" name="addressDesc" value="${room.addressDesc }" id="addressDesc" size="50" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>面积：</th>
                                <td><input class="common-text" name="area" value="${room.area }" id="area" size="50" type="text" ></td>
                            </tr>
                           <tr>
                                <th><i class="require-red">*</i>房东联系方式：</th>
                                <td><input class="common-text" name="phone" value="${room.phone }" id="phone" size="50" type="text"></td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>租金：</th>
                                <td><input class="common-text" name="price" value="${room.price }" id="price" size="50" type="text"></td>
                            </tr>
                                <tr>
                                    <th><i class="require-red">*</i>设施：</th>
                                    <td>
                                        <c:forEach items="${sessionScope.furnitureInfos}"  var="proinfo" varStatus="id">
                                            <input class="common-text" name="check" checked="checked" value="${proinfo.furnitureId}" id="check" size="10" type="checkbox" >${proinfo.furniturename}
                                        </c:forEach>
                                    </td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>房源区域：</th>
                                    <td>
                                        <select name="addressName" id="addressName" class="required">
                                            <c:forEach items="${sessionScope.addressInfos}" var="address" varStatus="id">
                                                <option value="${address.addId}" <c:if test="${address.addressName == address.addressName}">selected</c:if>>${address.addressName}</option>
                                            </c:forEach>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>出售方式：</th>
                                    <td>
                                        <select name="sellType" id="sellType" class="required">
                                            <option value="租房" <c:if test="${room.sellType == '租房'}">selected</c:if>>租房</option>
                                            <option value="新房" <c:if test="${room.sellType == '新房'}">selected</c:if>>新房</option>
                                            <option value="二手房" <c:if test="${room.sellType == '二手房'}">selected</c:if>>二手房</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>出售方式：</th>
                                    <td>
                                        <select name="houseType" id="houseType" class="required">
                                            <option value="一室一厅" <c:if test="${room.houseType == '一室一厅'}">selected</c:if>>一室一厅</option>
                                            <option value="两室一厅" <c:if test="${room.houseType == '两室一厅'}">selected</c:if>>两室一厅</option>
                                            <option value="三室一厅" <c:if test="${room.houseType == '三室一厅'}">selected</c:if>>三室一厅</option>
                                            <option value="一室一厅一卫" <c:if test="${room.houseType == '一室一厅一卫'}">selected</c:if>>一室一厅一卫</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th><i class="require-red">*</i>房屋展示图：</th>
                                    <td>
                                        <div class="z_photo upimg-div clear" >
                                        <section class="z_file fl">
                                            <img src="../img/a11.png" class="add-img">
                                            <input type="file" name="file" id="file" class="file" value="" accept="image/jpg,image/jpeg,image/png,image/bmp" multiple="multiple" />
                                        </section>
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                <th><i class="require-red">*</i>状态：</th>
                              <td>
                                <select name="status" id="status" class="required">
                                    <option value="未出租" <c:if test="${room.status == '未出租'}">selected</c:if>>未出租</option>
                                    <option value="已出租" <c:if test="${room.status == '已出租'}">selected</c:if>>已出租</option>
                                </select>
                            </td>
                            </tr>
								<tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" lay-submit="" lay-filter="login" id="login" type="submit"></input>

                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
							<tr>
                                <font id="error" color="red">${error }</font>
                            </tr>	
                        </tbody></table>
                </form>
          </div>
          </div>
<aside class="mask works-mask">
    <div class="mask-content">
        <p class="del-p ">您确定要删除作品图片吗？</p>
        <p class="check-p"><span class="del-com wsdel-ok">确定</span><span class="wsdel-no">取消</span></p>
    </div>
</aside>
</body>
</html>