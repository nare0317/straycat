<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>

<c:import url="Head.jsp"></c:import>

<!-- 로그인 페이지 자바스크립트, CSS -->
<script src="<%=cp%>/js/view/board_list.js"></script>
<link rel="stylesheet" href="<%=cp%>/css/view/board_list.css">
  
</head>
<body>
<c:import url="Menu.jsp"></c:import>
<div class="container">
	<div class="header header-title">
		<h2 class="h2">자유게시판</h2>
	</div>
	<div class="breadcrumbs">
		<ul>
			<li class="list-inline-item"><a class="text-dark" href="main"><i class="fas fa-home"></i></a></li>
			<li class="list-inline-item">></li>
			<li class="list-inline-item">자유게시판</li>
		</ul>
	</div>
<form id="searchForm" action="board" method="get">
	<div class="form-group">
		<div class="input-group mb-3 d-flex justify-content-end row align-items-start">
		
			<div class="input-group-prepend">
				<select id="searchKey" name="searchKey" class="selectFiled custom-select">
					<option value="" selected>선택</option>
					<option value="subject">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
				<input id="searchValue" type="text" name="searchValue" class="textFiled" class="form-control">
			</div>
         
			<div class="input-group-append">
				<button id="searchBtn" class="btn btn-secondary" type="button" id="button-addon2">검색</button>
			</div>
		
		</div>
	</div>
	</form>

	<!-- 게시판 헤더 시작 -->
	<div class="bbsHeader">
		<div class="header no">No</div>
		<div class="header title">제목</div>
		<div class="header writer">작성자</div>
		<div class="header date">작성일</div>
		<div class="header viewCount">조회수</div>
		<div class="header recomm">추천수</div>
	</div>

	<!-- 게시판 게시물 리스트 시작 -->
	<c:forEach var="list" items="${list }">
	<div class="bbsContents">
		<div class="content no">${list.NUM }</div>
		<div class="content title titleLeft">
			<div class="contentTitle">
				<a class="contentLink" onclick="location.href='${articleUrl }&articleNum=${list.NUM}'">${list.TITLE }</a>
			</div>
			<div class="commentCount">
					<i class='far fa-comment'><span id="cmtCount">${list.CMT_COUNT }</span></i>
			</div>
		</div>
		<div class="content writer">${list.NICKNAME }</div>
		<div class="content date">${list.POST_DATE }</div>
		<div class="content viewCount">${list.HITCOUNT }</div>
		<div class="content recomm">${list.LIKE_COUNT }</div>
	</div>
	</c:forEach>
	<br><br>
	
	<!-- 페이지네이션 시작 -->
	<ul class="pagination pagination-sm justify-content-center">
	 
		<li class="page-item disabled"><a class="page-link text-dark" href="#">Previous</a></li>
		
		<c:forEach begin="1" end="${total_page }" step="1" var="pageNum">
			<li ${page eq pageNum ? "class='page-item active'" : "class='page-item'" } class="page-item active"><a class="page-link text-dark" href="${pagenation }${pageNum }">${pageNum }</a></li>
		</c:forEach>
		
		<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
	
	</ul>

	<!-- 글쓰기 버튼 -->
	<div id="rightHeader" class="row align-items-end justify-content-end">
		<button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/board/write'">
		<i class="fa fa-pencil-square-o"></i>글쓰기</button>
	</div>
    
</div>
   

<br>

<!-- 푸터 -->
<div>
	<c:import url="Footer.jsp"></c:import>
</div>

</body>
</html>

