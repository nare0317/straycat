<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

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