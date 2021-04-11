<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ page import="java.sql.ResultSet"%><%-- 导入java.sql.ResultSet类 --%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- 创建com.tools.ConnDB类的对象 --%>
<jsp:useBean id="conn" scope="page" class="com.abkj.common.utils.ConnDB" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib prefix="abkj" uri="http://abkj.com/common/"%>
<head>
<link rel="stylesheet" type="text/css" href="../css/tbCar.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
</head>
<body>


	<!-- 头部 -->
	<jsp:include page="../../home-header.jsp"/>	
	<!-- 头部结束 -->
	<FORM method=post name=form1 id="form1" action="${pageContext.request.contextPath }/order/action.action">
	<div class="row">
		<h1 class="row_title">我的购物车</h1>
		<div class="tbcar_tablediv">
			<table class="tbcar_table">
				<thead>
					<tr class="tbcar-tr-1">
						<td class="tbcar-center">商品</td>
						<td class="tbcar-quantity">数量</td>
						<td class="tbcar-price">单价</td>
					</tr>
				</thead>
				<tbody>
					<!-- 显示一条商品信息 -->
				<c:forEach items="${goods}" var="goods" varStatus="loop">
					<tr class="tbcar-tr-2">
						<td class="tbcar-img">
						<img width="60px" style="vertical-align: middle;" src="${pageContext.request.contextPath}/images/goods/${goods.pic}">
								${goods.gname}
								</td>
							
						<td class="tbcar-quantity">
						${Shopcart[loop.count-1].num}
						</td>
						
						<td class="tbcar-price">
						${goods.inprice}
						</td>
					</tr>
							</c:forEach>
				</tbody>

			</table>

		</div>
	</div>

	<div class="row_buttom">
		<h1 class="row_sum" id="row_sum"></h1>
	</div>

	<div class="buttons">
		<div class="btn-up">
			<a href="${pageContext.request.contextPath}/tbCar/gototbCar.action" class="btn-1" onclick="openwindow()">结账</a>
		</div>
		<div class="btn-del">
			<a href="${pageContext.request.contextPath }/tbCar/delete.action" class="btn-1" onclick="">清空购物车</a>
		</div>
		<div class="btn-back">
			<a href="../indexHome.jsp" class="btn-1">继续购物</a>
		</div>
	</div>
      <INPUT type=text name="inboxname" style="display:none;">
      <INPUT type=text name="inboxtel" style="display:none;">
	  <INPUT type=text name="inboxaddr" style="display:none;">
	  <INPUT type=text name="addr" style="display:none;">
   </FORM>
			<!-- 尾部	 -->
 	<jsp:include page="../../home-footer.jsp"/>
</body>
</html>



<script type="text/javascript">
			var sum =0;
<c:forEach items="${goods}" var="goods" varStatus="loop">
			var mid = "${Shopcart[loop.count-1].mid}"
			var num = "${Shopcart[loop.count-1].num}"
			var price ="${goods.inprice}"
				var sum = sum +num *price;
</c:forEach>
			document.getElementById("row_sum").innerHTML = "总计："+sum+"元";
			if (mid != "" && mid != null) {
			       setCookie("mid", mid, 30);
			     }

		function setCookie(mid,midvalue,exdays) {
			  var d = new Date();
			  d.setTime(d.getTime() + (exdays*24*60*60*1000));
			  var expires = "expires=" + d.toGMTString();
			  document.cookie = mid + "=" + midvalue + ";" + expires + ";path=/";
			}
		
		function openwindow(){
	     window.open ('../address.jsp','Sample','fullscreen=3,toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=no,resizable=no, copyhistory=no,width=600,height=400,left=200,top=300');
		/* window.showModalDialog("address.jsp","status:no;scroll:no;dialogWidth:600px;dialogHeight:400px"); */
		}
		 function opensub(){
			 document.form1.submit();//提交表单
			      }
		</script>