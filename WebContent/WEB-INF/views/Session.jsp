<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>탈퇴 페이지</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylehseet" href="<%=cp%>/css/view/session.css">
	<script type="text/javascript" src="<%=cp%>/js/view/session.js"></script>
</head>
<body>

	<div>
		<c:import url="Menu.jsp"></c:import>
		<br> <br> <br> <br>
		<div class="text-center container">
		<form action="Main.jsp" id="formCheck">
				<div class="card">
					<div class="card-header">
						<h1>회원탈퇴</h1>
					</div>
						<br>
						<div class="header">
							<h5>집사님, 우리동네길냥이를 이용하시는데 불편함이 있으셨나요?</h5>
							<h5>- 이용 불편 및 각종 문의 사항은 이메일로 문의주시면 성심 성의껏 답변드리겠습니다.</h5>
							<h5>- 이메일문의 : straycat@cat.com</h5>
						</div>
						<div class="card" style="text-align: left; margin: 30px; padding: 20px;">
							** 회원탈퇴 전 유의사항을 확인해 주세요!!<br> - 회원탈퇴 시 회원전용 웹 서비스 이용이 불가합니다.<br>
							- 보유하셨던 '집사활동점수'는 탈퇴와 함께 삭제되며 재적립되지 않습니다.<br> - 회원탈퇴 후
							우리동네고양이 서비스 활동내역(게시글 및 댓글)은 삭제되지 않으며, <br> 회원정보 삭제로 인해 작성자
							본인을 확인할 수 없어 편집 및 삭제처리가 원천적으로 불가능 합니다.<br> - 활동내역 삭제를 원하시는
							경우, 먼저 게시물을 삭제하신 후 탈퇴를 신청하시기 바랍니다.<br>
						</div>
	
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="defaultCheck1"> 
								<label class="form-check-label"	for="defaultCheck1"> 회원탈퇴 시 처리사항 안내를 확인하였음에 동의합니다. </label>
						</div><br><br>
						
						<div>
							<button type="button" class="btn btn-primary btn-lg" id="clickBtn">회원탈퇴</button><br><br><br>
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