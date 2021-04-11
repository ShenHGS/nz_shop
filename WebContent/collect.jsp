<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.Vector"%>
<%@ page import="com.abkj.core.po.Goods"%>
<%@page import="com.abkj.core.po.t_member"%>
<jsp:useBean id="conn" scope="page" class="com.abkj.common.utils.ConnDB" />
<%@ page import="java.sql.ResultSet"%><%-- 导入java.sql.ResultSet类 --%>
<%


%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<%
		String sMID="0";
		ResultSet rs = conn.executeQuery(
			"select * from collect t1,t_member t2,t_goods t3 where t1.gid=t3.gid and t1.mid=t2.mid and t2.mid="+sMID);
		rs.last();
		int gid = 0;
		String gname = "";
		float price = 0;
%>

<!DOCTYPE HTML>
<html>

<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<title>收藏夹</title>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<link href="<%=basePath%>css/tbcol.css" rel="stylesheet" />
</head>
<body>
<!-- 头部 -->
	<jsp:include page="home-header.jsp"/>	
	<!-- 头部结束 -->
<div id="mr-mainbody" class="container mr-mainbody">
<!-- 显示订单列表 -->
<div class="row">
  <div class="col-lg-12">
  <h2 class="row_titler">我的收藏夹</h2><hr>
	<div class="panel panel-default">
		<div class="panel-heading">收藏列表</div>
		<!-- /.panel-heading -->
				<table class="table table-bordered">
					<thead>
						<tr>
							<td>商品名称</td>
							<td>单价</td>
							<td>操作</td>
						</tr>
					</thead>
					<tbody>
							<%
								while (rs.next()) {		
										gname = rs.getString("gname");
										price = rs.getFloat("price");
										String id =rs.getString("ID");
										
							%>
					<tr>
						
						</td>
						<td class="text-center name"><%=gname%></td>													
						<td class="text-center quantity"><%=price%>元</td>
						<td><button type="button" onclick="Bookmark_delet(<%=id%>)" data-toggle="tooltip"
						class="btn" > 移除收藏夹<i class="fa fa-heart"></i></button></td>
					</tr>
					<%
						}
					%>
		</tbody>
	</table>
		<%-- <div class="col-md-12 text-right">
			<abkj:page url="${pageContext.request.contextPath }/collect/list.action" />
		</div> --%>
		<!-- /.panel-body -->
			</div>	
			<!-- /.panel -->
		</div>
		<!-- /.col-lg-12 -->
	</div>
</div>
</body>
</html>
<!-- 尾部	 -->
 <jsp:include page="home-footer.jsp"/>
 <!-- 尾部结束 -->
