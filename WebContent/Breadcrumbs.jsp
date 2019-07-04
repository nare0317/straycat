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
<title>상단 게시판 제목 + Breadcrumbs 부분</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Font Awesome 5 -->
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<%-- <!-- CSS 파일 추가 -->
<link rel="stylesheet" href="<%=cp %>/css/Missing_Read.css"> --%>

<style type="text/css">
	
	*
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
	
	.header
	{
		margin-bottom: 40px;
	}
	
	.container
	{
		width: 100%;
	    padding-right: 15px;
	    padding-left: 15px;
	    margin-right: auto;
	    margin-left: auto;
	}
	
	.header-title
	{
		padding-top: 1rem;
		border-color: #ddd;
		border-bottom: solid 1px #000000e0;
	}
	
	span.sub-title
	{
		font-size: medium;
		letter-spacing: 0px;
	}
	
	.breadcrumbs ul
	{
		padding-top: 10px;
		padding-left: 0px;
	}
	
	
	h2 {
		font-weight: bold;
		letter-spacing: 5px;
		margin-top:40px;
	}

</style>

</head>
<body>

<div>

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
	
	
		
</div>
</body>
</html>