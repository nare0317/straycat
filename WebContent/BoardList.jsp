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
<title>List.jsp</title>

<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/accept_terms.css">
	<script type="text/javascript" src="<%=cp %>/js/view/accept_terms.js"></script>

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
			<li class="list-inline-item"><a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a></li>
			<li class="list-inline-item">></li>
			<li class="list-inline-item">자유게시판</li>
		</ul>
	</div>

	<div class="form-group">
		<div class="input-group mb-3 d-flex justify-content-end row align-items-start">
			<div class="input-group-prepend">   
				<select name="searchKey" class="selectFiled custom-select">
					<option selected>선택</option>
					<option value="subject">제목</option>
					<option value="name">작성자</option>
					<option value="content">내용</option>
				</select>
				<input type="text" name="searchValue" class="textFiled" class="form-control">
			</div>
         
			<div class="input-group-append">
				<button class="btn btn-secondary" type="button" id="button-addon2">검색</button>
			</div>
		</div>
	</div>

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
	<div class="bbsContents">
		<div class="content no">10</div>
		<div class="content title titleLeft">
			<div class="contentTitle">
				<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 </a>
			</div>
			<div class="commentCount">
					<i class='far fa-comment'>0</i>
			</div>
		</div>
		<div class="content writer">아웃사이더</div>
		<div class="content date">2019-07-04</div>
		<div class="content viewCount">10</div>
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">9</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">8</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">7</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">6</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">5</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">4</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">3</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">2</div>
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
		<div class="content recomm">5</div>
	</div>
	<div class="bbsContents">
		<div class="content no">1</div>
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
		<div class="content recomm">5</div>
	</div>
	<br><br>
	
	<!-- 페이지네이션 시작 -->
	<ul class="pagination pagination-sm justify-content-center">
		<li class="page-item disabled"><a class="page-link text-dark" href="#">Previous</a></li>
		<li class="page-item active"><a class="page-link text-dark" href="#">1</a></li>
		<li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
		<li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
		<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
	</ul>

	<!-- 글쓰기 버튼 -->
	<div id="rightHeader" class="row align-items-end justify-content-end">
		<button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/Created.jsp'">
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

