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
<title>입양신청자 리스트</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/apply_list.css">

<!-- JS 파일 -->
<script src="<%=cp%>/js/view/miss_write.js"></script>

<!-- 모달 팝업창  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- ionicons 기타 아이콘  -->
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>

</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="container">
	<h1>
		입양<span>신청자리스트</span>
	</h1>
	<hr>
	<br>

	<table class="table table-bordered">
		
		<c:forEach var="app" items="${list }">
		<thead>
			<tr class="stretched-link">
				<th>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="customRadioInline1"
							name="customRadioInline1" class="custom-control-input">
						<label class="custom-control-label" for="customRadioInline1"></label>
					</div>
				</th>
				
				<td>
					<h5>ID : ${app.ID } <br>이름 : ${app.NAME }</h5> 
					<a class="send-message" href="#"><i class="fas fa-envelope"></i><span>쪽지</span></a>
					<br> 
					<ion-icon name="pin" size={20}></ion-icon>
					<span>${app.ADDRESS }</span>
				</td>
				
				<td><span>매칭률</span><br> <span class="err">95% 일치</span>
				</td>
				
				<td><span>활동점수</span><br> <span>250점</span></td>
				
				<td>
					<div class="">
						<div class="borderless">
							<%-- <div class="row">
								<div class="col">
								<ion-icon name="checkmark"></ion-icon>
								고양이 양육경험: ${app.A1 == RT1 ? '있음' : '없음' }
								</div>
								<div class="col">
								<ion-icon name="checkmark"></ion-icon>
								직업구분: ${app.A2 } <br>
								</div>
								<div class="w-100"></div>
								<div class="col">
								<ion-icon name="checkmark"></ion-icon>
								<span>결혼여부 : ${app.A3 == RT1 ? '기혼' : '미혼' }</span> 
								</div>
								<div class="col">
								<ion-icon id="checkmark1" name="checkmark"></ion-icon>
								<span>가족구성원: ${app.A4 }</span>
								</div>
							</div>	 --%>
							
							<ul class="list-group list-group-horizontal">
							  <li class="list-group-item  flex-fill" style="border: none">고양이 양육경험: ${app.A1 == RT1 ? '있음' : '없음' }</li>
							  <li class="list-group-item  flex-fill" style="border: none">직업구분: ${app.A2 }</li>
							</ul>
							<ul class="list-group list-group-horizontal"> 
							  <li class="list-group-item  flex-fill" style="border: none">결혼여부 : ${app.A3 == RT1 ? '기혼' : '미혼' }</li>
							  <li class="list-group-item  flex-fill" style="border: none">가족구성원: ${app.A4 }</li>
							</ul>
						</div>
					</div>
				</td>
				
				<td>
					<div class="custom-control custom-button">
						<button id="infoBtn" type="button" class="btn btn-outline-primary btn-sm">
							자세히보기<ion-icon name="arrow-forward"></ion-icon>
						</button>
					</div>
				</td>
				
			</tr>
			
		</thead>
		
		</c:forEach>
		
	</table>
	
	<div class="matching">
		<span id="alert">※ 후보자 선택은 2019년 5월 10일 23:59까지 완료해주셔야 합니다. </span>


		<!-- 모달 팝업창 여는 버튼  -->
		<button id="myBtn" type="button" class="btn btn-warning btn-large"
			data-toggle="modal" data-target="#myModal">후보자 최종 선택</button>
	</div>


	<div>

		<!--------------------- 최종 선택 완료 후 팝업 창 ---------------------------->
		<div class="modal" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h1 class="modal-title">
							<ion-icon name="logo-octocat"></ion-icon>
							입양 매칭 완료
							<ion-icon name="logo-octocat"></ion-icon>
						</h1>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="jumbotron">
							<h3 class="display-8">
								nare0317님과<br>입양매칭이 완료되었습니다^^!
							</h3>
							<p class="lead">
								<br>
								<br> 길냥이의 행복한 묘생을 위해 신중하게<br> 결정해주셔서 감사합니다!<br>
								이후 입양 과정은 nare0317님과 1:1로 연락하여 진행하시면 됩니다.<br>
								입양이 최종 확정되어 안전하게 고양이까지 전달하신 후에 작성하신 입양 게시글 상태는<br>
								'입양완료'로 꼭 바꿔주시기 바랍니다.<br>
								<br>
							</p>
						</div>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<button id="matchingBtn" type="button" class="btn btn-primary"
							data-dismiss="modal">
							매칭자와 바로 연락하기
							<ion-icon name="send"></ion-icon>
						</button>
					</div>

				</div>
			</div>
		</div>

	</div>
</div>

	<br>
	<br>
	<br>
	
	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
	
</body>
</html>