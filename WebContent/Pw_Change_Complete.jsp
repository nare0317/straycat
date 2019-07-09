<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>비밀번호 변경 완료</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp%>/css/view/pw_change_complete.css">
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
			<h1>비밀번호 변경</h1>
		</div><br>
		<h3>비밀번호 변경이 성공적으로 완료되었습니다.</h3><br>
		<h3>새로운 비밀번호로 다시 로그인 해 주세요.</h3><br>
		<button type="submit" class="btn btn-primary btn-lg">로그인</button>
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