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
									<a class="contentLink" href="Board_Read?bbs_code="${myBoardList.BBS_CODE }>${myBoardList.TITLE } </a>
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
							<div class="header title">내용</div>
							<div class="header writer">작성자</div>
							<div class="header date">작성일시</div>
							<div class="header viewCount">게시판</div>
						</div>

						<!-- 게시판 게시물 리스트 시작 -->
						<c:forEach var="myBoardComment" items="${myBoardComment }" >
						<div class="bbsContents">
							<div class="content no">10</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/SendNoteDetail.jsp">${myBoardComment.CONTENT } </a>
								</div>
							</div>
							<div class="content writer">${myBoardComment.NICKNAME }</div>
							<div class="content date">${myBoardComment.BBS_CMT_DATE }</div>
							<div class="content viewCount">자유게시판</div>
						</div>
						</c:forEach>
						<c:forEach var="myActComment" items="${myActComment }" >
						<div class="bbsContents">
							<div class="content no">10</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/SendNoteDetail.jsp">${myActComment.CONTENT } </a>
								</div>
							</div>
							<div class="content writer">${myActComment.NICKNAME }</div>
							<div class="content date">${myActComment.ACT_CMT_DATE }</div>
							<div class="content viewCount">고양이활동</div>
						</div>
						</c:forEach>
						<c:forEach var="myAdoptComment" items="${myAdoptComment }">
						<div class="bbsContents">
							<div class="content no">10</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/SendNoteDetail.jsp">${myAdoptComment.CONTENT } </a>
								</div>
							</div>
							<div class="content writer">${myAdoptComment.NICKNAME }</div>
							<div class="content date">${myAdoptComment.ADT_CMT_DATE }</div>
							<div class="content viewCount">입양모집글</div>
						</div>
						</c:forEach>
						<c:forEach var="myMissComment" items="${myMissComment }">
						<div class="bbsContents">
							<div class="content no">10</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="<%=cp%>/SendNoteDetail.jsp">${myMissComment.CONTENT } </a>
								</div>
							</div>
							<div class="content writer">${myMissComment.NICKNAME }</div>
							<div class="content date">${myMissComment.MIS_CMT_DATE }</div>
							<div class="content viewCount">실종글</div>
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
				<!----------------------------------------------------- 내가 쓴 댓글 ----------------------------------------------------------->
			</div>
		</div>
	</div>