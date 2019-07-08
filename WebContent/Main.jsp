<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>메인</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<script type="text/javascript" src="<%=cp %>/js/view/main.js"></script>
	<link href="<%=cp%>/css/view/main.css" rel="stylesheet">
</head>
<body>



<c:import url="Menu.jsp"></c:import>
	<div>
		<img src="img/cat_back2.jpg" class="mainImg">
	</div>

	<div class="card"> <br>
		<div class="card-body center">
			<div>
			 	주변에 어떤 고양이가 있는지 확인하세요!
			</div><br>
			<div>
				<h4><span id="loc">"서울시 성동구 성수동"</span>에 사는 고양이</h4>
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
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<!-- <div class="container-fluid">
	 Control the column width, and how they should appear on different devices
	<div class="row">
	    <div class="col-sm-6">
	    	<div class="container">
	    		<div class="card text-center wh">
	    			<div class="container text-center" id="team">
						<h2>입양</h2>
						<p>서울시 서대문구 연희동</p>
						
						<div class="row"><br>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Johnny Walker</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Rebecca Flex</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Jan Ringo</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Kai Ringo</h5>
						</div>
						
						</div>
						</div>
	    		</div>
	    	</div>
	    </div>
		<div class="col-sm-6">
			<div class="container text-center">
	    		<div class="card" style="width: 800px; height: 400px;">
	    			<div class="container text-center" id="team">
						<h2>실종</h2>
						<p>서울시 서대문구 연희동</p>
						
						<div class="row"><br>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Johnny Walker</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Rebecca Flex</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Jan Ringo</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Kai Ringo</h5>
						</div>
						
						</div>
						</div>
	    		</div>
	    	</div>
		</div>
	</div>
</div> -->

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