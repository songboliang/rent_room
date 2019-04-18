<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>房屋租赁系统</title>
    <link rel="stylesheet" type="text/css" href="/text2/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
	<style type="text/css">
	
	
	</style>
	<script type="text/javascript">
	var error="${param.error}";
	if(error=="zusuccess"){

	alert("该房已租赁，可在租赁列表中查看详情！");
	}else if(error=="checkoutsuccess"){
		alert("该合同已被终止！");
	}
		
	</script>
</head>
<body>
<div>
<div class="result-title">
<h1>在租列表</h1>
</div>
	<form id="houseForm" name="houseForm"
		action="/text2/zulist/findzulist.action"
		method=post >
						 <div class="result-title">
                    <div class="result-list">
                      
                        
                    </div>
                </div>

					<div class="result-content">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr
									style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>房屋id</td>
									<td>地址</td>
									<td>价格</td>
									<td>租赁人</td>
									<td>租赁人身份证号</td>
									<td>操作</td>
									
								</tr>
								<c:forEach items="${sessionScope.page.beanList}" var="zulist">
								
									<tr
										style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
										<td>${zulist.roomname }</td>

										<td>${zulist.address}</td>
										
										<td>${zulist.price}</td>
										<td>${zulist.lessee}</td>
										<td>${zulist.lesseeCard}</td>
										<td><a class="link-update"
											href="../contract/seehetong.do?contractId=${zulist.contractId }">查看合同</a>
											&nbsp;&nbsp; 
											
											<a class="link-del"
											 href="../contract/deletehetong.do?contractId=${zulist.contractId }"
											onclick="return window.confirm('确定要终止合同吗？')">终止合同</a></td>
										
										
									</tr>

								</c:forEach>

							</tbody>
						</table>
						</div>
					

						<tr>
						<tr>
							<span id=pagelink>
								<div style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right; margin-top:10px">
									共[<B>${sessionScope.page.totalCount}</B>]条记录，共[<B>${sessionScope.page.totalPage}</B>]页
									,

									<c:if test="${ sessionScope.page.pageCode > 1 }">
										[<A href="javascript:cancelSubscribe(${sessionScope.page.pageCode-1})">前一页</A>]
									</c:if>
										<input type="hidden" name="page" id="page" value=""/>
									第<B>${sessionScope.page.pageCode}</B>页

									<c:if test="${ sessionScope.page.pageCode< sessionScope.page.totalPage }">
										[<A href="javascript:to_page(${sessionScope.page.pageCode+1})">后一页</A>]
									</c:if>
									
								</div>
							</span>
						
						</tr>
						</tbody>
					
					

					
						</tbody>
				

					</form>
</div>
 <script language=javascript>
	// 提交分页的查询的表单
	function to_page(page) {
		if (page) {
			$("#page").val(page);
		}
		document.houseForm.submit();
	}
</script>
</body>
</html>