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
<title>BBS_Read.jsp(자유게시판 글열람 페이지)</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp %>/css/view/board_read.css">

<!-- JS 파일 -->
<script src="<%=cp %>/js/view/board_read.js"></script>

</head>
<body>

<div>

	<!-- ★★★★★메뉴바★★★★★ -->
	<c:import url="Menu.jsp"></c:import>
		
	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

	<section class="header container ">
		<div class="header-title">
			<h2 class="h2">자유게시판<span class="sub-title"></span></h2>
		</div>
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item">
					<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<span class="breadcrumb-divider">자유게시판</span>
				</li>
				<!-- <li class="list-inline-item">
					<span class="breadcrumb-divider">실종</span>
				</li> -->
			</ul>
		</div>
	</section>
		
	<!-- ★★★★★내용★★★★★ -->
	<section class="post-view container">
	
		<!-- 제목/작성자/작성일시/조회수 -->
		<div class="post-head row">
			<div class="col-lg-12">
				<!-- 글 제목 -->
				<h3 class="post-title">${article.TITLE }</h3>
				<!-- 제목 밑에 줄 -->
				<hr class="post-title-hr">
			</div>
		</div>
			
		<div class="post-head row">
			<div class="col-lg-6">
				<!-- 작성자아이디, 작성일시, 조회수 -->
				<ul class="list-inline">
					<li class="list-inline-item g-mx-4">${article.NICKNAME }</li>
					<li class="list-inline-item g-mx-4">|</li>
					<li id="timestamp" data-timestamp="2019-03-06 16:26:27.0" class="list-inline-item">${article.POST_DATE }</li>			
					<li class="list-inline-item g-mx-4">|</li>
					<li class="list-inline-item g-mx-4">${article.HIT_COUNT }</li>
				</ul>
			</div>
			
			<!-- 수정/삭제 버튼 -->
			<div class="col-md-2 offset-md-4">
				<button class="btn btn-secondary btn-sm pull-right" id="modify-btn">수정</button>
				<button class="btn btn-secondary btn-sm pull-right" id="delete-btn">삭제</button>
			</div>
		</div>
		
		<!-- ★★★★★글내용★★★★★ -->	
		<div class="row post-content">
			
			<!-- 글 내용 -->
			<div class="content col-lg-12">
				<p class="text-justify">${article.CONTENT }</p>
			</div>
			
		</div>
		
		
		
		<!-- ★★★★★ 신고/공유/추천 버튼 ★★★★★★ -->
		<div class="post-footer row justify-content-center">
			<button class="btn_report" onclick=""><span class="fa fa-ban"></span> 신고</button>
			
			<div class="post_share">
					<button class="btn_share" data-toggle="dropdown"><span class="fa fa-share-square-o"></span> 공유</button>
					<ul class="dropdown-menu share">
						<li><a href="javascript:;" onclick="prompt('주소를 복사하세요.', ''"><span class="fa fa-link"></span>주소복사</a></li>
						<li><a href="" class="facebook" target="_blank"><span class="fa fa-facebook"></span>Facebook</a></li>
						<li><a href="" class="twitter" target="_blank"><span class="fa fa-twitter"></span>Twitter</a></li>
					</ul>
			</div>
			<button class="btn_like">
				<span class="fas fa-thumbs-up"></span><span class="text"> 추천<strong>${article.LIKE_COUNT }</strong></span>
			</button>
		</div>

		
		<!-- ★★★★★ 이전글 / 다음글 ★★★★★★ -->
		<div class="beforeafter list-group">
			<c:if test="${prevArticle.NUM eq null }">
			<a href='#' class="prev list-group-item list-group-item-action">
			</c:if>
			<c:if test="${prevArticle.NUM != null }">
			<a href='<%=cp %>/board/article?articleNum=${prevArticle.NUM }' class="prev list-group-item list-group-item-action">
			</c:if>
				<i class="fas fa-chevron-up"> 이전 글 </i><span>${prevArticle.TITLE }</span>
			</a>
			<c:if test="${nextArticle.NUM eq null }">
			<a href='#' class="next list-group-item list-group-item-action">
			</c:if>
			<c:if test="${nextArticle.NUM != null }">
			<a href='<%=cp %>/board/article?articleNum=${nextArticle.NUM }' class="next list-group-item list-group-item-action">
			</c:if>
				<i class="fas fa-chevron-down"> 다음 글 </i><span>${nextArticle.TITLE }</span>
			</a>
		</div>
		
		<!-- 목록으로 돌아가기 버튼 -->
		<button type="button" class="btn btn-dark pull-right" onclick="location.href='<%=cp %>/board'">목록으로</button>



		<!-- ★★★★★ 댓글 ★★★★★★ -->
		<div class="comment-area">

			<!-- 댓글 입력  -->
			<form id="comment-form" action="<%=cp %>/board/article/commentinsert" method="post">
				<!-- <input id="boardId" name="boardId" value="11663" type="hidden"
					value="11663" /> -->

				<h5>댓글 남기기 <span class="login-notice">- 로그인 필요</span></h5>
 				
 				<!-- 댓글입력 창 -->
		        <textarea id="comment_input" class="form-control" name="comment" rows="2"
		         placeholder="댓글을 입력해주세요." maxlength="300" required></textarea>
				<p class="word-num text-right">(<span id="current-word">6</span>/300)</p>

 
 				<!-- 댓글입력 버튼 -->
				<div class="text-right">
					<button type="submit" id="comment_submit" class="btn btn-outline-primary">댓글등록</button>
				</div>
			</form>


			<!-- 댓글 리스트  -->
			<div class="comment-list-area">
				
				<div class="comment-head">
					<h5>댓글 <span class="comment-number" 
					id="comment-number">${commentCount }</span></h5>
				</div>
				
				<!-- 댓글 1 -->
				<c:forEach var="commentList" items="${commentList }">
				<div id="comment-wrapper">

					<div class="comment" data-id="16312" data-login="false">
						<div class="comment-content">
							<div class="comment-writer-date">
								<!-- <div class="d-block"> -->
									<h6 class="comment-writer">${commentList.NICKNAME }
									<span class="comment-date">${commentList.BBS_CMT_DATE }</span>
									</h6>
								<!-- </div> -->
							</div>
							<p>${commentList.CONTENT }</p>
						</div>
					</div><!-- end comment -->

					<hr class="comment-hr">

				</div><!-- end comment-wrapper -->
				</c:forEach>
			</div><!-- end comment-list area -->
		</div><!-- end comment-area -->

	</section>
	
	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
</div>
</body>
</html>