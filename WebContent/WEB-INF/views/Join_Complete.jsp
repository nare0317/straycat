<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<c:import url="Head.jsp"></c:import>

<!-- 페이지 CSS, 자바스크립트 -->
<link rel="stylesheet" href="<%=cp %>/css/view/join_complete.css">
<script type="text/javascript" src="<%=cp %>/js/view/join_complete.js"></script>

</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="container" style="margin-top: 60px;">
	<div class="card text-center">
		<div class="card-header"><h1><span style="color: #007BFF">회원가입</span>을 축하드립니다.</h1></div>
		<div class="card-body">
			<p class="card-title">로그인을 하셔서 길고양이를 등록해보세요~</p>
			<button type="button" class="btn btn-primary" onclick="location.href='login'">로그인</button>
		</div>
	</div>
</div>


<br />
<br />
<br />
<br />
<br />
<div>
	<c:import url="Footer.jsp"></c:import>
</div>

</body>
</html>