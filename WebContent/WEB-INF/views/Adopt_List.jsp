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
<link rel="stylesheet" href="<%=cp%>/css/view/adopt_list.css">

<!-- JS 파일  -->
<script src="<%=cp %>/js/view/adopt_list.js"></script>
<script src="<%=cp %>/js/view/gudong.js"></script>
<script type="text/javascript">

	$(document).ready(function()
	{
		
		$("#searchAddress").click(function()
		{
			//alert("성공");
			$(location).attr("href", "<%=cp%>/adopt?searchGu=" + $("#gu").val() + "&searchDong=" + $("#dong").val());
		});

	}); 
	

</script>

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
	
	<!-- ★★★★ 섹션 1 ★★★★★ -->
	<section class="section-1 continer-fluid">
		
		<!-------------------   10  ------------------------->
		<div class="form-group col-lg-12 search">
			
			<!-- row1 -->
			<!-- <div class="row">
				<h5>동네에 어떤 길고양이들이 있는지 확인하세요!</h5>
			</div> -->
			
			<!-- row2 -->
			<div class="row">
				<!-- 구 선택 -->
				<div class="col-lg-3">
					<select class="custom-select" id="gu" onchange="dongList();">
						<option value="">구 선택</option>
						<c:forEach var="gu" items="${gu }">
							<option value="${gu.GU }">${gu.GU }</option>
						</c:forEach>
					</select>
				</div>
				<!-- 동 선택 -->
				<div class="col-lg-3">
					<select class="custom-select" id="dong" name="dong">
						<option value="">동 선택</option>
					</select>
				</div>
				<!-- 조회버튼 -->
				<div class="col-lg-2">
					<input type="button" value="조회" class="btn btn-primary" id="searchAddress">
				</div>
				
				<!-- 입양등록 -->
				<div class="col-lg-3 offset-lg-1 text-right write">
					<c:choose>
		       			<c:when test="${sessionScope.user_id != null }">
							<input type="button" class="btn btn-warning btn-lg" value="입양등록" id="adopt_write" 
							onclick="location.href='<%=cp%>/adopt_form?user_id=${sessionScope.user_id }'">
						</c:when>
						<c:otherwise>
							<input type="button" class="btn btn-warning btn-lg" value="입양등록" id="adopt_write" 
							onclick="location.href='<%=cp%>/login'">
						</c:otherwise>
					</c:choose>
				</div>
			</div>
			
			<hr>
			
			<!-- row3 -->
			<div class="row">		
				<c:if test="${dataCount!=0}">
					<h6 class="col-lg-8" class="searchCount">검색된 고양이 <span style="font-size: 22px; font-weight: bold;">${dataCount}</span>마리</h6>
				</c:if>
			</div>
			
			<!-- row4 -->
			<div class="row tag-buttons">	
				<h6 class="mx-auto">
					<a href="#" class="btn btn-outline-primary btn-sm active" role="button" aria-pressed="false" style="margin-right:20px;">긴급입양</a>
					<a href="#" class="btn btn-outline-danger btn-sm active" role="button" aria-pressed="false" style="margin-right:20px;">분실의심</a>
					<a href="#" class="btn btn-outline-warning btn-sm active" role="button" aria-pressed="false" style="margin-right:20px;">수컷</a>
					<a href="#" class="btn btn-outline-info btn-sm active" role="button" aria-pressed="false" style="margin-right:20px;">암컷</a>
					<a href="#" class="btn btn-outline-light btn-sm active" role="button" aria-pressed="false" style="margin-right:20px;">아기묘</a>
					<a href="#" class="btn btn-outline-success btn-sm active" role="button" aria-pressed="false" style="margin-right:20px;">성묘</a>
				</h6>
			</div>	

		</div>
		
	</section>
	
	<section class="section-2 container">
		
		<!-- 고양이 -->
		<div class="card-deck">
		
			<c:forEach var="list" items="${list }">		
			<div class="card">
				<div class="row no-gutters">
				
					<!-- 길냥이 대표이미지 -->
					<div class="col-md-5 cat-photo">
						<%-- <img src="${list.CAT_IMAGE }" class="card-img" alt=""> --%>
						<img src="img/straycat.jpg" class="card-img" alt="">
					</div>
					
					<!-- 길냥이 정보 -->
					<div class="col-md-7 cat-info">
						<div class="card-body">
							<!-- 고양이 이름 -->
							<h5 class="card-title">${list.CAT_NAME }</h5>
							<!-- 고양이 정보 -->
							<div class="card-text">
								<ul class="cat-info-list">
									<li>${list.CAT_TYPE }(${list.CAT_SEX })</li>
									<li>${list.CAT_AGE }</li>
									<li>${list.CAT_ADDRESS}</li>
									<li>${list.POST_DATE }</li>
								</ul>	
							</div>
						</div>
					</div><!-- 길냥이 정보 끝 -->
					<a href="<%=cp %>/adopt_read?adt_code=${list.ADT_CODE}" class="stretched-link"></a>
				</div>
			</div>
			</c:forEach>
			
		</div>

		<!-- 우측 사이드바 (입양신청)-->
		<%-- <c:choose>
	        <c:when test="${sessionScope.user_id != null }">
				<div class="slidemenu text-center mycat">
					<div class="row">
						
						<div class="col-10" align="left">
							<p>내가 쓴 입양글</p>
						</div>
						
						<div class="col-2" align="right">
							<a href="#" class="mycat-prev"><i class="fas fa-chevron-left"></i></a>
							<a href="#" class="mycat-next"><i class="fas fa-chevron-right"></i></a>
						</div>
					</div>
					
					<div class="row">
					
						<div class="col-6">
							<figure class="figure">
								<img src="img/straycat.jpg" class="mycat-img rounded" alt="" >
		 						<figcaption class="figure-caption text-center">야옹이</figcaption>						
		 					</figure>
		 					<figure class="figure">
								<img src="img/straycat.jpg" class="mycat-img rounded" alt="">
		 						<figcaption class="figure-caption text-center">나비</figcaption>						
		 					</figure>
						</div>
						<div class="col-6">
		 					<figure class="figure">
								<img src="img/straycat.jpg" class="mycat-img rounded" alt="">
		 						<figcaption class="figure-caption text-center">개냥이</figcaption>						
		 					</figure>	
		 					<figure class="figure">
								<img src="img/straycat.jpg" class="mycat-img rounded" alt="">
		 						<figcaption class="figure-caption text-center">호랭이</figcaption>						
		 					</figure>		
						</div>
						
					</div>
				</div>			
			</c:when>
			<c:otherwise>
				<div class="text-center mycat " style="width: 250px; height: 250px;">
					<div class="row">
						<div class="col-10" align="left">
							<p>내가 쓴 입양글</p>
						</div>
					</div>
					<br><br>
					<h4>로그인을 하세요</h4>
					<br>
					<a class="btn btn-primary" href="login" role="button">로그인</a>
				
				</div>					
			</c:otherwise>
		</c:choose> --%>
		
		
		
	</section>
	

	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
	
</div>
</body>
</html>