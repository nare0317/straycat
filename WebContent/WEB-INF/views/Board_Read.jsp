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
<script type="text/javascript" src="<%=cp %>/js/view/board_read.js"></script>

</head>
<body>

<div>

	<!-- ★★★★★메뉴바★★★★★ -->
	<c:import url="Menu.jsp"></c:import>
		
	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

	<section class="header container ">
		<div class="header-title">
			<h2 id="test" class="h2">자유게시판<span class="sub-title"></span></h2>
		</div>
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item">
					<a class="text-dark" href="<%=cp%>/main"><i class="fas fa-home"></i></a>
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
					<li class="list-inline-item g-mx-4">조회수 ${article.HITCOUNT }</li>
				</ul>
			</div>
			
			<!-- 수정/삭제 버튼 -->
			<c:if test="${sessionScope.user_id != null && sessionScope.user_id == article.ID }">
			<div class="col-md-2 offset-md-4">
				<button class="btn btn-secondary btn-sm pull-right" id="modify-btn" value="${article.CODE }">수정</button>
				<button class="btn btn-secondary btn-sm pull-right" id="delete-btn" value="${article.CODE }">삭제</button>
			</div>
			</c:if>
			
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
						<li><a href="" onclick=""><span class="fa fa-link"></span>주소복사</a></li>
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
			<form id="comment_form" action="<%=cp %>/commentwrite" method="post">
				
				<h5>댓글 남기기</h5>
 				
 				<!-- 댓글입력 창 -->
 				<c:if test="${sessionScope.user_id != null }">
		        <textarea id="comment_input" class="form-control" name="content" rows="2"
		         placeholder="댓글을 입력해주세요." maxlength="300" required></textarea>
				<p class="word-num text-right">(<span id="current-word">0</span>/300)</p>
				</c:if>
				<c:if test="${sessionScope.user_id == null }">
				<textarea id="comment_input" class="form-control" name="content" rows="2"
		         placeholder="로그인이 필요합니다." maxlength="300" disabled></textarea>
				<p class="word-num text-right">(<span id="current-word">0</span>/300)</p>
				</c:if>
				
				<!-- 댓글 입력을 위한 hidden -->
				<input type="hidden" id="bbs_code" value="${article.CODE }" name="bbs_code">
				<input type="hidden" id="user_id" value="${sessionScope.user_id }" name="user_id">
								
 				<!-- 댓글입력 버튼 -->
				<div class="text-right">
				<c:if test="${sessionScope.user_id == null }">
					<button type="button" id="comment_submit" class="btn btn-outline-primary" disabled>댓글등록</button>
				</c:if>
				<c:if test="${sessionScope.user_id != null }">
					<button type="button" id="comment_submit" class="btn btn-outline-primary">댓글등록</button>
				</c:if>
				
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

					<div class="comment">
						<div id="${commentList.BBS_CMT_CODE }" class="comment-content">
							<div class="comment-writer-date">
								<h6 class="comment-writer">${commentList.NICKNAME }
								<span class="comment-date">${commentList.BBS_CMT_DATE }</span>
								</h6>
							</div>
							<c:if test="${sessionScope.user_id == commentList.ID }">
							<button class="comment_modify btn btn-sm btn-secondary" type="button" value="${commentList.BBS_CMT_CODE }">수정</button>
							<button class="comment_delete btn btn-sm btn-secondary" type="button" value="${commentList.BBS_CMT_CODE }">삭제</button>
							</c:if>
							<div class="cmt_content">${commentList.CONTENT }</div>
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
<script type="text/javascript">



