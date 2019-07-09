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
				그들은 길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은 현저하게 일월과

! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고 있는가? 우리 눈이 그것을 보는 때에 우리의 귀는 생의 찬미를 듣는다 그것은 웅대한 관현악이며 미묘한 교향악이다 뼈 끝에 스며들어 가는 열락의 소리다이것은 피어나기 전인 유소년에게서 구하지 못할 바이며 시들어

보라 청춘의 피는 끓는다 끓는 피에 뛰노는 심장은 거선의 기관과 같이 힘있다 이것이다 인류의 역사를 꾸며 내려온 동력은 바로 이것이다 이성은 투명하되 얼음과 같으며 지혜는 날카로우나 갑 속에
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