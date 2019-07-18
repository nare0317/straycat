<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
	<script	src="<%=cp%>/js/view/mypage_main.js"></script>

<div class="tab-pane fade show active" id="straycat" role="tabpanel" aria-labelledby="straycat-tab">
<div class='gil'>
	<h1>쪽지함</h1>
	<br> <br> <br>
	<!-------------------------------------------------------- 받은쪽지함 / 보낸쪽지함 -------------------------------------------------------->
	<div>
		<nav>
			<div class="nav nav-tabs" id="nav-tab" role="tablist">
				<a class="nav-item nav-link active text-center tab" id="receive-tab" data-toggle="tab" href="#receive" role="tab" aria-controls="receive" aria-selected="true">받은쪽지함</a>
				<a class="nav-item nav-link text-center tab" id="send-tab" data-toggle="tab" href="#send" role="tab" aria-controls="send" aria-selected="false">보낸쪽지함</a>
			</div>
		</nav>
		<div class="tab-content" id="nav-tabContent">
			<!-----------------------------------------------------  내가 받은 쪽지함  ----------------------------------------------------------->
			<div class="tab-pane fade show active" id="receive">
				<br>
				<div class="container2">
					<form action="messagewrite" method="post" id="m">
		
						<br><br>
						
						<!-- 게시판 헤더 시작 -->
						<div class="bbsHeader">
							<div class="header no">
								<div class="form-check">
								  번호
								</div>
							</div>
							<div class="header title">제목</div>
							<div class="header writer">보낸사람</div>
							<div class="header date">받은날짜</div>
							<div class="header viewCount">상태</div>
						</div>
	
						<!-- 게시판 게시물 리스트 시작 -->
						<c:forEach var="reMessageList" items="${reMessageList }">
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  ${reMessageList.ROWNUM }
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/remessageread?mes_code=${reMessageList.MES_CODE}">${reMessageList.TITLE }</a>
								</div>
							</div>
							<div class="content writer">${reMessageList.NICKNAME }</div>
							<div class="content date">${reMessageList.SEND_DATE }</div>
							
								
							<c:choose>
								<c:when test="${reMessageList.READ_DATE eq (null)}"><div class="content viewCount"><span>읽지 않음</span></div></c:when>
								<c:otherwise><div class="content viewCount"><span>읽음</span></div></c:otherwise>
							</c:choose>
							
						</div>
						</c:forEach>
						
						
						<br> <br>
	
						<!-- 페이지네이션 시작 -->
						<ul class="pagination pagination-sm justify-content-center">
							<li class="page-item disabled">
								<a class="page-link text-dark" href="#">Previous</a></li>
							<li class="page-item active">
								<a class="page-link text-dark" href="#">1</a></li>
							<li class="page-item">
								<a class="page-link text-dark" href="#">2</a></li>
							<li class="page-item">
								<a class="page-link text-dark" href="#">3</a></li>
							<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
						</ul>
	
						<!-- 글쓰기 버튼 -->
						<div id="rightHeader" class="row align-items-end justify-content-end">
							<button class="btn btn-secondary pull-right" id="messageWrite1">
								<!-- <i class="fa fa-pencil-square-o"> --></i>쪽지쓰기
							</button>
						</div>
	
					</form>
				</div>

			</div>
			<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->

			<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
			<div class="tab-pane fade" id="send" role="tabpanel" aria-labelledby="nav-profile-tab">
				<br>
				<div class="container2">
					<form action="messagewrite" method="post" id="form2">	
											
						<br><br>
						
						<!-- 게시판 헤더 시작 -->
						<div class="bbsHeader">
							<div class="header no">
								<div class="form-check">
								  번호
								</div>
							</div>
							<div class="header title">제목</div>
							<div class="header writer">받은사람</div>
							<div class="header date">보낸날짜</div>
							<div class="header viewCount">상태</div>
						</div>
	
						<!-- 게시판 게시물 리스트 시작 -->
						<c:forEach var="seMessageList" items="${seMessageList }">
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  ${seMessageList.ROWNUM }
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/semessageread?mes_code=${seMessageList.MES_CODE}">${seMessageList.MES_TITLE }</a>
								</div>
							</div>
							<div class="content writer">${seMessageList.NICKNAME }</div>
							<div class="content date">${seMessageList.SEND_DATE }</div>
							<c:choose>
								<c:when test="${seMessageList.READ_DATE eq (null)}"><div class="content viewCount"><span>읽지 않음</span></div></c:when>
								<c:otherwise><div class="content viewCount"><span>읽음</span></div></c:otherwise>
							</c:choose>
						</div>
						</c:forEach>
						
						<br> <br>
	
						<!-- 페이지네이션 시작 -->
						<ul class="pagination pagination-sm justify-content-center">
							<li class="page-item disabled">
								<a class="page-link text-dark" href="#">Previous</a></li>
							<li class="page-item active">
								<a class="page-link text-dark" href="#">1</a></li>
							<li class="page-item">
								<a class="page-link text-dark" href="#">2</a></li>
							<li class="page-item">
								<a class="page-link text-dark" href="#">3</a></li>
							<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
						</ul>
	
						<!-- 글쓰기 버튼 -->
						<div id="rightHeader" class="row align-items-end justify-content-end">
							<button class="btn btn-secondary pull-right" id="messageWrite2">
								<i class="fa fa-pencil-square-o"></i>쪽지쓰기
							</button>
						</div>
					</form>
				</div>
			</div>
			<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
			</div>
		</div>
	</div>
</div>