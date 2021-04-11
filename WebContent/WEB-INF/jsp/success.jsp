<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="abkj" uri="http://abkj.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html>
<head>

<link href="${pageContext.request.contextPath}/css/success.css" rel="stylesheet" type="text/css"/>
<meta charset="UTF-8">
<title>当前用户信息</title>
</head>
<body>
	<!-- 头部 -->
	<jsp:include page="../../home-header.jsp"/>	
	<!-- 头部结束 -->
	
	<div style="height:420px;">
	<ul class="dm_table">
		<li>昵称:<span>${TMEMBER_SESSION.name }</span></li>
		<li>性别:<span>${TMEMBER_SESSION.gender }</span></li>
		<li>电话:<span>${TMEMBER_SESSION.phone }</span></li>
		<li>邮箱:<span>${TMEMBER_SESSION.email }</span></li>
		<li>职业:<span>${TMEMBER_SESSION.salt }</span></li>
		<li>收货人:<span>${TMEMBER_SESSION.consignee }</span></li>
		<li>收获地址:<span>${TMEMBER_SESSION.address }</span></li>
		<li><a href="${pageContext.request.contextPath}/update.jsp">修改个人信息</a></li>
		<li><a href="${pageContext.request.contextPath}/updatepwd.jsp">修改密码</a></li>
		
	</ul>
		</div>
	<!-- 尾部	 -->
 <jsp:include page="../../home-footer.jsp"/>
</body>
<script type="text/javascript">

</script>
</html>
