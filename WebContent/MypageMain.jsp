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
<link href="<%=cp%>/css/view/note_list.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
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
					<div class="col-2">..</div>
					<div class="col-2">..</div>
				</div>
				<div class="row left">
					<div>
						<h5>test0123님</h5>
					</div>
				</div>
				<div class="row left">
					<div>
						<h5>
							활동점수 <span>xxx점</span>
						</h5>
					</div>
				</div>
				<div class="row left">
					<div>
						<h5>
							등급 <span>열혈집사</span>
						</h5>
					</div>
				</div>

				<div class="nav flex-column nav-pills" id="v-pills-tab"	role="tablist" aria-orientation="vertical">
					<a class="nav-link active" id="straycat-tab" data-toggle="pill"	href="#straycat" role="tab" aria-controls="straycat" aria-selected="true">길냥이관리</a> 
					<a class="nav-link"	id="memberupdate-tab" data-toggle="pill" href="#memberupdate" role="tab" aria-controls="memberupdate" aria-selected="false">회원정보관리</a>
					<a class="nav-link" id="activity-tab" data-toggle="pill" href="#activity" role="tab" aria-controls="activity" aria-selected="false">활동내역</a> 
					<a class="nav-link"	id="adoption-tab" data-toggle="pill" href="#adoption" role="tab" aria-controls="adoption" aria-selected="false">입양</a> 
					<a class="nav-link" id="notebox-tab" data-toggle="pill"	href="#notebox" role="tab" aria-controls="notebox" aria-selected="false">쪽지함</a>
				</div>
			</div>
			<div class="col-10">
				<div class="tab-content" id="v-pills-tabContent">

					<!-------------------------------------------------------- ① MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
					<div class="tab-pane fade show active" id="straycat" role="tabpanel" aria-labelledby="straycat-tab">
						<div class="gil">
							<h1>길냥이관리</h1>
							<br> <br> <br>
							<!-------------------------------------------------------- 내가 관리하는 고양이 / 내가 팔로우한 고양이 탭 -------------------------------------------------------->
							<div>
								<nav>
									<div class="nav nav-tabs" id="nav-tab" role="tablist">
										<a class="nav-item nav-link active text-center tab"	id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">내가
											관리하는 고양이</a> 
										<a class="nav-item nav-link text-center tab" id="nav-profile-tab" data-toggle="tab" href="#nav-profile"	role="tab" aria-controls="nav-profile" aria-selected="false">내가
											팔로우한 고양이</a>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent">
									<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->
									<div class="tab-pane fade show active" id="nav-home">
										<div class="row delBtn">
											<div class="col-10"></div>
											<div class="col-2 text-right">
												<button type="button" class="btn btn-primary" >목록에서 삭제</button>
											</div>
										</div>
										<c:forEach var="i" begin="0" end="2">
											<div>
												<div class="card-deck">
													<div class="card mb-3 catCard">
														<div class="row no-gutters">
															<div class="col-md-2">
																<img src="img/straycat.jpg" class="card-img" alt="...">
															</div>
															<div class="col-md-10">
																<div class="card-body">
																	<div class="col-9">
																		<h5 class="card-title">Card title</h5>
																	</div>
																	<p class="card-text">
																		This is a wider card with
																		supporting text below as a natural lead-in to
																		additional content. This content is a little bit
																		longer.
																	</p>
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

										<nav aria-label="Page navigation example">
											<ul class="pagination justify-content-center">
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#"	aria-label="Next"> <span aria-hidden="true">&raquo;</span>
												</a></li>
											</ul>
										</nav>


									</div>
									<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->

									<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
									<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

										<div class="row delBtn">
											<div class="col-10"></div>
											<div class="col-2 text-right">
												<button type="button" class="btn btn-primary" >목록에서 삭제</button>
											</div>
										</div>
										<c:forEach var="i" begin="0" end="2">
											<div>
												<div class="card-deck">
													<div class="card mb-3 catCard">
														<div class="row no-gutters">
															<div class="col-md-2">
																<img src="img/straycat.jpg" class="card-img" alt="...">
															</div>
															<div class="col-md-10">
																<div class="card-body">
																	<div class="col-9">
																		<h5 class="card-title">Card title</h5>
																	</div>
																	<p class="card-text">
																		This is a wider card with
																		supporting text below as a natural lead-in to
																		additional content. This content is a little bit
																		longer.
																	</p>
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

										<nav aria-label="Page navigation example">
											<ul class="pagination justify-content-center">
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
												</a></li>
											</ul>
										</nav>


									</div>
									<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
								</div>
							</div>


						</div>
					</div>
					<!-------------------------------------------------------- 내가 관리하는 고양이 / 내가 팔로우한 고양이 탭 -------------------------------------------------------->

					<!-------------------------------------------------------- ① MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->

					<!-------------------------------------------------------- ② MyPage : 회원정보 수정 부분 -------------------------------------------------------->
					<div class="tab-pane fade" id="memberupdate" role="tabpanel" aria-labelledby="memberupdate-tab">
						<div class="card text-center update">
							<div class="card-header">
								<h3>임나래</h3>
							</div>
							<div class="card-body">
								<h5 class="card-title">Special title treatment</h5>
								<p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
								<a href="MemberConfirmation.jsp" class="btn btn-primary">수정하기</a>
								<a href="UnRegistration.jsp" class="btn btn-primary">탈퇴하기</a>
							</div>
							<div class="card-footer text-muted">2 days ago</div>
						</div>
					</div>
					<!-------------------------------------------------------- ② MyPage : 회원정보 수정 부분 -------------------------------------------------------->

					<!-------------------------------------------------------- ④ MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
					<div class="tab-pane fade" id="activity" role="tabpanel" aria-labelledby="activity-tab">
						<div class="gil">
								<h1>활동내역</h1>
								<br> <br> <br>
								<!-------------------------------------------------------- 내가 쓴 글 / 내가 쓴 댓글 -------------------------------------------------------->
								<div>
									<nav>
										<div class="nav nav-tabs" id="nav-tab" role="tablist">
											<a class="nav-item nav-link active text-center tab" id="mywrite-tab" data-toggle="tab" href="#mywrite" role="tab" aria-controls="mywrite" aria-selected="true">내가 쓴 글</a>
											<a class="nav-item nav-link text-center tab" id="mycomment-tab" data-toggle="tab" href="#mycomment" role="tab" aria-controls="mycomment" aria-selected="false">내가 쓴 댓글</a>
										</div>
									</nav>
									<div class="tab-content" id="nav-tabContent">
										<!-----------------------------------------------------  내가 쓴 글  ----------------------------------------------------------->
										<div class="tab-pane fade show active" id="mywrite">
											<br> <br>
											<div class="container2">

												<!-- 게시판 헤더 시작 -->
												<div class="bbsHeader">
													<div class="header no">No</div>
													<div class="header title">게시판</div>
													<div class="header writer">제목</div>
													<div class="header date">작성일시</div>
													<div class="header viewCount">활동점수</div>
												</div>

												<!-- 게시판 게시물 리스트 시작 -->
												<div class="bbsContents">
													<div class="content no">10</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="<%=cp%>/ReceiveNoteDetail.jsp">누구보다 빠르게 난 남들과는 </a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">9</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">8</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">7</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">6</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">5</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">4</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">3</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">2</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">1</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<br> <br>

												<!-- 페이지네이션 시작 -->
												<ul class="pagination pagination-sm justify-content-center">
													<li class="page-item disabled">
														<a class="page-link text-dark" href="#">Previous</a></li>
													<li class="page-item active">
														<a class="page-link text-dark" href="#">1</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">2</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">3</a></li>
													<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
												</ul>

												
											</div>

										</div>
										<!----------------------------------------------------- 내가 쓴 글 ----------------------------------------------------------->

										<!----------------------------------------------------- 내가 쓴 댓글 ----------------------------------------------------------->
										<div class="tab-pane fade" id="mycomment" role="tabpanel" aria-labelledby="nav-profile-tab">
											<br> <br>
											<div class="container2">


												<!-- 게시판 헤더 시작 -->
												<div class="bbsHeader">
													<div class="header no">No</div>
													<div class="header title">게시판</div>
													<div class="header writer">제목</div>
													<div class="header date">작성일시</div>
													<div class="header viewCount">활동점수</div>
												</div>

												<!-- 게시판 게시물 리스트 시작 -->
												<div class="bbsContents">
													<div class="content no">10</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="<%=cp%>/SendNoteDetail.jsp">누구보다 빠르게 난 남들과는 </a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">9</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">8</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">7</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">6</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">5</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">4</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">3</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">2</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">1</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<br> <br>

												<!-- 페이지네이션 시작 -->
												<ul class="pagination pagination-sm justify-content-center">
													<li class="page-item disabled">
														<a class="page-link text-dark" href="#">Previous</a></li>
													<li class="page-item active">
														<a class="page-link text-dark" href="#">1</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">2</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">3</a></li>
													<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
												</ul>
												
											</div>
										</div>
										<!----------------------------------------------------- 내가 쓴 댓글 ----------------------------------------------------------->
									</div>
								</div>
							</div>

					</div>
					<!-------------------------------------------------------- ④ MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
					<!-------------------------------------------------------- ⑤ MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
					<div class="tab-pane fade" id="adoption" role="tabpanel" aria-labelledby="adoption-tab">
						<div class="gil">
							<h1>입양</h1>
							<br> <br> <br>
							<!-------------------------------------------------------- 내가 관리하는 고양이 / 내가 팔로우한 고양이 탭 -------------------------------------------------------->
							<div>
								<nav>
									<div class="nav nav-tabs" id="nav-tab" role="tablist">
										<a class="nav-item nav-link active text-center tab2" id="adoptionRecruitment-tab" data-toggle="tab" href="#adoptionRecruitment" role="tab" aria-controls="adoptionRecruitment" aria-selected="true">입양모집</a> 
										<a class="nav-item nav-link text-center tab2" id="adoptionApplication-tab" data-toggle="tab" href="#adoptionApplication"	role="tab" aria-controls="adoptionApplication" aria-selected="false">입양신청</a>
										<a class="nav-item nav-link text-center tab2" id="adoptionLike-tab" data-toggle="tab" href="#adoptionLike"	role="tab" aria-controls="adoptionLike" aria-selected="false">입양신청</a>
									</div>
								</nav>
								<div class="tab-content" id="nav-tabContent">
									<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->
									<div class="tab-pane fade show active" id="adoptionRecruitment">
										<div class="row delBtn">
											<div class="col-10"></div>
											<div class="col-2 text-right">
												<button type="button" class="btn btn-primary" >삭제</button>
											</div>
										</div>
										<c:forEach var="i" begin="0" end="2">
											<div>
												<div class="card-deck">
													<div class="card mb-3 catCard">
														<div class="row no-gutters">
															<div class="col-md-2">
																<img src="img/straycat.jpg" class="card-img" alt="...">
															</div>
															<div class="col-md-10">
																<div class="card-body">
																	<div class="col-9">
																		<h5 class="card-title">Card title</h5>
																	</div>
																	<p class="card-text">
																		This is a wider card with
																		supporting text below as a natural lead-in to
																		additional content. This content is a little bit
																		longer.
																	</p>
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

										<nav aria-label="Page navigation example">
											<ul class="pagination justify-content-center">
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#"	aria-label="Next"> <span aria-hidden="true">&raquo;</span>
												</a></li>
											</ul>
										</nav>


									</div>
									<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->

									<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
									<div class="tab-pane fade" id="adoptionApplication" role="tabpanel" aria-labelledby="nav-profile-tab">

										<div class="row delBtn">
											<div class="col-10"></div>
											<div class="col-2 text-right">
												<button type="button" class="btn btn-primary" >삭제</button>
											</div>
										</div>
										<c:forEach var="i" begin="0" end="2">
											<div>
												<div class="card-deck">
													<div class="card mb-3 catCard">
														<div class="row no-gutters">
															<div class="col-md-2">
																<img src="img/straycat.jpg" class="card-img" alt="...">
															</div>
															<div class="col-md-10">
																<div class="card-body">
																	<div class="col-9">
																		<h5 class="card-title">Card title</h5>
																	</div>
																	<p class="card-text">
																		This is a wider card with
																		supporting text below as a natural lead-in to
																		additional content. This content is a little bit
																		longer.
																	</p>
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

										<nav aria-label="Page navigation example">
											<ul class="pagination justify-content-center">
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
												</a></li>
											</ul>
										</nav>


									</div>
									<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
									<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
									<div class="tab-pane fade" id="adoptionLike" role="tabpanel" aria-labelledby="nav-profile-tab">

										<div class="row delBtn">
											<div class="col-10"></div>
											<div class="col-2 text-right">
												<button type="button" class="btn btn-primary" >삭제</button>
											</div>
										</div>
										<c:forEach var="i" begin="0" end="2">
											<div>
												<div class="card-deck">
													<div class="card mb-3 catCard">
														<div class="row no-gutters">
															<div class="col-md-2">
																<img src="img/straycat.jpg" class="card-img" alt="...">
															</div>
															<div class="col-md-10">
																<div class="card-body">
																	<div class="col-9">
																		<h5 class="card-title">Card title</h5>
																	</div>
																	<p class="card-text">
																		This is a wider card with
																		supporting text below as a natural lead-in to
																		additional content. This content is a little bit
																		longer.
																	</p>
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

										<nav aria-label="Page navigation example">
											<ul class="pagination justify-content-center">
												<li class="page-item"><a class="page-link" href="#"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
												<li class="page-item"><a class="page-link" href="#">1</a></li>
												<li class="page-item"><a class="page-link" href="#">2</a></li>
												<li class="page-item"><a class="page-link" href="#">3</a></li>
												<li class="page-item"><a class="page-link" href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
												</a></li>
											</ul>
										</nav>


									</div>
									<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
								</div>
							</div>


						</div>

					</div>
					<!-------------------------------------------------------- ⑤ MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
					<!-------------------------------------------------------- ⑥ MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
					<div class="tab-pane fade" id="notebox" role="tabpanel" aria-labelledby="notebox-tab">

						<!-- test -->

						<div class="tab-pane fade show active" id="straycat" role="tabpanel" aria-labelledby="straycat-tab">
							<div class='gil'>
								<h1>쪽지함</h1>
								<br> <br> <br>
								<!-------------------------------------------------------- 받은쪽지함 / 보낸쪽지함 -------------------------------------------------------->
								<div>
									<nav>
										<div class="nav nav-tabs" id="nav-tab" role="tablist">
											<a class="nav-item nav-link active text-center tab" id="receive-tab" data-toggle="tab" href="#receive" role="tab" aria-controls="receive" aria-selected="true">받은쪽지함</a>
											<a class="nav-item nav-link text-center tab" id="send-tab" data-toggle="tab" href="#send" role="tab" aria-controls="send" aria-selected="false">보낸쪽지함</a>
										</div>
									</nav>
									<div class="tab-content" id="nav-tabContent">
										<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->
										<div class="tab-pane fade show active" id="receive">
											<br> <br>
											<div class="container2">

												<!-- 게시판 헤더 시작 -->
												<div class="bbsHeader">
													<div class="header no">No</div>
													<div class="header title">제목</div>
													<div class="header writer">보낸사람</div>
													<div class="header date">받은날짜</div>
													<div class="header viewCount">상태</div>
												</div>

												<!-- 게시판 게시물 리스트 시작 -->
												<div class="bbsContents">
													<div class="content no">10</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="<%=cp%>/ReceiveNoteDetail.jsp">누구보다 빠르게 난 남들과는 </a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">9</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">8</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">7</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">6</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">5</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">4</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">3</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">2</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">1</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<br> <br>

												<!-- 페이지네이션 시작 -->
												<ul class="pagination pagination-sm justify-content-center">
													<li class="page-item disabled">
														<a class="page-link text-dark" href="#">Previous</a></li>
													<li class="page-item active">
														<a class="page-link text-dark" href="#">1</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">2</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">3</a></li>
													<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
												</ul>

												<!-- 글쓰기 버튼 -->
												<div id="rightHeader" class="row align-items-end justify-content-end">
													<button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/NoteWrite.jsp'">
														<i class="fa fa-pencil-square-o"></i>쪽지쓰기
													</button>
												</div>

											</div>

										</div>
										<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->

										<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
										<div class="tab-pane fade" id="send" role="tabpanel"
											aria-labelledby="nav-profile-tab">
											<br> <br>
											<div class="container2">


												<!-- 게시판 헤더 시작 -->
												<div class="bbsHeader">
													<div class="header no">No</div>
													<div class="header title">제목</div>
													<div class="header writer">보낸사람</div>
													<div class="header date">보낸날짜</div>
													<div class="header viewCount">상태</div>
												</div>

												<!-- 게시판 게시물 리스트 시작 -->
												<div class="bbsContents">
													<div class="content no">10</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="<%=cp%>/SendNoteDetail.jsp">누구보다 빠르게 난 남들과는 </a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">9</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">8</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">7</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">6</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">5</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">4</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">3</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">2</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<div class="bbsContents">
													<div class="content no">1</div>
													<div class="content title titleLeft">
														<div class="contentTitle">
															<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색
																다르게 리듬을 타는 비트위의 나그네 아싸 가오리</a>
														</div>
														<div class="commentCount">
															<i class='far fa-comment'>0</i>
														</div>
													</div>
													<div class="content writer">아웃사이더</div>
													<div class="content date">2019-07-04</div>
													<div class="content viewCount">10</div>
												</div>
												<br> <br>

												<!-- 페이지네이션 시작 -->
												<ul class="pagination pagination-sm justify-content-center">
													<li class="page-item disabled">
														<a class="page-link text-dark" href="#">Previous</a></li>
													<li class="page-item active">
														<a class="page-link text-dark" href="#">1</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">2</a></li>
													<li class="page-item">
														<a class="page-link text-dark" href="#">3</a></li>
													<li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
												</ul>

												<!-- 글쓰기 버튼 -->
												<div id="rightHeader" class="row align-items-end justify-content-end">
													<button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/NoteWrite.jsp'">
														<i class="fa fa-pencil-square-o"></i>쪽지쓰기
													</button>
												</div>
											</div>
										</div>
										<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
									</div>
								</div>
							</div>
						</div>

					</div>
					<!-------------------------------------------------------- ⑥ MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
					<!--  -->
				</div>
			</div>
		</div>
	</div>


<br>
<br>
<br>
<br>
<br>
<div>
	<c:import url="Footer.jsp"></c:import>
</div>


</body>
</html>