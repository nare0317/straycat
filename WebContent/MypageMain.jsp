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
<title>MypageMain.jsp</title>
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
	.left
	{
		margin-left:10px;
	}
</style>
</head>
<body>
<div>
	<c:import url="Menu.jsp"></c:import>
	<br>
	<div class="row left">
	  <div class="col-2">
	  <div class="row">
	  	<div class="col-6">
	  		<div class="left">
			  	<h2>임나래</h2>
			  </div>
	  	</div>
	  	<div class="col-2">
	  	..
	  	</div>
	  	<div class="col-2">
	  	..
	  	</div>	
	  </div>
	  <div class="row left">
	  		<div>
	  			<h5>test0123님</h5>
	  		</div>
	  </div>
	  <div class="row left">
	  		<div>
	  			<h5>활동점수 <span>xxx점</span></h5>
	  		</div>
	  </div>
	  <div class="row left">
	  		<div>
	  			<h5>등급 <span>열혈집사</span></h5>
	  		</div>
	  </div>
	  
	  
	    <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
	      <a class="nav-link active" id="straycat-tab" data-toggle="pill" href="#straycat" role="tab" aria-controls="straycat" aria-selected="true">길냥이관리</a>
	      <a class="nav-link" id="memberupdate-tab" data-toggle="pill" href="#memberupdate" role="tab" aria-controls="memberupdate" aria-selected="false">회원정보수정</a>
	      <a class="nav-link" id="memberout-tab" data-toggle="pill" href="#memberout" role="tab" aria-controls="memberout" aria-selected="false">회원탈퇴</a>
	      <a class="nav-link" id="activity-tab" data-toggle="pill" href="#activity" role="tab" aria-controls="activity" aria-selected="false">활동내역</a>
	      <a class="nav-link" id="adoption-tab" data-toggle="pill" href="#adoption" role="tab" aria-controls="adoption" aria-selected="false">입양</a>
	      <a class="nav-link" id="notebox-tab" data-toggle="pill" href="#notebox" role="tab" aria-controls="notebox" aria-selected="false">쪽지함</a>
	    </div>
	  </div>
	  <div class="col-10">
	    <div class="tab-content" id="v-pills-tabContent">
	      <div class="tab-pane fade show active" id="straycat" role="tabpanel" aria-labelledby="straycat-tab">
			<div style="overflow-y: scroll; overflow-x: hidden; overflow-y: auto; height: 100px;">

				<c:forEach var="i" begin="0" end="7">
					<div>
						<div class="card-deck">
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
						</div>
					</div>
				</c:forEach>
			</div>

		  </div>
	      <div class="tab-pane fade" id="memberupdate" role="tabpanel" aria-labelledby="memberupdate-tab">진</div>
	      <div class="tab-pane fade" id="memberout" role="tabpanel" aria-labelledby="memberout-tab">윤</div>
	      <div class="tab-pane fade" id="activity" role="tabpanel" aria-labelledby="activity-tab">비</div>
	      <div class="tab-pane fade" id="adoption" role="tabpanel" aria-labelledby="adoption-tab">...</div>
	      <div class="tab-pane fade" id="notebox" role="tabpanel" aria-labelledby="notebox-tab">...</div>
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