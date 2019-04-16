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
	<script type="text/javascript">
	var error="${param.error}";
	if(error=="deletesuccess"){

	alert("删除成功！");
	}
		
	</script>
</head>
<body>
<div>
<div class="result-title">
<h1>用户列表</h1>
</div>
	<form id="houseForm" name="houseForm"
		action="/user/findalluserlist.do"
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
									<td>租客用户名</td>
									<td>租客姓名</td>
									<td>租客qq</td>
									<td>账户状态</td>
									
									
									<td>操作</td>
								
									
								</tr>
								<c:forEach items="${sessionScope.page.beanList}" var="userlist">
									<tr
										style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
										<td>${userlist.phone}</td>

										<td>${userlist.username}</td>
										<td>${userlist.qq}</td>
										<td>${userlist.status}</td>

										<td>
										
													<a class="link-update"
											href="/text2/deleteuserlist.action?id=${userlist.id}"
											onclick="return window.confirm('确定删除吗？')">删除</a>
										
												
											
									</td>		
										
										
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