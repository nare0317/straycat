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
<title>StrayCatRegistration.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean"	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese"	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
div {
	font-family: 'Nanum Gothic Coding', monospace;
	font-family: 'Quicksand', sans-serif;
}

.card {
	margin-top: 30px;
	padding: 30px;
}

.dt1 {
	width: 50%;
	display: inline;
}

.dt2 {
	width: 50%;
	display: inline;
}

th {
	background-color: #F6F6F6;
	width: 30%;
}

.mButton.gCenter {
	position: relative;
	text-align: center;
}

.alignRight {
	margin: 10px 0;
	padding: 0 4px 0 0;
	text-align: right;
}

.card {
	margin-top: 100px;
}

span {
	font-size: small;
}

.container2 {
	margin-left: 100px;
	margin-right: 100px;
	margin-top: 60px;
}
</style>
</head>
<body>


	<div>
		<c:import url="Menu.jsp"></c:import>

		<div class="container2" style="margin-top: 60px;">
		<div class="row">
			<div class="col-9">
			<h1>입양집사찾기</h1>
			<hr>
			<div class="row">
				<div class="col-8">
					<h5>
						<a href="#" style="color:red; ">긴급입양</a>
						<a href="#" style="color:purple;">분실의심</a>
						<a href="#" >수컷</a><a href="#">암컷</a>
						<a href="#">아기묘</a><a href="#">성묘</a>
					</h5>
				</div>
				<div class="col-1">
					  <div class="form-group">
					    <select class="form-control" id="exampleFormControlSelect1">
					      <option selected="selected">동</option>
					      <option>2</option>
					      <option>3</option>
					      <option>4</option>
					      <option>5</option>
					    </select>
					  </div>
				</div>
				<div class="col-1">
					  <div class="form-group">
						    <select class="form-control" id="exampleFormControlSelect1">
						      <option selected="selected">구</option>
						      <option>2</option>
						      <option>3</option>
						      <option>4</option>
						      <option>5</option>
						    </select>
						</div>
				</div>
				<div class="col-2">
					<button type="button" class="btn btn-primary">지역검색</button>
				</div>
			</div>
			<div style="overflow-y: scroll; overflow-x: hidden; overflow-y: auto; height: 2000px;">

				<c:forEach var="i" begin="0" end="7">
					<div>
						<div class="card-deck">
							<c:forEach var="j" begin="0" end="1">
								<div class="card mb-3" style="margin: 30px; padding: 10px; height: 260px;">
									<div class="row no-gutters">
										<div class="col-md-4">
											<img src="img/straycat.jpg" class="card-img" alt="...">
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<div class="row">
													<div class="col-9">
														<h5 class="card-title">Card title</h5>
													</div>
													<div class="col-3">
														<span class="badge badge-primary">입양 진행</span>
													</div> 
												</div>
												<p class="card-text">This is a wider card with
													supporting text below as a natural lead-in to additional
													content. This content is a little bit longer.</p>
												<p class="card-text">
													<small class="text-muted">Last updated 3 mins ago</small>
												</p>
											</div>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
					<br>
				</c:forEach>
			</div>
			</div>
			
			<div class="col-3">
			 <div class="text-right">
			 	<button type="button" class="btn btn-primary">입양등록</button>
			 </div>
				<div class="card">
					<div class="card-header">
						내가 올린 입양글
					</div>
				<!-------------------------------------------------- 로그인 O ---------------------------------------------------->
				<div class="card-body">
					<div class="container">
						<div class="row">
						<div class="col">
						<img src="img/straycat.jpg" class="card-img" alt="...">
						</div>
						<div class="col">
						<img src="img/straycat.jpg" class="card-img" alt="...">
						</div>
						<div class="col">
						<img src="img/straycat.jpg" class="card-img" alt="...">
						</div>
						<div class="col">
						<img src="img/straycat.jpg" class="card-img" alt="...">
						</div>
						</div>
					</div>
					</div>
				</div>
				<!-------------------------------------------------- 로그인 O ---------------------------------------------------->
				<!-------------------------------------------------- 로그인 X ---------------------------------------------------->
				<!-- 
				<div class="card">
					<div class="card-header">
						내가 올린 입양글
					</div>
					<div class="card-body">
					<div class="container">
						<div class="jumbotron text-center">
							<h4>로그인을 하세요</h4>
							<br>
							<a class="btn btn-primary" href="#" role="button">로그인</a>
						</div>
					</div>
					</div>
				</div>
				 -->
				<!-------------------------------------------------- 로그인 X ---------------------------------------------------->
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