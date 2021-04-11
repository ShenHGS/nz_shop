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
<!DOCTYPE HTML>
<html>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>css/tbcol.css" rel="stylesheet" />
</head>
<body>
<!-- 头部 -->
	<jsp:include page="../../home-header.jsp"/>	
	<!-- 头部结束 -->
<div id="mr-mainbody" class="container mr-mainbody">
<!-- 显示订单列表 -->
<div class="row">
  <div class="col-lg-12">
  <h2 class="row_titler">我的订单</h2><hr>
	<div class="panel panel-default">
		<div class="panel-heading">订单列表</div>
		<!-- /.panel-heading -->
				<table class="table table-bordered">
					<thead>
						<tr>
							<td>订单ID</td>
							<td>下单日期</td>
							<td>收货人</td>
							<td>收货地址</td>
							<td>手机号</td>
							<td>总件数</td>							
						</tr>
					</thead>
				<c:forEach items="${orders}" var="row">
					<tr>
						<td>${row.oid}</td>
						<td>${row.create_time}</td>
						<td>${row.consignee}</td>
						<td>${row.address}</td>
						<td>${row.phone}</td>
						<td>${row.amount}</td>						
					</tr>
				</c:forEach>
			</tbody>
	</table>
		<div class="col-md-12 text-right">
			<abkj:page url="${pageContext.request.contextPath }/order/list.action" />
		</div>
		<!-- /.panel-body -->
			</div>	
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>
</body>
</html>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 尾部	 -->
 <jsp:include page="../../home-footer.jsp"/>
 <!-- 尾部结束 -->
