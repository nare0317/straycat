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
<script src="<%=cp%>/js/view/apply_list.js"></script>

<!-- 모달 팝업창  -->
<!-- <meta name="viewport" content="width=device-width, initial-scale=1">
 -->
<!-- ionicons 기타 아이콘  -->
<script type="module" src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule="" src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons/ionicons.js"></script>

<script type="text/javascript">

$(document).ready(function()
{
	// 최종 선택 버튼 눌렀을 때, 입양 게시글 상태 '입양확정'으로 변경됨. 
	$("#applyFinish").click(function()
	{
		$(location).attr("href","<%=cp%>/adopt_proc?adt_proc=ADP5"+"&adt_code=" + $("#adt_code").val());
		
	});
});
</script>

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
			<tr>
				<th>
					<div class="custom-control custom-radio custom-control-inline">
						<input type="radio" id="${app.ID }" name="applicant-select"
							class="custom-control-input" value="${app.ID }" required> 
							<label class="custom-control-label" for="${app.ID }"></label>
					</div>
				</th>
				
				<td>
					<!-- 입양게시글 코드(hidden) -->
					<input type="hidden" id="adt_code" value="${post.ADT_CODE }">    
					    
					<h5>ID : ${app.ID } <br>이름 : ${app.NAME }</h5> 
					<a class="send-message"><i class="fas fa-envelope"></i><span>쪽지</span></a>
					<br> 
					<i class="fas fa-map-marker-alt"><span>${app.ADDRESS }</span></i>
				</td>
				
				<td><span>매칭률</span><br> <span class="err">95% 일치</span>
				</td>
				
				<td><span>활동점수</span><br> <span>250점</span></td>
				
				<td class="survey-result">
				
					<!-- 입양모집자의 매칭 설문 답 (hidden) -->
					<input type="hidden" id="ar_A1" value="${post.CAT_EXP }">
					<input type="hidden" id="ar_A2" value="${post.JOB }">
					<input type="hidden" id="ar_A3" value="${post.MARRIAGE }">
					<input type="hidden" id="ar_A4" value="${post.FAMILY_NUM }">

				
					<ul class="list-group list-group-horizontal applicant_answer">
					  <li class="list-group-item  flex-fill" id="A1" value="${app.A1 }" style="border: none">
					  <ion-icon name="checkmark"></ion-icon>고양이 양육경험: ${app.A1}</li>
					  <li class="list-group-item  flex-fill" id="A2" value="${app.A2 }" style="border: none">
					  <ion-icon name="checkmark"></ion-icon>직업구분: ${app.A2 }</li>
					</ul>
					<ul class="list-group list-group-horizontal"> 
					  <li class="list-group-item  flex-fill" id="A3"  value="${app.A3 }" style="border: none">
					  <ion-icon name="checkmark"></ion-icon>결혼여부 : ${app.A3 }</li>
					  <li class="list-group-item  flex-fill" id="A4"  value="${app.A4 }" style="border: none">
					  <ion-icon name="checkmark"></ion-icon>가족구성원: ${app.A4 }</li>
					</ul>
				</td>
				
				<td>
					<button id="# ${app.Id }" type="button" 
					class="btn btn-outline-primary btn-sm">자세히보기
					</button>
				</td>
				
			</tr>
			
		</thead>
		
		</c:forEach>
		
	</table>
	
	<div class="matching">
		<span id="alert">※ 후보자 선택은 <span id="endDate">${post.END_DATE }</span>까지 완료해주셔야 합니다. </span>


		<!-- 모달 팝업창 여는 버튼  -->
		<button id="myBtn" type="button" class="btn btn-warning btn-large"
			data-toggle="modal">후보자 최종 선택</button>
	</div>


	<div>
	
		<!--------------------- 선택 안하고 최종선택 눌렀을 경우에 뜨는 팝업 창 ---------------------------->

		<!-- Modal -->
		<div class="modal fade" id="impossible" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">확인</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        최종 입양자를 선택하셔야 합니다. 
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		      </div>
		    </div>
		  </div>
		</div>
		
		
		<!--------------------- 최종 선택 확인 팝업 ---------------------------->
		<!-- Modal -->
		<div class="modal fade" id="confirm" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		  <div class="modal-dialog modal-dialog-centered" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalCenterTitle">최종 확인</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        최종 선택을 하시겠습니까?
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		        <button type="button" id="finalSelect-btn"class="btn btn-primary">최종선택하기</button>
		      </div>
		    </div>
		  </div>
		</div>
	

		<!--------------------- 최종 선택 완료 후 팝업 ---------------------------->
		<div class="modal finalChoice" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- Modal Header -->
					<div class="modal-header">
						<h1 class="modal-title">
							<!-- <ion-icon name="logo-octocat"></ion-icon> -->
							입양 매칭 완료
							<!-- <ion-icon name="logo-octocat"></ion-icon> -->
						</h1>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<div class="jumbotron">
							<h3 class="display-8">
								<span class="selectedUser"></span>님과<br>입양매칭이 완료되었습니다^^!
							</h3>
							<p class="lead">
								<br>
								<br> 길냥이의 행복한 묘생을 위해 신중하게<br> 결정해주셔서 감사합니다!<br>
								이후 입양 과정은 <span class="selectedUser"></span>님과 1:1로 연락하여 진행하시면 됩니다.<br>
								입양후보자 최종 선택으로 인하여 해당 게시물의 상태는 현재 '입양확정'으로 자동 변경되었으며,
								추후 <span class="selectedUser"></span>님에게 무사히 길냥이를 전달하신 후에
								작성하신 입양 게시글 상태를 '입양종료'로 꼭 바꿔주시기 바랍니다.<br>
								감사합니다~!!!^^
								<br>
							</p>
						</div>
					</div>

					<!-- Modal footer -->
					<div class="modal-footer">
						<!-- <button type="button" id="contact-btn"class="btn btn-primary" >매칭자와 바로 연락하기</button> -->
						<button type="button" id="applyFinish" class="btn btn-primary" >확인</button>
					
					
					
		<!------------ 최종 선택자에게 메세지 보내는 모달 창 ----------->
		<div class="modal fade" id="sendMessage" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">쪽지 보내기</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form>
		          <div class="form-group">
		            <label for="recipient-name" class="col-form-label">받는 사람:</label>
		            <input type="text" class="form-control" id="recipient-name" readonly>
		          </div>
		          <div class="form-group">
		            <label for="message-text" class="col-form-label">내용:</label>
		            <textarea class="form-control" id="message-text"></textarea>
		          </div>
		        </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Send message</button>
		      </div>
		    </div>
		  </div>
		</div>
	
						
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