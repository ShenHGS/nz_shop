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
<link href="${pageContext.request.contextPath}/css/goodDetails.css"
	type=text/css rel=stylesheet>
<meta charset="UTF-8">
<title>商品详情</title>
</head>
<body>
	<!-- 头部 -->
	<jsp:include page="home-header.jsp" />
	<!-- 头部结束 -
	
	<!-- 商品详情 -->
	
	<div id="g_d">
		<div id="g_d1">
			<img alt="正品瑞士手表男士2020新款全自动机械表镂空陀飞轮精钢带品牌男表

瑞士认证 3TAM防水功能 下单送终身保修 "
				src="${pageContext.request.contextPath}/images/goods/${list_goods.pic}">
			<ul id="g_ul">
				<li><h1>${list_goods.gname}</h1></li>
				<li><p>
						¥${list_goods.inprice}</p></li>
				<li id="g_ul_li">原价:¥${list_goods.price}</li>
				<li>点击率:${list_goods.hits}</li>
				<li>销量:11</li>
				<li><label for="shul">数量</label> <input id="shul"
					type="number" value="1" size="3"></li>
			</ul>
		</div>
		<div id="g_d2">
			<button id="g_btn1" onclick="addCart()">
				<i class="icona" style="background-image: url(${pageContext.request.contextPath}/images/cheche.png);">添加购物车</i>
			</button>
			<button id="g_btn2">
				<i class="iconb" style="background-image: url(${pageContext.request.contextPath}/images/xingxing.png);">收藏</i>
			</button>
		</div>

		<div id="g_d3">
			<p>商品描述</p>
			<div>${list_goods.description}
			</div>

		</div>
		
	</div>

	<!-- 禁止数量为负数 -->
	<script>
    document.getElementById("shul").addEventListener("input",function(event){
       event.target.value = event.target.value.replace(/\-/g,""); 
    });
</script>
	<script type="text/javascript">
	var gid = "${list_goods.gid}"
	var inprice ="${list_goods.inprice}"
	console.log(gid,inprice)
	function addCart() {
		
		var num = $('#shul').val();//获取输入的商品数量		
		if (num != "" && num != null) {
		       setCookie("num", num, 30);
		       setCookie("gid", gid, 30);
		       setCookie("inprice", inprice, 30);
		     }
		/* alert(num); */
		window.location.href="${pageContext.request.contextPath }/tbCar/selectGid.action";; 
		}
	function setCookie(num,numvalue,exdays) {
		  var d = new Date();
		  d.setTime(d.getTime() + (exdays*24*60*60*1000));
		  var expires = "expires=" + d.toGMTString();
		  document.cookie = num + "=" + numvalue + ";" + expires + ";path=/";
		}
	</script>
	
	<!-- 尾部	 -->
	<jsp:include page="home-footer.jsp" />
</body>
</html>