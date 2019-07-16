<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<div class="gil">
		<h1>활동내역</h1>
		<br> <br> <br>
		<!-------------------------------------------------------- 내가 쓴 글 / 내가 쓴 댓글 -------------------------------------------------------->
		<div>
			<nav>
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<a class="nav-item nav-link active text-center tab" id="mywrite-tab" data-toggle="tab" href="#mywrite" role="tab" aria-controls="mywrite" aria-selected="true">내가 쓴 글</a>
					<a class="nav-item nav-link text-center tab" id="mycomment-tab" data-toggle="tab" href="#mycomment" role="tab" aria-controls="mycomment" aria-selected="false">내가 쓴 댓글</a>
				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<!-----------------------------------------------------  내가 쓴 글  ----------------------------------------------------------->
				<div class="tab-pane fade show active" id="mywrite">
					<br> <br>
					<div class="container2">

						<!-- 게시판 헤더 시작 -->
						<div class="bbsHeader">
							<div class="header no">No</div>
							<div class="header title">제목</div>
							<div class="header writer">작성자</div>
							<div class="header date">작성일시</div>
							<div class="header viewCount">조회수</div>
						</div>

						<!-- 게시판 게시물 리스트 시작 -->
						<c:forEach var="myBoardList" items="${myBoardList }">
						<div class="bbsContents">
							<div class="content no">${myBoardList.ROWNUM }</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="myBoard&bbs_code="${myBoardList.BBS_CODE }>${myBoardList.TITLE } </a>
								</div>
								<div class="commentCount">
									<i class='far fa-comment'>${myBoardList.COUNT }</i>
								</div>
							</div>
							<div class="content writer">${myBoardList.NICKNAME }</div><input type="hidden" id="bbs_code" name="bbs_code" value="${myBoardList.BBS_CODE }">
							<div class="content date">${myBoardList.POST_DATE }</div>
							<div class="content viewCount">${myBoardList.HIT_COUNT }</div>
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

						
					</div>

				</div>
				<!----------------------------------------------------- 내가 쓴 글 ----------------------------------------------------------->

				<!----------------------------------------------------- 내가 쓴 댓글 ----------------------------------------------------------->
				<div class="tab-pane fade" id="mycomment" role="tabpanel" aria-labelledby="nav-profile-tab">
					<br> <br>
					<div class="container2">


						<!-- 게시판 헤더 시작 -->
						<div class="bbsHeader">
							<div class="header no">No</div>
							<div class="header title">게시판</div>
							<div class="header writer">제목</div>
							<div class="header date">작성일시</div>
							<div class="header viewCount">활동점수</div>
						</div>

						<!-- 게시판 게시물 리스트 시작 -->
						<div class="bbsContents">
							<div class="content no">10</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/SendNoteDetail.jsp">누구보다 빠르게 난 남들과는 </a>
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
							<div class="content no">9</div>
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
							<div class="content no">8</div>
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
							<div class="content no">7</div>
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
							<div class="content no">6</div>
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
							<div class="content no">5</div>
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
							<div class="content no">4</div>
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
							<div class="content no">3</div>
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
							<div class="content no">2</div>
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
							<div class="content no">1</div>
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
						
					</div>
				</div>
				<!----------------------------------------------------- 내가 쓴 댓글 ----------------------------------------------------------->
			</div>
		</div>
	</div>