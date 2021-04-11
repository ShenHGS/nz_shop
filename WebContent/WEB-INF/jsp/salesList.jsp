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
    <!-- 用户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">销售板单</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body">
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/salesList/list.action">
					<div class="form-group">
						<label for="userName">商品名称</label> 
						<input type="text" class="form-control" id="gname" 
						                   value="${name }" name="name" />
					</div>
					<div class="form-group">
						<label for="customerFrom">商品类型</label> 
						<select	class="form-control" id="CommodityType" name="cid">
							<option value="0">--请选择--</option>
							<c:forEach items="${CommodityType}" var="item">
								<option value="${item.cid}">
								    ${item.cname }
								</option>
							</c:forEach>
						</select>
					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<!-- 新建用户 -->
		<!-- <a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newUserDialog" onclick="clearUser()">新建</a> -->
		<!-- 用户信息数据 -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>商品ID</th>
								<th>商品名称</th>
								<th>商品类型</th>
								<th>销售数量</th>
								<th>商品进价</th>
								<th>商品售价</th>
								<th>商品状态</th>
								<th>当前库存</th>
								<th>销售总额</th>
								<th>销售利润</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
									<td>${row.gid}</td>
									<td>${row.gname}</td>
									<c:forEach items="${CommodityType}" var="Type">
										<c:if test="${Type.cid == row.cid}"> 
											<td>${Type.cname}</td>
										</c:if>
									</c:forEach>
									<td>${1000-row.stock}</td>
									<td>${row.inprice}</td>
									<td>${row.price}</td>
									<td>${row.status}</td>
									<td>${row.stock}</td>
									<td>￥ ${(1000-row.stock)*row.price}</td>
									<td>${(1000-row.stock)*row.price-row.inprice*(1000-row.stock)}</td>
									
									<%-- <td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#UserEditDialog" onclick= "editUser(${row.mid})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteUser(${row.mid})">删除</a>
									</td> --%>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<abkj:page url="${pageContext.request.contextPath }/salesList/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 用户列表查询部分  end-->
</div>
<!-- 创建用户模态框 -->
<div class="modal fade" id="newUserDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建会员信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_user_form">
					<div class="form-group">
						<label for="new_user_Name" class="col-sm-2 control-label">
						    会员名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_user_Name" placeholder="会员名称" name="name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_code" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							性别: <input type="radio" name="gender" id="g_man" value="男">男
            				<input type="radio" name="gender" id="g_woman" value="女">女
	             			<input type="radio" name="gender" id="g_none" value="保密">保密
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_password" class="col-sm-2 control-label">电话号码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_user_password" placeholder="电话号码" name="phone" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_state" class="col-sm-2 control-label">邮箱</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_user_password" placeholder="电话号码" name="email" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_state" class="col-sm-2 control-label">邮箱</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_user_password" placeholder="电话号码" name="email" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createUser()">创建用户</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改用户模态框 -->
<div class="modal fade" id="UserEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="edit_user_form">
					<input type="hidden" id="edit_id" name="mid"/>
					<div class="form-group">
						<label for="new_user_Name" class="col-sm-2 control-label">
						    会员名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_name" placeholder="会员名称" name="name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_code" class="col-sm-2 control-label">性别</label>
						<div class="col-sm-10">
							性别:
							<input type="radio" name="gender" id="edit_man" value="男">男
            				<input type="radio" name="gender" id="edit_woman" value="女">女
	             			<input type="radio" name="gender" id="edit_secrecy" value="保密">保密
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_password" class="col-sm-2 control-label">电话号码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_phone" placeholder="电话号码" name="phone" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_state" class="col-sm-2 control-label">邮箱</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_email" placeholder="邮箱" name="email" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_user_state" class="col-sm-2 control-label">会员等级</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_vipl" placeholder="会员等级" name="vipl" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateUser()">保存修改</button>
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
//清空新建用户窗口中的数据
	function clearUser() {
	    $("#new_user_name").val("");
	    $("#new_user_code").val("")
	    $("#new_user_password").val("")
	    $("#new_user_state").val("1")
	}
	// 创建用户
	<%-- function createUser() {
	$.post("<%=basePath%>t_member/create.action",
	$("#new_user_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("用户创建成功！");
	            window.location.reload();
	        }else{
	            alert("用户创建失败！");
	            window.location.reload();
	        }
	    });
	} --%>
	// 通过id获取修改的用户信息
	function editUser(id) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>t_member/getT_MemberById.action",
	        data:{"id":id},
	        success:function(data) {
	        	
	        	$("#edit_id").val(data.mid);
	            //会员名称
	            $("#edit_name").val(data.name);
	            //性别信息
	            if(data.gender=="男"){
	            	$("#edit_man").click();
	            }else if(data.gender=="女"){
	            	$("#edit_woman").click();
	            }else{
	            	$("#edit_secrecy").click();
	            }
	            //会员电话
	            $("#edit_phone").val(data.phone);
	            //会员邮箱
	            $("#edit_email").val(data.email);
	            //会员等级
	            $("#edit_vipl").val(data.vipl);
	            
	        }
	    });
	}
    // 执行修改用户操作
	function updateUser() {
    	
		$.post("<%=basePath%>t_member/update.action",$("#edit_user_form").serialize(),function(data){
			if(data =="OK"){
				alert("用户信息更新成功！");
				window.location.reload();
			}else{
				alert("用户信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除用户
	function deleteUser(id) {
	    if(confirm('确实要删除该用户吗?')) {
	$.post("<%=basePath%>t_member/delete.action",{"id":id},
	function(data){
	            if(data =="OK"){
	                alert("用户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除用户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
</script>
</body>
</html>