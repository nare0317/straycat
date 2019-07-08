<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

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
			<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->
			<div class="tab-pane fade show active" id="receive">
				<br>
				<div class="container2">
					<form action="" id="form1">
						<!-- 삭제 / 답장 버튼 -->
						<button type="button" class="btn btn-light"><span class="x">X</span> 삭제</button>
						<button type="button" class="btn btn-dark">답장</button>
											
						<br><br>
						
						<!-- 게시판 헤더 시작 -->
						<div class="bbsHeader">
							<div class="header no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="allCheck" value="option1" aria-label="...">
								</div>
							</div>
							<div class="header title">제목</div>
							<div class="header writer">보낸사람</div>
							<div class="header date">받은날짜</div>
							<div class="header viewCount">상태</div>
						</div>
	
						<!-- 게시판 게시물 리스트 시작 -->
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check1" value="option1" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/ReceiveNoteDetail.jsp">누구보다 빠르게 난 남들과는 </a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check2" value="option2" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check3" value="option2" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check4" value="option3" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check5" value="option4" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check6" value="option5" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check7" value="option6" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check8" value="option7" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check9" value="option8" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check10" value="option9" name="allCheck1">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
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
							<button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/NoteWrite.jsp'">
								<i class="fa fa-pencil-square-o"></i>쪽지쓰기
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
					<form action="" id="form2">	
						<!-- 삭제 / 답장 버튼 -->
						<button type="button" class="btn btn-light"><span class="x">X</span> 삭제</button>
						<button type="button" class="btn btn-dark">답장</button>
											
						<br><br>
						
						<!-- 게시판 헤더 시작 -->
						<div class="bbsHeader">
							<div class="header no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="allCheck2" value="option1">
								</div>
							</div>
							<div class="header title">제목</div>
							<div class="header writer">보낸사람</div>
							<div class="header date">받은날짜</div>
							<div class="header viewCount">상태</div>
						</div>
	
						<!-- 게시판 게시물 리스트 시작 -->
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check21" value="option1" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/ReceiveNoteDetail.jsp">누구보다 빠르게 난 남들과는 </a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check22" value="option2" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check23" value="option2" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check24" value="option3" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check25" value="option4" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check26" value="option5" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check27" value="option6" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check28" value="option7" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check29" value="option8" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
						<div class="bbsContents">
							<div class="content no">
								<div class="form-check">
								  <input class="form-check-input position-static" type="checkbox" id="check30" value="option9" name="allCheck2">
								</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
										다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>0</i>
								</div>
							</div>
							<div class="content writer">아웃사이더</div>
							<div class="content date">2019-07-04</div>
							<div class="content viewCount">10</div>
						</div>
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
							<button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/NoteWrite.jsp'">
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