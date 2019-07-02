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
<title>Missing_Read.jsp(실종게시글열람)</title>
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
<style type="text/css">

	*{
	font-family: 맑은 고딕;
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
	
	<div class="container">
		<section class="container">
			<div id="breadcrumb" class="">
				<h2 class="h2">실종</h2>
				<ul class="u-list-inline pull-right">
					<li id="breadcrumb-home" class="list-inline-item">
						<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
						<i class="">></i>
					</li>
					<li id="breadcrumb-category" class="list-inline-item">
						<a class="text-dark" href="#!"></a>
						<span>입양&실종</span>
					</li>
					<li id="breadcrumb-category" class="list-inline-item">
						<a class="text-dark" href="#!"></a>
						<span>실종 ></span>
					</li>
					
					<li id="breadcrumb-subcategory" class="list-inline-item">
						<span>실종게시글</span>
					</li>
				</ul>
			</div>
		</section>
		
		<section class="container">
			<div >
			
			</div>
				
		
		
		
		</section>
		
		

	</div>
</div>


</body>
</html>

