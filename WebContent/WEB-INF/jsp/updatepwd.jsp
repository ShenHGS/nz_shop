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
<title>Insert title here</title>
</head>
<body>
	<!-- 头部 -->
	<jsp:include page="../../home-header.jsp"/>	
	<!-- 头部结束 -->

	<div class="box">
		<div class="box-head">修改密码</div>
			<div class="box-body">
			<form action="${pageContext.request.contextPath}/home/updateLoginpwd.action"  method="post">
				<table>
					<tr>
					<th>当前用户的登录账号：</th>
					<td><input  type="text" name="loginname" value="${TMEMBER_SESSION.loginname}" readonly  ></td>
					<td><div></div></td>
					</tr>
					<tr>
					<th>修改密码：</th>
					<td><input id="password" type="password" name="password" placeholder="长度6~20，大小写字母、数字或下划线"></td>
					<td><div></div></td>
					</tr>
					<tr>
					<th>确认密码：</th>
					<td><input id="loginpwd" type="password" name="loginpwd" placeholder="请再次输入密码进行确认"></td>
					<td><div></div></td>
					</tr>
					<tr><td colspan="3"><input type="submit" value="修改"></td></tr> 
				</table>
			</form>
			</div>
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
		
		case 'password':
		reg = /^\w{6,20}$/;
		msg ={'success':'用户输入正确','error':tips};
		break;
		case 'loginpwd':
		var con =inputs[1].value;
		reg = RegExp("^"+con+"$");
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
</script>