<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>TermsOfService.jsp</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/terms_of_service.css">
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="container m60">
		<div class="card">
			<div class="m25"><h1>이용약관</h1></div>
			
			<div class="m40">
				약속해요 이 순간이 다 지나고<br>
				다시 보게 되는 그 날<br>
				모든 걸 버리고 그대 곁에 서서<br>
				남은 길을 가리란 걸<br><br>
				
				인연이라고 하죠 거부할 수가 없죠<br>
				내 생에 이처럼 아름다운 날<br>
				또 다시 올 수 있을까요<br><br>
				
				고달픈 삶의 길에 당신은 선물인 걸<br>
				이 사랑이 녹슬지 않도록 늘 닦아 비출게요<br><br>
				
				취한 듯 만남은 짧았지만<br>
				빗장 열어 자리했죠 <br>
				맺지 못한데도 후회하진 않죠<br>
				영원한 건 없으니까<br><br>
				
				운명이라고 하죠 거부할 수가 없죠<br>
				내 생에 이처럼 아름다운 날<br>
				또 다시 올 수 있을까요<br><br>
				
				하고픈 말 많지만 당신은 아실 테죠<br>
				먼길 돌아 만나게 되는 날 다신 놓지 말아요<br><br>
				
				이 생에 못한 사랑 이 생에 못한 인연<br>
				먼길 돌아 다시 만나는 날 나를 놓지 말아요<br><br>
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