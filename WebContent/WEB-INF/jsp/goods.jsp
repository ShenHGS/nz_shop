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
	<title>农职1802SSM电商项目后台管理系统</title>
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
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action">电商项目后台管理系统 v2.0</a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张经理</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上开会，讨论一下下个月工作的事...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
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
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
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
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.user_name}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/customer/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 客户管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 客户拜访
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/user/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 用户管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/category/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 商品类型管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/goods/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 商品管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/orders/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 订单管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/notice/list.action" >
				      <i class="fa fa-dashboard fa-fw" ></i> 公告管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/t_member/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 会员管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/buycar/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 购物车管理
				    </a>
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/salesList/list.action">
				      <i class="fa fa-dashboard fa-fw" ></i> 销售板单
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 商品列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">商品管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<%-- <div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/goods/getGoodsById.action">
					<div class="form-group">
						<label for="gid">商品名称</label> 
						<input type="text" class="form-control" id="gid" 
						                   value="${gid}" name="gid" />
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div> --%>
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/goods/list.action">
					<div class="form-group">
						<label for="gname">商品名称</label> 
						<input type="text" class="form-control" id="gname" 
						                   value="${gname}" name="gname" />
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newUserDialog" onclick="clearGoods()">新建</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">商品信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>ID</th>
								<th>商品名称</th>
								<th>现价</th>
								<th>进价</th>
								<th>商品描述</th>
								<th>库存</th> 
								<th>商品标签</th>
								<th>进货时间</th>
								<th>点击量</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.gid}</td>
									<td>${row.gname}</td>
									<td>${row.price}</td>
									<td>${row.inprice}</td>
									<td>${row.description}</td>
									<td>${row.stock}</td>
									<td>${row.identifier}</td>
									<td>${row.inTime}</td>
									<td>${row.hits}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#UserEditDialog" onclick= "editGoods(${row.gid})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteGoods(${row.gid})">下架</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<abkj:page url="${pageContext.request.contextPath }/goods/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 商品列表查询部分  end-->
</div>
<!-- 创建商品模态框 -->
<div class="modal fade" id="newUserDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">添加商品信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_goods_form">
					<div class="form-group">
						<label for="new_gname" class="col-sm-2 control-label">
						    商品名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_gname" placeholder="商品名称" name="gname" />
						</div>
					</div> 
					<div class="form-group">
						<label for="new_price" class="col-sm-2 control-label">现价</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_price" placeholder="现价" name="price" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_inprice" class="col-sm-2 control-label">进价</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_inprice" placeholder="进价" name="inprice"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_inTime" class="col-sm-2 control-label">进货时间</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="new_inTime" placeholder="进货时间" name="inTime"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_description" class="col-sm-2 control-label">商品描述</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_description" placeholder="商品描述" name="description"/>
						</div>
					</div>
					<div class="form-group" style="width:483px; ">
						<label for="new_status" style="padding:7px 15px 0 27px;">商品状态</label>
						<select	class="form-control" name="status" value="${status }">
							<option value=" ">--请选择--</option>
							<option value="0" <c:if test="${'0' eq status}">selected</c:if>>0 </option>
							<option value="1" <c:if test="${'1' eq status}">selected</c:if>>1 </option>
							<option value="2" <c:if test="${'2' eq status}">selected</c:if>>2 </option>
						</select>
					</div>
					<div class="form-group">
						<label for="new_stock" class="col-sm-2 control-label">库存</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_stock" placeholder="库存" name="stock"/>
						</div> 
					</div>
					<div class="form-group">
						<label for="new_identifier" class="col-sm-2 control-label">标签</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_identifier" placeholder="标签" name="identifier"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_hits" class="col-sm-2 control-label">点击量</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_hits" placeholder="点击量" name="hits"/>
						</div>
					</div>
					<div class="form-group">
						<label for="new_cid" class="col-sm-2 control-label">商品类型</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_cid" placeholder="商品类型" name="cid"/>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="insertGoods()">添加商品</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改商品模态框 -->
