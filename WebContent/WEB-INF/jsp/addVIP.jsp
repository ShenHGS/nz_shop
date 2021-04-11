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
<title>填写注册信息</title>
</head>
<body>

	<!-- 头部 -->
	<jsp:include page="../../home-header.jsp"/>	
	<!-- 头部结束 -->

	<div class="box" style="height:820px;">
		<div class="box-head">填写注册信息</div>
			<div class="box-body">
		<form  action="${pageContext.request.contextPath}/home/addVIP.action" id="Myform">
			<table>
				<tr>
					<th>昵称：</th>
					<td><input type="text" name="name" placeholder="输入纯中文昵称"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>性别：</th>
					<td><input type="text" name="gender" placeholder="男或者女"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>电话：</th>
					<td><input type="text" name="phone" placeholder="13、14、15、17、18开头的11位手机号"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>邮箱：</th>
					<td><input type="email" name="email" placeholder="用户名@域名（域名后缀至少2个字符）"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>登录账号：</th>
					<td><input id="loginname" type="text" name="loginname" placeholder="长度1~16，大小写字母、数字或下划线"></td>
					<td><div><span id="message">${msg}</span></div></td>
					
				</tr>
				<tr>
					<th>登录密码：</th>
					<td><input id="password" type="password" name="password" placeholder="长度6~20，大小写字母、数字或下划线"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>确认登录密码：</th>
					<td><input id="loginpwd" type="password" name="loginpwd" placeholder="请再次输入密码进行确认"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>职位：</th>
					<td><input type="text" name="salt" placeholder="输入纯中文">	</td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>收货人：</th>
					<td><input type="text" name="consignee" placeholder="输入纯中文"></td>
					<td><div></div></td>
				</tr>
				<tr>
					<th>收货地址：</th>
					<td><input type="text" name="address" placeholder="输入纯中文填写收货地址"></td>
					<td><div></div></td>
				</tr> 	 
				 <tr><td colspan="3"><input type="submit" value="注册"></td></tr> 
			  </table>
		</form>
			</div>
		</div>

	<!-- 尾部	 -->
 <jsp:include page="../../home-footer.jsp"/>
	
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
		case 'name':
		reg = /^[\u4E00-\u9FA5]+$/;
		msg ={'success':'用户输入正确','error':tips};
		console.log('success');
		break;
		case 'gender':
		reg = /^[\u4E00-\u9FA5]+$/;
		msg ={'success':'用户输入正确','error':tips};
		console.log('success');
		break;
		case 'phone':
		reg = /^1[34578]\d{9}$/;
		msg ={'success':'用户输入正确','error':tips};
		break;
		case 'email':
		reg = /^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
		msg ={'success':'用户输入正确','error':tips};
		break;
		case 'loginname':
		reg = /^[\\u4e00-\\u9fa5_a-zA-Z0-9-]{1,16}$/;
		msg ={'success':'用户输入正确','error':tips};
		console.log('success');
		break;
		case 'password':
		reg = /^\w{6,20}$/;
		msg ={'success':'用户输入正确','error':tips};
		break;
		case 'loginpwd':
		var con =inputs[6].value;
		reg = RegExp("^"+con+"$");
		msg ={'success':'用户输入正确','error':tips};
		break;
		case 'salt':
		reg = /^[\u4E00-\u9FA5]+$/;
		msg ={'success':'用户输入正确','error':tips};
		console.log('success');
		break;
		case 'consignee':
		reg = /^[\u4E00-\u9FA5]+$/;
		msg ={'success':'用户输入正确','error':tips};
		console.log('success');
		break;
		case 'address':
		reg = /^[\u4E00-\u9FA5]+$/;
		msg ={'success':'用户输入正确','error':tips};
		console.log('success');
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