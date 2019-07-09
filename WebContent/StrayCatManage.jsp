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


<c:import url="Menu.jsp"></c:import>

<div class="container2 header">
	<div class="row">
		<div class="col-9">
			<h1>우리동네 길냥이</h1>
			<hr>
			<h6>동네에 어떤 길고양이들이 있는지 확인하세요!</h6>
			<div class="row">
				<div class="col-11">
					<div class="form-group">
						<select class="form-control" id="addressSelect">
							<option>서울시 마포구 서교동</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
				</div>
				<div class="col-1">
					<button type="button" class="btn btn-primary">조회</button>
				</div>
			</div>
			<div>
				<h5>검색된 고양이 20 마리</h5>
			</div>
			<div class="scroll">
		
				<c:forEach var="i" begin="0" end="7">
					<div>
						<div class="card-deck">
							<c:forEach var="j" begin="0" end="1">
								<div class="card mb-3" class="content">
									<div class="row no-gutters">
										<div class="col-md-4">
											<img src="img/straycat.jpg" class="card-img" alt="...">
										</div>
										<div class="col-md-8">
											<div class="card-body">
												<h5 class="card-title">Card title</h5>
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