<div class="modal fade" id="UserEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改商品信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_goods_form">
					<input type="hidden" id="edit_gid" name="gid" value=""/>
					<div class="form-group">
						<label for="edit_gname" class="col-sm-2 control-label">
						    商品名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_gname" placeholder="商品名称" name="gname" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_price" class="col-sm-2 control-label">现价</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_price" placeholder="现价" name="price" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_inprice" class="col-sm-2 control-label">进价</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_inprice" placeholder="进价" name="inprice"/>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_inTime" class="col-sm-2 control-label">进货时间</label>
						<div class="col-sm-10">
							<input type="date" class="form-control" id="edit_inTime" placeholder="进货时间" name="inTime"/>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_description" class="col-sm-2 control-label">商品描述</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_description" placeholder="商品描述" name="description"/>
						</div>
					</div>
					<div class="form-group" style="width:500px;">
						<label for="edit_status" style="float:left;padding:7px 15px 0 27px;">商品状态</label>
						<select	class="form-control" name="status" value="${status }">
							<option value="0">--请选择--</option>
							<option value="1" <c:if test="${'0' eq status}">selected</c:if>>0 </option>
							<option value="2" <c:if test="${'1' eq status}">selected</c:if>>1 </option>
							<option value="3" <c:if test="${'2' eq status}">selected</c:if>>2 </option>
						</select>
					</div>
					<div class="form-group">
						<label for="edit_stock" class="col-sm-2 control-label">库存</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_stock" placeholder="库存" name="stock"/>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_identifier" class="col-sm-2 control-label">标签</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_identifier" placeholder="标签" name="identifier"/>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_hits" class="col-sm-2 control-label">点击量</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_hits" placeholder="点击量" name="hits"/>
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateGoods()">保存修改</button>
			</div>
		</div>
	</div>
</div>
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
<!-- 编写js代码 -->
<script type="text/javascript">
//清空新建商品窗口中的数据
	function clearGoods() {
	    $("#new_gname").val("");
	    $("#new_price").val("")
	    $("#new_inprice").val("")
	    $("#new_description").val("");
	    $("#new_status").val("");
	    $("#new_stock").val("");
	    $("#new_identifier").val("");
	    $("#new_inTime").val("");
	    $("#new_hits").val("");
	}
	// 添加商品
	function insertGoods() {
	$.post("<%=basePath%>goods/insert.action",
	$("#new_goods_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("商品添加成功！");
	            window.location.reload();
	        }else{
	            alert("商品添加失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的商品信息
	function editGoods(gid) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>goods/getGoodsById.action",
	        data:{"gid":gid},
	        success:function(data) {
	        	$("#edit_gid").val(data.gid);
	        	$("#edit_gname").val(data.gname);
	    	    $("#edit_price").val(data.price)
	    	    $("#edit_inprice").val(data.inprice)
	    	    $("#edit_description").val(data.description);
	    	    $("#edit_status").val(data.status);
	    	    $("#edit_stock").val(data.stock);
	    	    $("#edit_identifier").val(data.identifier);
	    	    $("#edit_inTime").val(data.inTime);
	    	    $("#edit_hits").val(data.hits);
	        }
	    });
	}
    // 修改商品信息
	function updateGoods() {
		$.post("<%=basePath%>goods/update.action",$("#edit_goods_form").serialize(),function(data){
			if(data =="OK"){
				alert("商品信息更新成功！");
				window.location.reload();
			}else{
				alert("商品信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 商品删除
	function deleteGoods(gid) {
	    if(confirm('确实要下架该商品吗?')) {
	$.post("<%=basePath%>goods/delete.action",{"gid":gid},
	function(data){
	            if(data =="OK"){
	                alert("商品下架成功！");
	                window.location.reload();
	            }else{
	                alert("下架商品失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>