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
<title>입양리스트</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/cat_list.css">

<!-- JS 파일  -->
<script src="<%=cp %>/js/view/cat_list.js"></script>

<%-- <!-- 페이지 CSS, 자바스크립트 -->
<link rel="stylesheet" href="<%=cp%>/css/view/adopt_list.css"> --%>

</head>
<body>
<div id="content">

	<c:import url="Menu.jsp"></c:import>
		
	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

	<section class="header container-fluid ">
		<div class="header-title">
			<h2 class="h2">입양</h2>
		</div>
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item">
					<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<span class="breadcrumb-divider">입양</span>
				</li>
			</ul>
		</div>
	</section>
	
	<!-- ★★★★ 지역 검색 ★★★★★ -->
	<section class="section-1 continer-fluid">
		
		<!-------------------   10  ------------------------->
		<div class="form-group col-lg-10 search">
			
			<!-- row1 -->
			<div class="row">
				<h5>동네에 어떤 길고양이들이 있는지 확인하세요!</h5>
			</div>
			
			<!-- row2 -->
			<div class="row">
				<!-- 구 선택 -->
				<div class="col-lg-4">
					<select class="custom-select">
						<option selected>구 선택</option>
						<option value="1">마포구</option>
						<option value="2">영등포구</option>
						<option value="3">서대문구</option>
					</select>
				</div>
				<!-- 동 선택 -->
				<div class="col-lg-4">
					<select class="custom-select">
						<option selected>동 선택</option>
						<option value="1">연희동</option>
						<option value="2">연남동</option>
						<option value="3">서교동</option>
					</select>
				</div>
				<!-- 조회버튼 -->
				<div class="col-lg-2">
					<button type="button" class="btn btn-primary">조회</button>
				</div>
			</div>
			
			<hr>
			
			<!-- row3 -->
			<div class="row">
				<h5>검색된 고양이<span> 5 </span>마리</h5>
			</div>
			
			<!-------------------   2  ------------------------->
			<!-- 우측 사이드바 (입양신청)-->
			<div class="slidemenu col-lg-2 text-center">
				<div class="mycat">
					<div class="" align="left">
						<p>내가 관리하는 길냥이</p>
					</div>
					<div class="" align="right">
						<a href="#" class="mycat-prev"><i class="fas fa-chevron-left"></i></a>
						<a href="#" class="mycat-next"><i class="fas fa-chevron-right"></i></a>
					</div>
					
					<div class="col">
						<figure class="figure">
							<img src="img/straycat.jpg" class="mycat-img rounded" alt="" style="width: 80px; height: 80px;">
	 						<figcaption class="figure-caption text-center">야옹이</figcaption>						
	 					</figure>
	 					<figure class="figure">
							<img src="img/straycat.jpg" class="mycat-img rounded" alt="" style="width: 80px; height: 80px;">
	 						<figcaption class="figure-caption text-center">나비</figcaption>						
	 					</figure>
 					</div>
 					<div class="col">
	 					<figure class="figure">
							<img src="img/straycat.jpg" class="mycat-img rounded" alt="" style="width: 80px; height: 80px;">
	 						<figcaption class="figure-caption text-center">개냥이</figcaption>						
	 					</figure>	
	 					<figure class="figure">
							<img src="img/straycat.jpg" class="mycat-img rounded" alt="" style="width: 80px; height: 80px;">
	 						<figcaption class="figure-caption text-center">호랭이</figcaption>						
	 					</figure>		
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="section-2 container">
		<c:forEach var="i" begin="0" end="7">
			<div class="card-deck">
			
				<!-- 1마리 -->
				<div class="card mb-2" style="max-width: 540px;">
					<div class="row no-gutters">
					
						<!-- 길냥이 대표이미지 -->
						<div class="col-md-5 cat-photo">
							<img src="img/straycat.jpg" class="card-img" alt="">
						</div>
						
						<!-- 길냥이 정보 -->
						<div class="col-md-7 cat-info">
							<div class="card-body">
								<!-- 고양이 코드 -->
								<small class="text-muted">#45827</small>
								<!-- 고양이 이름 -->
								<h5 class="card-title">야옹이</h5>
								<!-- 고양이 정보 -->
								<div class="card-text">
									<ul class="cat-info-list">
										<li>코리안숏헤어(女)</li>
										<li>서울시 성동구 성수동</li>
										<li>2019-06-08</li>
									</ul>	
								</div>
							</div>
						</div>
						
					</div>
				</div>
				
				<!-- 1마리 -->
				<div class="card mb-2" style="max-width: 540px;">
					<div class="row no-gutters">
					
						<!-- 길냥이 대표이미지 -->
						<div class="col-md-5 cat-photo">
							<img src="img/straycat.jpg" class="card-img" alt="">
						</div>
						
						<!-- 길냥이 정보 -->
						<div class="col-md-7 cat-info">
							<div class="card-body">
								<!-- 고양이 코드 -->
								<small class="text-muted">#45827</small>
								<!-- 고양이 이름 -->
								<h5 class="card-title">야옹이</h5>
								<!-- 고양이 정보 -->
								<div class="card-text">
									<ul class="cat-info-list">
										<li>코리안숏헤어(女)</li>
										<li>서울시 성동구 성수동</li>
										<li>2019-06-08</li>
									</ul>	
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</c:forEach>
	</section>
	
<!-- 	<section class="section-3">
		
		<div class="card-header">
			내가 관리하는 고양이
		</div>
			------------------------------------------------ 로그인 O --------------------------------------------------
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
		------------------------------------------------ 로그인 O --------------------------------------------------
		------------------------------------------------ 로그인 X --------------------------------------------------
		
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
		
		------------------------------------------------ 로그인 X --------------------------------------------------
	</section> -->
	
	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
	
</div> <!-- end #content  -->



		<!-- <div class="container2 header">
		<div class="row">
			<div class="col-9">
			<h1>입양집사찾기</h1>
			<hr>
			<div class="row">
				<div class="col-8">
					<h5>
						<a href="#" class="red">긴급입양</a>
						<a href="#" class="purple">분실의심</a>
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
			</div> -->

			<!-- <div class="col-3">
			 <div class="text-right">
			 	<button type="button" class="btn btn-primary">입양등록</button>
			 </div>
				<div class="card">
					<div class="card-header">
						내가 올린 입양글
					</div>
				------------------------------------------------ 로그인 O --------------------------------------------------
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
				------------------------------------------------ 로그인 O --------------------------------------------------
				------------------------------------------------ 로그인 X --------------------------------------------------
				
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
				
				------------------------------------------------ 로그인 X --------------------------------------------------
			</div>
			</div>
		</div>
	</div> -->

</body>
</html>