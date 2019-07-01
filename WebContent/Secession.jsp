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
<script type="text/javascript">
	$(document).ready(function()
	{
		$("#clickBtn").click(function(){
			if($("#defaultCheck1").is(":checked") == false)
			{
				alert("동의버튼을 눌러주세요");
				return;
			}
			$("#formCheck").submit();			
		});
	});
</script>

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
						<div style="text-align: left; margin-left: 30px;">
							<h5>집사님, 우리동네길냥이를 이용하시는데 불편함이 있으셨나요?</h5>
							<h5>- 이용 불편 및 각종 문의 사항은 이메일로 문의주시면 성심 성의껏 답변드리겠습니다.</h5>
							<h5>- 이메일문의 : straycat@cat.com</h5>
						</div>
						<div class="card"
							style="text-align: left; margin: 30px; padding: 20px;">
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
		<hr>
		<c:import url="Footer.jsp"></c:import>
	</div>

</body>
</html>