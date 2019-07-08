<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath(); 
%>
<!DOCTYPE html>
<html>
<head>
	<title>상단 게시판 제목 + Breadcrumbs 부분</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/missing_read.css">
</head>
<body>


<c:import url="Menu.jsp"></c:import>

<!-- 헤더 + breadcrumbs -->

<section class="container header">
	<div class="header-title">
		<h2 class="h2">게시판제목<span class="sub-title">소제목</span></h2>
	</div>
	<div class="breadcrumbs">
		<ul>
			<li class="list-inline-item">
				<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
				<span class="breadcrumb-divider">></span>
			</li>
			<li class="list-inline-item">
				<a class="text-dark" href="#">게시판제목</a>
				<span class="breadcrumb-divider">></span>
			</li>
			<li class="list-inline-item">
				<span class="breadcrumb-divider">소제목</span>
			</li>
		</ul>
	</div>
</section>


<!-- 이 부분부터 각자 작성할 내용 작성하면됨.  -->
	
	
		
</body>
</html>