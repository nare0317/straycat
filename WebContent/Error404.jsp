<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>404 Error</title>

<c:import url="/WEB-INF/views/Head.jsp"></c:import>

<!-- 페이지 JS, CSS -->
<link rel="stylesheet" href="<%=cp%>/css/view/error404.css">
<script type="text/javascript" src="<%=cp%>/js/view/error404.js"></script>

</head>
<body>

<div class="container">
	<div class="errorMsg">
		<h1>페이지를 찾을 수 없습니다!</h1>
		<br>
		<h3>Http Error 404</h3>
		<br>
		<span class="requestUrl"></span>
	</div>
	<div class="img">
		<img alt="Error404" src="<%=cp%>/img/error404.png">
	</div>
</div>

</body>
</html>