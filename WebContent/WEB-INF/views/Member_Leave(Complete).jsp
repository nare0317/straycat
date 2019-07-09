<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>회원탈퇴 완료</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/member_leave(complete).css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="container m60">
	<div class="card text-center">
		<div class="card-header"><h1><span class="color">회원탈퇴</span>가 완료되었습니다.</h1></div>
			<div class="card-body">
				<h5 class="card-title">그동안 우리동네고양이를 이용해 주셔서 감사합니다.
보다 나은 우리동네고양이로 다시 만나뵐 수 있기를 바랍니다.</h5>
				<button type="button" class="btn btn-primary" onclick="location.href='Join.jsp'">신규 회원가입</button>
			<button type="button" class="btn btn-light" onclick="location.href='Main.jsp'">첫화면 가기</button>
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