<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Main.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
	.card 
	{
		left: 100px;
		width: 600px;
		heigth: 400px;
		bottom: 25%;
		font-size: 1.8em;
		font-weight: bold;
		position: absolute;
		border-radius: 15px;
	}
</style>
</head>
<body>
<div>
	<c:import url="Menu.jsp"></c:import>
		<div>
			<img src="img/cat_back2.jpg" style="width: 100%">
		</div>

		<div class="card"> <br>
			<div class="card-body" style="text-align: center;">
				<div>
				 	주변에 어떤 고양이가 있는지 확인하세요!
				</div><br>
				<div>
					<h4>서울시 성동구 성수동에 사는 고양이</h4>
					<h4><a href="#">10마리</a></h4>
				</div><br>
				<div class="input-group mb-3">
					<input type="text" class="form-control" placeholder="Search">
					<div class="input-group-append">
						<button class="btn btn-primary" type="submit">Go</button>
					</div>
				</div><br>
			</div>
		</div>
		<br><br><br><br><br><br>
		
		<div class="container-fluid">
		 <!-- Control the column width, and how they should appear on different devices -->
		<div class="row">
		    <div class="col-sm-6">
		    	<div class="container">
		    		<div class="card">
		    			입양
		    		</div>
		    	</div>
		    </div>
			<div class="col-sm-6">
				<div class="container">
		    		<div class="card">
		    			실종
		    		</div>
		    	</div>
			</div>
		</div>
	</div>
</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<div>
		<c:import url="Footer.jsp"></c:import>
	</div>


</body>
</html>