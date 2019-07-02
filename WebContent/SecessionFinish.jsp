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
<title>SecessionFinish.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
</style>
</head>
<body>

<div>
	<c:import url="Menu.jsp"></c:import>

	<div class="container" style="margin-top: 60px;">
		<div class="card text-center">
			<div class="card-header"><h1><span style="color: #007BFF">회원탈퇴</span>가 완료되었습니다.</h1></div>
			<div class="card-body">
				<h5 class="card-title">그동안 우리동네고양이를 이용해 주셔서 감사합니다.
보다 나은 우리동네고양이로 다시 만나뵐 수 있기를 바랍니다.</h5>
				<button type="button" class="btn btn-primary" onclick="location.href='Join.jsp'">신규 회원가입</button>
				<button type="button" class="btn btn-light" onclick="location.href='Main.jsp'">첫화면 가기</button>
			</div>
		</div>
	</div>
</div>



<br />
<br />
<br />
<br />
<br />
<div>
<hr>
	<c:import url="Footer.jsp"></c:import>
</div>

</body>
</html>