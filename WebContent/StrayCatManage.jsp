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
	<title>길고양이 관리</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp%>/css/view/straycatmanage.css">
</head>
<body>
<div id="content">

	<c:import url="Menu.jsp"></c:import>
		
	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

	<section class="header container ">
		<div class="header-title">
			<h2 class="h2">길냥이관리</h2>
		</div>
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item">
					<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<span class="breadcrumb-divider">길냥이관리</span>
				</li>
			</ul>
		</div>
	</section>
	
	<!-- ★★★★ 지역 검색 ★★★★★ -->
	<section class="section-1 container">
		<h5>동네에 어떤 길고양이들이 있는지 확인하세요!</h5>
		<div class="row col-10">
			<div class="form-group row col-8">
				<!-- 구 선택 -->
				<div class="col-sm-4">
					<select class="custom-select">
						<option selected>구 선택</option>
						<option value="1">마포구</option>
						<option value="2">영등포구</option>
						<option value="3">서대문구</option>
					</select>
				</div>
				<!-- 동 선택 -->
				<div class="col-sm-4">
					<select class="custom-select">
						<option selected>동 선택</option>
						<option value="1">연희동</option>
						<option value="2">연남동</option>
						<option value="3">서교동</option>
					</select>
				</div>
				
				<!-- 조회버튼 -->
				<div class="col-md-2">
					<button type="button" class="btn btn-primary">조회</button>
				</div>
			</div>
			<hr>
		</div>
	
		<div>
			<h5>검색된 고양이 20 마리</h5>
		</div>
		
	</section>
	
	
	<section class="section-2 container">
		<c:forEach var="i" begin="0" end="7">
			<div class="card-deck">
				<c:forEach var="j" begin="0" end="1">
					<div class="card mb-3" class="content">
						<div class="row no-gutters">
							<!-- 길냥이 대표이미지 -->
							<div class="col-md-4 cat-photo">
								<img src="img/straycat.jpg" class="card-img" alt="">
							</div>
							<!-- 길냥이 정보 -->
							<div class="col-md-8 cat-info">
								<div class="card-body">
									<small class="text-muted">#45827</small>
									<h5 class="card-title">야옹이</h5>
									<div class="card-text">
										<ul class="cat-info-list">
											<li>코리안숏헤어(女)</li>
											<li>서울시 성동구 성수동</li>
											<li>2019-06-08</li>
										</ul>	
									</div>
									<p class="card-text">
										<small class="text-muted">Last updated 3 mins ago</small>
									</p>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
			<br>
		</c:forEach>
	</section>
	
	<section class="section-3">
		<div class="col-2">
			<div class="card">
				<div class="card-header">
					내가 관리하는 고양이
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
	</section>
	
	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
	
</div> <!-- end #content  -->

</body>
</html>