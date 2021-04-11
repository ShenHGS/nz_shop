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
<%-- <%
	String username = (String) session.getAttribute("loginname");//获取会员账号
	//如果没有登录，将跳转到登录页面
	if (username == "" || username == null) {
		response.sendRedirect("login.jsp");//重定向页面到会员登录页面
		return;//返回
	} %> --%>
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
	<FORM method=post name=form1 id="form1" action="">
	<div class="row">
		<h1 class="row_title">我的购物车</h1>
		<div class="tbcar_tablediv">
			<table class="tbcar_table">
				<thead>
				</thead>
				<tbody>
					<!-- 遍历购物车中的商品并显示 -->
					<!-- 显示一条商品信息 -->
					<!-- 显示一条商品信息 -->
							<td class ="notbCar" style="width: 80%;height:500px;text-align: center;color:#999; font-size: 18px;">您还没添加商品哦！</td>
					<!-- //遍历购物车中的商品并显示 -->
				</tbody>

			</table>

		</div>
	</div>



	<div class="buttons">
		<div class="btn-up">
			<a href="" class="btn-1" onclick="openwindow()">结账</a>
		</div>
		<div class="btn-del">
			<a href="" class="btn-1" onclick="openwindow()">清空购物车</a>
		</div>
		<div class="btn-back">
			<a href="${pageContext.request.contextPath}/indexHome.jsp" class="btn-1">继续购物</a>
		</div>
	</div>
      <INPUT type=text name="inboxname" style="display:none;">
      <INPUT type=text name="inboxtel" style="display:none;">
	<INPUT type=text name=inboxemail style="display:none;">
   </FORM>
			<!-- 尾部	 -->
 	<jsp:include page="../../home-footer.jsp"/>
</body>
</html>
<script type="text/javascript">
function openwindow(){
	alert("您的购物车还没有商品！");
}
</script>

