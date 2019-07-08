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
<title>아이디 찾기 결과</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- Ionicons 4.5 외부 글리피콘 -->
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

<!-- 아이디 찾기 완료 페이지 CSS -->
<link rel="stylesheet" href="<%=cp %>/css/view/find_id_complete.css">

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>

<c:import url="Menu.jsp"></c:import>
<br>
<br>
<br>
<br>
<div class="text-center container">
	<div class="card">
		<div class="card-header">	
			<h1>아이디 찾기</h1>
		</div>
		<form action="" onSubmit="return check()">
			<br>
			<div class="row" style="margin-top: 60px; width: 100%;">
				<div class="col-md-6 offset-md-3">
					
					<h4>아이디<span class="userId" style="padding: 50px;">nare0317</span></h4>
					<br>
					<br><br>
					<button type="submit" class="btn btn-primary btn-md">로그인 하기</button>
					<button type="submit" class="btn btn-secondary btn-md" style="margin-left: 5px;">비밀번호 찾기</button>
					<br><br><br>
				</div>
			</div>
		</form>
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