$(document).ready(function(){
	// 댓글 입력
	$("#comment_submit").click(function()
	{
		if ($("#comment_input").val() == "")
		{
			alert("등록할 내용을 입력하세요.");
			return;
		}
	
		$.ajax({
			method: "GET",
			url: "<c:url value='/commentwrite'/>",
			data: {"user_id":$("#user_id").val(), "bbs_code":$("#bbs_code").val(), "content":$("#comment_input").val()},
			complete: function()
			{
				location.reload();
			}
		})
	})
	
	//댓글 입력 글자 수 세기
	$('#comment_input').keyup(function (e){
	   var content = $(this).val();
	   $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
	   $('#current-word').html(content.length);
	});
	
	
	// 서로 다른 수정 버튼을 두 번 클릭했을 때, 이전에 클릭한 수정 버튼과 댓글 값을 저장하기 위한 변수 생성.
	var oldElement = null;
	var oldContent = null;
	var oldModifyElement = null;
	var oldDeleteElement = null;
	$(".comment_modify").click(function()
	{
		// 수정 버튼을 클릭했을 때, 다른 댓글을 수정하고 있었다면,
		if (oldElement != null && oldContent!=null)
		{
			// 다른 댓글 영역의 textarea 엘리먼트를 지우고 원본 텍스트를 넣음
			oldElement.empty();
			oldElement.html(oldContent);
		}
		
		oldModifyElement = $(this);
		oldDeleteElement = $(this).next();
		
		// 클릭한 버튼이 속한 댓글의 내용을 변수에 담기
		oldElement = $(this).parent().find(".cmt_content");
		oldContent = $(this).parent().find(".cmt_content").html();
		
		// 댓글의 내용을 비우고 textarea 엘리먼트를 넣기
		oldElement.empty();
		oldElement.html("<br><textarea class='form-control txtAreaModify' name='comment' rows='2' placeholder='댓글을 입력해주세요.'maxlength='300' required></textarea>" + 
				" <p class='word-num text-right'>(<span class='current-word'>0</span>/300)</p>" +
				"<button class='confirmModify' type='button'>수정</button>" +
				"<button class='cancelModify' type='button'>취소</button>");
		
		// 수정, 삭제 버튼 지우기
		oldModifyElement.remove();
		oldDeleteElement.remove();
		
		// 생성한 textarea에 기존 값 채우기
		// textarea에 넣으려면 <br> 태그를 개행문자로 변경해야 함
		$(".txtAreaModify").val(oldContent.replaceAll("<br>", "\n"));
		
		// 수정을 위해 코멘트의 id 값을 저장
		var bbs_cmt_code = $(this).val();
		
		
		// 댓글 수정 입력란의 글자 수 세기
	 	$('.txtAreaModify').keyup(function (e){
		   var modifyContent = $(this).val();
		   $('.current-word').html(modifyContent.length);
		});
		
		// 수정을 취소할 경우 페이지 리로드
	 	$(".cancelModify").click(function()
		{
			location.reload();
		})
		
		// 코멘트를 수정한다면, 수정한 내용을 반영한 다음에 페이지 리로드
		$(".confirmModify").click(function name()
		{
			// 댓글 업데이트를 위해 content 값 저장
			// textarea의 개행문자를 <br> 태그로 치환하여 저장
			var content = $(".txtAreaModify").val().replaceAll("\n","<br/>");
			
			$.ajax({
				method: "GET",
				url: "<c:url value='/commentupdate' />",
				data: {"bbs_cmt_code":bbs_cmt_code, "content":content},
				complete: function(){
					location.reload();						
				}
			})// end ajax
		})// end .confirmModify click event
	})// end .comment_modify click event
	
	// 댓글 삭제 버튼을 클릭한 경우
	$(".comment_delete").click(function()
	{
		if (confirm("정말 삭제하시겠습니까?"))
		{
			// 댓글 삭제를 위한 id 값 저장
			var bbs_cmt_code = $(this).val();
			console.log(bbs_cmt_code);
			$.ajax({
				method: "GET",
				url: "<c:url value='/commentdelete'/>",
				data: {"bbs_cmt_code":bbs_cmt_code},
				success: function(){
					alert("삭제되었습니다.");
				},
				complete: function(){
					location.reload();
				}
			})// end ajax
		}
	})// end .comment_delete click event
	
	
	// 게시글 삭제 버튼을 클릭한 경우
	$("#delete-btn").click(function()
	{
		var result = confirm('정말 삭제하시겠습니까?'); 
		
		var bbs_code = $("#delete-btn").val();
		
		//alert(bbs_code);
		
		if(result) 
		{
			location.href = "<%=cp%>/articledelete?bbs_code=" + bbs_code;
		} 
		else 
		{ 	
			return;
		}

	});
	
	// 게시글 업데이트 버튼을 클릭한 경우
	$("#modify-btn").click(function()
	{
		var bbs_code = $("#delete-btn").val();
		
		location.href="<%=cp%>/board/articleupdateform?bbs_code=" + bbs_code;
	});

	
});// jQuery end




</script>
</html>