<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/header--footer.css"
	type=text/css rel=stylesheet>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/live2D/waifu.css"/>
</head>
<body>
<div class="waifu">

    <div class="waifu-tips"></div>

    <canvas id="live2d" width="280" height="250" class="live2d"></canvas>

    <div class="waifu-tool">

        <span class="fui-home"></span>

        <span class="fui-chat"></span>

        <span class="fui-eye"></span>

        <span class="fui-user"></span>

        <span class="fui-photo"></span>

        <span class="fui-info-circle"></span>

        <span class="fui-cross"></span>

    </div>

</div>

<script src="${pageContext.request.contextPath}/live2D/waifu-tips.js"></script>

<script src="${pageContext.request.contextPath}/live2D/live2d.js"></script>

<script type="text/javascript">initModel("/")</script>
<footer class="ft">
		<div id="f_d">
			<span id="f_s">
				<p>
					推荐链接： <a href="https://www.baidu.com">百度</a> <a
						href="http://nzy.yketang.com">农职云课堂</a><br> Copyright
					1802实训第三组 版权所有
				</p>
			</span>

		</div>
		<img id="ma" alt=""
			src="${pageContext.request.contextPath}/images/erma.jpg">
	</footer>
</body>
</html>