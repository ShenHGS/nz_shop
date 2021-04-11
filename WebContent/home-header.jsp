<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/header--footer.css"
	type=text/css rel=stylesheet>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <a  	href="${pageContext.request.contextPath}/index.jsp?pa=<%=1%>">11</a> --%>
	<div id="header" class="d1">
		<a href="${pageContext.request.contextPath}/indexHome.jsp"> <img
			id="homelogo"
			src="${pageContext.request.contextPath}/images/homelogo.png" alt="">
		</a>


		<div id="h_a">
			<a id="a2"
				href="${pageContext.request.contextPath}/index.jsp?pa=<%=5%>">注册</a>
			<a id="a3"
				href="${pageContext.request.contextPath}/index.jsp?pa=<%=6%>">登录</a>
		</div>
		<div>
			<ul id="h_ul">
				<li><a id="a4" href="${pageContext.request.contextPath}/home/selectGoodsType.action">商品</a></li>
				<li><a id="a5" href="${pageContext.request.contextPath}/tbCar/gototbCar.action">购物车</a></li>
				<li><a id="a6" href="${pageContext.request.contextPath}/collect.jsp">收藏夹</a></li>
				<li><a id="a7" href="${pageContext.request.contextPath}/order/selectOrders.action">订单</a></li>
				<li><a id="a8"
					href="${pageContext.request.contextPath}/home/gotoSuccess.action">会员中心</a></li>
					<li><a id="a9" href="${pageContext.request.contextPath}/notices/selectNoticeType.action">公告</a></li>
			</ul>
		</div>
		<div id="h_s">
			<input type="text" id="serch" placeholder="搜索"> <a href="">
				<img id="fd" alt=""
				src="${pageContext.request.contextPath}/images/fd.png">
			</a>
			<span style="color:#ffffff;margin-right:30px;">当前用户:${TMEMBER_SESSION.loginname}</span> 
		</div>
	</div>
</body>
</html>