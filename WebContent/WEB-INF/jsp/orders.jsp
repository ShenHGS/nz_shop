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
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>??????1802SSM??????????????????????????????</title>
	<!-- ??????css???????????? -->
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
<div id="wrapper">
  <!-- ??????????????? -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">?????????????????????????????? v2.0</a>
	</div>
	<!-- ??????????????????????????? -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- ???????????? start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>?????????</strong> <span class="pull-right text-muted">
								<em>??????</em>
							</span>
						</div>
						<div>??????????????????????????????????????????????????????...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>??????????????????</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- ???????????? end -->
		<!-- ???????????? start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>?????? 1</strong> 
								<span class="pull-right text-muted">??????40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">??????40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>?????? 2</strong> 
								<span class="pull-right text-muted">??????20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">??????20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>??????????????????</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- ???????????? end -->
		<!-- ???????????? start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> ????????? 
							<span class="pull-right text-muted small">4????????????</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> ????????? 
							<span class="pull-right text-muted small">4????????????</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> ????????? 
							<span class="pull-right text-muted small">4????????????</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> ??????????????? 
							<span class="pull-right text-muted small">4????????????</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>??????????????????</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- ???????????? end -->
		<!-- ??????????????????????????? start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               ?????????${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> ????????????</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>????????????
					</a>
				</li>
			</ul> 
		</li>
		<!-- ????????????????????????????????? -->
	</ul>
	<!-- ???????????????????????? start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="????????????...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/customer/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> ????????????
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> ????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/user/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> ????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/category/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> ??????????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/goods/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> ????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/orders/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> ????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/notice/list.action" >
				      <i class="fa fa-dashboard fa-fw" ></i> ????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/t_member/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> ????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/buycar/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> ???????????????
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/salesList/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> ????????????
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- ???????????????????????? end--> 
  </nav>
    <!-- ????????????????????????  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">????????????</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/orders/list.action">
					<div class="form-group">
						<label for="consignee">???????????????</label> 
						<input type="text" class="form-control" id="consignee" 
						                   value="${consignee }" name="consignee" />
					</div>
					<button type="submit" class="btn btn-primary">??????</button>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">????????????</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>??????ID</th>
								<th>??????ID</th>
								<th>??????????????????</th>															
								<th>???????????????</th>
								<th>????????????</th>
								<th>???????????????</th>
								<th>????????????</th>
								<th>??????</th>	
								<th>??????</th>					
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.oid}</td>
									<td>${row.mid}</td>
									<td>${row.create_time}</td>
									<td>${row.consignee}</td>
									<td>${row.address}</td>
									<td>${row.phone}</td>
									<td>${row.is_payed}</td>
									<td>${row.amount}</td>
									<td>${row.remarks}</td>
									<td>								
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteOrders(${row.oid})">??????</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<abkj:page url="${pageContext.request.contextPath }/orders/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- ????????????????????????  end-->
</div>

<!-- ??????js?????? -->
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
<!-- ??????js?????? -->
<script type="text/javascript">
	function clearOrders() {
	    $("#new_create_time").val("");
	    $("#new_consignee").val("")
	    $("#new_address").val("")
	    $("#new_phone").val("1")
	    $("#new_is_payed").val("1")
	    $("#new_amount").val("1")
	     $("#new_remarks").val("1")
	}
	// ??????id???????????????????????????
	function editOrders(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>orders/getOrdersById.action",
	        data:{"oid":oid},
	        success:function(data) {
	            $("#edit_oid").val(data.oid);
	            $("#edit_mid").val(data.mid);
	            $("#edit_create_time").val(data.create_time);
	            $("#edit_consignee").val(data.consignee);
	            $("#edit_address").val(data.address);
	            $("#edit_phone").val(data.phone);
	            $("#edit_is_payed").val(data.is_payed);
	            $("#edit_amount").val(data.amount)
	             $("#edit_remarks").val(data.remarks)
	        }
	    });
	}
	// ????????????
	function deleteOrders(oid) {
	    if(confirm('????????????????????????????')) {
	$.post("<%=basePath%>orders/delete.action",{"oid":oid},
	function(data){
	            if(data =="OK"){
	                alert("?????????????????????");
	                window.location.reload();
	            }else{
	                alert("?????????????????????");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>