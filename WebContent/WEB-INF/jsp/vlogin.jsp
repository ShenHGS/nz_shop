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
<link href="${pageContext.request.contextPath}/css/addSVIP.css" rel="stylesheet" type="text/css"/>
<meta charset="UTF-8">
<title>登录</title>
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
</head>
<body>

	<!-- 头部 -->
	<jsp:include page="../../home-header.jsp" />
	<!-- 头部结束 -->

	<div class="box">
	<span id="message">${msg}</span>
		<div class="box-head">登录</div>
			<div class="box-body">
				<form action="${pageContext.request.contextPath}/home/vlogin.action" name="vlg" onsubmit="vlogin()" method="post" >
				<table>	
				
				<tr>
					<th>用户账号：</th>
					<td><input type="text" name="loginname" id="loginname" placeholder="长度1~16，大小写字母、数字或下划线"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>用户密码：</th>
					<td><input type="password" name="loginpwd" id="loginpwd" placeholder="长度6~20，大小写字母、数字或下划线"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>验证码 ：</th>
					<td><input type="text" name="checkCode" id="checkCode" value=""
											class="validate-password required" style="float: left;"
											title="验证码区分大小写" size="18" maxlength="4" required="required"
											aria-required="true"><img src="${pageContext.request.contextPath}/CheckCode" name="checkCode" onClick="myReload()" width="116"
	 										height="43" class="img_checkcode" id="img_checkCode" /></td>
				</tr>
					 <tr ><td colspan="3"><input type="submit" value="登录"><a class="box-a" href="${pageContext.request.contextPath}/rep.jsp">注册</a></td></tr>
					  
				</table>
				</form>
			</div>
		</div>
		
		
		<!-- 尾部	 -->
	<jsp:include page="../../home-footer.jsp" />
	
</body>
</html>

<script type="text/javascript">

var inputs =document.getElementsByTagName('input');
for(var i=0; i<inputs.length;++i){
	inputs[i].onblur = inputBlur;
}
function inputBlur(){

	var name = this.name;
	var val = this.value;
	var tips = this.placeholder;
	var tips_obj = this.parentNode.nextSibling.nextSibling.firstChild;
	
	val = val.trim();
	 
	if(!val){
		error(tips_obj,'输入信息不能为空');
	}
	
	var reg_msg =getRegMsg(name,tips);
	
	if(reg_msg['reg'].test(val)){
			
		success(tips_obj,reg_msg['msg']['success']);
	}else{

	
		error(tips_obj,reg_msg['msg']['error']);
	}
}
function getRegMsg(name,tips){
	var reg=msg='';
	switch(name){
		case 'loginname':
		reg = /^[\\u4e00-\\u9fa5_a-zA-Z0-9-]{1,16}$/;
		msg ={'success':'用户输入正确','error':tips};
		console.log('success');
		break;
		case 'loginpwd':
		reg = /^\w{6,20}$/;
		msg ={'success':'用户输入正确','error':tips};
		break;
	}
	return {'reg':reg,'msg':msg}
}
function success(obj,msg){
	obj.className = 'success';
	obj.innerHTML = msg;
}
function error(obj,msg){
	obj.className = 'error';
	obj.innerHTML = msg+',请重新输入';
}

//刷新验证码
function myReload() {
	document.getElementById("img_checkCode").src = document.getElementById("img_checkCode").src + "?nocache=" + new Date().getTime();
}
</script>
