<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="abkj" uri="http://abkj.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ page import="java.sql.ResultSet"%><%-- 导入java.sql.ResultSet类 --%>
<%-- 创建com.tools.ConnDB类的对象 --%>
<jsp:useBean id="conn" scope="page" class="com.abkj.common.utils.ConnDB" />
<!DOCTYPE html>
<html>
<head>
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<link href="${pageContext.request.contextPath}/css/hgoods.css"
	type=text/css rel=stylesheet>
<meta charset="UTF-8">
<title>商品列表</title>
<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<!-- 头部 -->
	<jsp:include page="home-header.jsp" />
	<!-- 头部结束 -->
	
<div id="g_d3">
			<p>
				<b>商品类型:</b>
				<span><a href="${pageContext.request.contextPath}/home/selectGoodsType.action">全部</a></span>
			    |<span><a href="${pageContext.request.contextPath}/home/selectGoodsType.action?cid=<%=1%>">手表</a></span> |
				<span><a href="${pageContext.request.contextPath}/home/selectGoodsType.action?cid=<%=2%>">手机</a></span> | <span><a
					href="${pageContext.request.contextPath}/home/selectGoodsType.action?cid=<%=3%>">相机</a></span>
			</p>

		</div>
	<div id="g_d1">
		
	<c:forEach items="${page.rows}" var="goodt">
		<div id="g_d2">
			<a id="g_a1" href="${pageContext.request.contextPath}/home/getGoodsById.action?gid=${goodt.gid}"> <img id="g_img"
				alt="图片显示错误" 
				src="${pageContext.request.contextPath}/images/goods/${goodt.pic}"> <span>${goodt.gname}</span>
			</a>
			<p>
				<span id="g_d2_s1">¥${goodt.inprice}</span> <span id="g_d2_s2">¥${goodt.price}</span>
			</p>
		</div>

</c:forEach>
		
		 
	</div>
	 <div id="goods_page">
						<abkj:page url="${pageContext.request.contextPath }/home/selectGoodsType.action" />
					</div>  
	<div>
		
	</div>






	<!-- 尾部	 -->
	<jsp:include page="home-footer.jsp" />

</body>
</html>