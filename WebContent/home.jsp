<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="abkj" uri="http://abkj.com/common/"%>



<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<link href="${pageContext.request.contextPath}/css/home.css"
	type=text/css rel=stylesheet>
<head>
<meta charset="UTF-8">
<title>主页</title>
</head>
<body>
	<!-- 头部 -->
	 <jsp:include page="home-header.jsp" />
	<!-- 头部结束 -->

	<!-- 轮播 -->
	<div class="banner">
		<div class="img-wrap">
			<ul>
				<li class="item" style="display: block"><a href=""><img
						src="${pageContext.request.contextPath}/images/1.png" alt="" class="lunbo"></a></li>
				<li class="item">
				<a href="">
				<img src="${pageContext.request.contextPath}/images/zq.png" alt=""
						class="lunbo"></a></li>
				<li class="item">
				<a href="">
				<img src="${pageContext.request.contextPath}/images/3.png" alt=""
						class="lunbo"></a>
			</ul>
		</div>
		  <div class="lr-tab">
        <div class="left btn"></div>
        <div class="right btn"></div>
    </div>  
		<div class="tab-btn">
			<ul>
				<li class="btn"></li>
				<li class="btn"></li>
				<li class="btn"></li>

			</ul>
		</div>
	</div>


	<script type="text/javascript">
		var index2 = 0;/*初始化一个变量 指向下彪*/
		//点击点
		$(".tab-btn .btn").click(function() {
			index2 = $(this).index();//获取点击该元素下彪
			$(this).addClass("active").siblings().removeClass("active");
			$(".item").eq(index2).fadeIn().siblings().fadeOut();
		});
		//点击切换效果
		$(".lr-tab .right").click(
				function() {
					index2++;
					if (index2 > 4) {
						index2 = 0;
					}
					$(".item").eq(index2).fadeIn().siblings().fadeOut();
					$(".tab-btn .btn").eq(index2).addClass("active").siblings()
							.removeClass("active");

				});
		$(".lr-tab .left").click(
				function() {
					index2--;
					if (index2 < 0) {
						index2 = 4;
					}
					$(".item").eq(index2).fadeIn().siblings().fadeOut();
					$(".tab-btn .btn").eq(index2).addClass("active").siblings()
							.removeClass("active");

				});
		var time2 = setInterval(function() {
			index2++;
			if (index2 > 4) {
				index2 = 0;
			}
			$(".item").eq(index2).fadeIn().siblings().fadeOut();
			$(".tab-btn .btn").eq(index2).addClass("active").siblings()
					.removeClass("active");

		}, 4000); //定时器 重复
	</script>
	<!-- 轮播结束 -->

	<!-- 商品 -->
	
	
	<div id="content">
		<h1 id="c_h1">热门商品</h1>
		<div id="g_d1">
			<c:forEach items="${list_hot}" var="row">
			<div id="g_d2">
				<a id="g_a1"
					href="home/getGoodsById.action?gid=${row.gid}"><%-- ${pageContext.request.contextPath}/index.jsp?pa=<%=3%> --%>
					<img id="g_img"
					alt="图片显示错误 "
					src="${pageContext.request.contextPath}/images/goods/${row.pic}">
					<span>${row.gname}</span>
				</a>
				<p>
					<span id="g_d2_s1">¥${row.inprice}</span> <span id="g_d2_s2">¥${row.price}</span>
				</p>
				
			</div>
			<!-- <br> -->
			</c:forEach>
		</div>

	</div>
	



	 <!-- 尾部	 -->
	<jsp:include page="home-footer.jsp" />

</body>
</html>