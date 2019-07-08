<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>약관 동의</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/accept_terms.css">
	<script type="text/javascript" src="<%=cp %>/js/view/accept_terms.js"></script>
</head>
<body>


<c:import url="Menu.jsp"></c:import>
<div class="container">
	<div class="card">
		<div id="title">
			<h1>약관동의</h1>
		</div>
		<div class="card-body">
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="allCheck"> <label class="form-check-label" for="allCheck"> 전체 약관동의 </label>
			</div>
			<div class="card">
				<div class="card-body">얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러
				</div>
			</div><br>
			
			<div><h4>서비스 이용약관 동의(필수)</h4></div>
			<div class="card">
				<div class="card-body">얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러
				</div>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="termCheck1"> <label class="form-check-label" for="termCheck1"> 서비스 이용약관을 확인했으며 동의합니다. </label>
			</div><br>
			
			<div><h4>개인정보 수집 및 활용 동의(필수)</h4></div>
			<div class="card">
				<div class="card-body">얼음에 싸인 만물은 얼음이 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러
				</div>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="termCheck2"> <label class="form-check-label" for="termCheck2"> 개인정보 수집 및 활용 약관을 확인했으며 동의합니다. </label>
			</div>
			<br>
			
			<div class="mButton">
				<div id="errorDiv">
					
					<span id="errorMsg">필수 약관에 동의하지 않았습니다.</span>
					<br><br>
				</div>
				<button id="agreeBtn" type="submit" class="btn btn-secondary">이용약관 및 개인정보 수집/이용에 동의합니다.</button>
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
	<c:import url="Footer.jsp"></c:import>
</div>


</body>
</html>