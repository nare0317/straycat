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
	<title>실종 고양이 리스트 </title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/missing_cat_list.css">
</head>
<body>


	<div>
		<c:import url="Menu.jsp"></c:import>

		<div class="container2 m60">
		<div class="row">
			<div class="col-9">
			<h1>실종냥이찾기</h1>
			<hr>
			<div class="row">
				<div class="col-8"></div>
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
			<div class="scroll">

				<c:forEach var="i" begin="0" end="7">
					<div>
						<div class="card-deck">
							<c:forEach var="j" begin="0" end="1">
								<div class="card mb-3 mph">
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
			 	<button type="button" class="btn btn-primary">실종등록</button>
			 </div>
				<div class="card">
					<div class="card-header">
						내가 올린 실종글
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