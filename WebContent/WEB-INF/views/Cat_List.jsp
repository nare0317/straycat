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
<title>길냥이리스트</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/cat_list.css">

<!-- JS 파일  -->
<script src="<%=cp %>/js/view/cat_list.js"></script>
<script src="<%=cp %>/js/view/gudong.js"></script>
<script type="text/javascript">

	$(document).ready(function()
	{
		
		$("#searchAddress").click(function()
		{
			$(location).attr("href", "<%=cp%>/cat?gu=" + $("#gu").val() + "&dong=" + $("#dong").val());			
		});
		
		dongList("${dongString}");
		
		
		<%-- $.ajax({
			url : "<c:url value=''>",
			type : "post",
			data : ,
			dataType : "json",
			success : function(data)
			{
								
			}
			error : function()
			{
				
			}
		});--%>
		
	}); 
	

</script> 

</head>
<body>
<div id="content">

	<c:import url="Menu.jsp"></c:import>
		
	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

	<section class="header container">
		<div class="header-title">
			<h2 class="h2">길냥이 관리</h2>
		</div>
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item">
					<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<span class="breadcrumb-divider">길냥이 관리</span>
				</li>
			</ul>
		</div>
	</section>
	
	<!-- ★★★★ 섹션 1 ★★★★★ -->
	<section class="section-1 container">
		
		<!-------------------   10  ------------------------->
		<div class="form-group col-lg-10 search">
			
			<!-- row1 -->
			<!-- <div class="row">
				<h5>동네에 어떤 길고양이들이 있는지 확인하세요!</h5>
			</div> -->
			
			<!-- row2 -->
			<div class="row">
				<!-- 구 선택 -->
				<div class="col-lg-3">
					<select class="custom-select" id="gu" onchange="dongList();">
						<option>구 선택</option>
						<c:forEach var="gu" items="${gu }">
							<option value="${gu.GU }" ${gu.GU == guString ? 'selected' : '' }>${gu.GU }</option>
						</c:forEach>
					</select>
				</div>
				<!-- 동 선택 -->
				<div class="col-lg-3">
					<select class="custom-select" id="dong" name="dong">
					<%-- <c:if test="${dongString != null }">
						<option value="${dongString }">${dongString }</option>
					</c:if>
					<c:if test="${dongString == null }">
						<option value="">동 선택</option>
					</c:if> --%>
					</select>
				</div>
				<!-- 조회버튼 -->
				<div class="col-lg-2">
					<button type="button" class="btn btn-primary" id="searchAddress">조회</button>
				</div>
						
				<div class="col-lg-2 offset-lg-1 text-right write">
					<c:choose>
	               	<c:when test="${sessionScope.user_id != null }">
						<input type="button" class="btn btn-primary btn-lg" value="길냥이등록" id="cat_write" onclick="javascript: write_func();">
					</c:when>
					<c:otherwise>
						<input type="button" class="btn btn-primary btn-lg" value="길냥이등록" id="cat_write" onclick="javascript: login_need();">
					</c:otherwise>
					</c:choose>
				</div>
				
			</div>
			
			<hr>
			<c:if test="${dataCount ne 0}">
				<h5 class="col-lg-8">검색된 고양이<span> ${dataCount } </span>마리</h5>
			</c:if>
			
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
						<img src="<%=cp %>/${list.CAT_IMAGE }" style="width: 200px; height: auto;">
						<!-- <img src="img/straycat.jpg" class="card-img" alt=""> -->
					</div>
					
					<!-- 길냥이 정보 -->
					<div class="col-md-7 cat-info">
						<div class="card-body">
							<!-- 고양이 이름 -->
							<h5 class="card-title">${list.CAT_NAME }</h5>
							<!-- 고양이 정보 -->
							<div class="card-text">
								<ul class="cat-info-list">
									<li>${list.CAT_CODE }</li>
									<li>${list.CAT_TYPE }(${list.CAT_SEX })</li>
									<li>${list.CAT_AGE }</li>
									<li>${list.CAT_ADDRESS}</li>
									<li>${list.POST_DATE }</li>
									<li>${list.CAT_STATUS }</li>
								</ul>	
							</div>
						</div>
					</div><!-- 길냥이 정보 끝 -->
					<a href="<%=cp %>/catdetail?id=${list.CAT_CODE}" class="stretched-link"></a>
				</div>
			</div>
			</c:forEach>
			
		</div>
<%-- 
		<!-- 우측 사이드바 (입양신청)-->
			<c:choose>
		        <c:when test="${sessionScope.user_id != null }">
					<div class="slidemenu text-center mycat">
						<div class="row">
							
							<div class="col-10" align="left">
								<p>내가 등록한 길냥이</p>
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
					<div class="slidemenu text-center mycat">
						<div class="row">
							
							<div class="col-10" align="left">
								<p>내가 등록한 길냥이</p>
							</div>
							
							<div class="col-2" align="right">
								<a href="#" class="mycat-prev"><i class="fas fa-chevron-left"></i></a>
								<a href="#" class="mycat-next"><i class="fas fa-chevron-right"></i></a>
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
	
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
	
</div>
</body>
</html>