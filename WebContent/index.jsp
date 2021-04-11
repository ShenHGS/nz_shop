<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!-- 转发到登录页面 -->

<%
String pa=request.getParameter("pa");
int t=Integer.parseInt(pa);

%>
<%

	switch(t){
	case 1:
		%>

<jsp:forward page="/WEB-INF/jsp/login.jsp" />

<%;
		break;
	case 2:
		
		%>

<%-- <jsp:forward page="/WEB-INF/jsp/hgood.jsp" /> --%>

<%; 
		break;
	case 3:
		%>
<%-- <jsp:forward page="/WEB-INF/jsp/details.jsp" /> --%>
<% 
		break;
	case 4:
		%>
<jsp:forward page="/WEB-INF/jsp/vipcenter.jsp" />
<%
		break;
	case 5:
		%>
<jsp:forward page="/WEB-INF/jsp/addVIP.jsp" />
<%
		break;
	case 6:
		%>
<jsp:forward page="/WEB-INF/jsp/vlogin.jsp" />
<% 
		break;
	case 7:
		%>
		<jsp:forward page="/WEB-INF/jsp/vlogin.jsp" />
		<% 
	}

  %>





