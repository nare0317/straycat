<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

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
						<!-- <button type="button" class="btn btn-primary" >목록에서 삭제</button> -->
					</div>
				</div>
				<c:forEach var="manageCat" items="${manageCat }">
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
												<h5 class="card-title">${manageCat.CAT_NAME }</h5>
											</div>
												<ul>
													<li>${manageCat.CAT_CODE }</li>
													<li>${manageCat.SPECIES }</li>
													<li>${manageCat.ADDRESS }</li>
													<li>${manageCat.STATUS }</li>
												</ul>
											<p class="card-text">
												<small class="text-muted">Last updated 3 mins ago</small>
											</p>
										</div>
									</div>
									<a href="<%=cp %>/catdetail?id=${manageCat.CAT_CODE}" class="stretched-link"></a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				
				
				

				<!-- <nav aria-label="Page navigation example">
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
				</nav> -->


			</div>
			<!-----------------------------------------------------  내가 관리하는 고양이 탭  ----------------------------------------------------------->

			<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
			<div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

				<div class="row delBtn">
					<div class="col-10"></div>
					<div class="col-2 text-right">
						<!-- <button type="button" class="btn btn-primary" >목록에서 삭제</button> -->
					</div>
				</div>
				<!-- 팔로우한 고양이들 정보 리스트 출력 -->
					<div>
					<c:forEach var="followList" items="${followList }">
						<div class="card-deck">
							<div class="card mb-3 catCard">
								<div class="row no-gutters">
									<div class="col-md-2">
										<img src="img/straycat.jpg" class="card-img" alt="...">
									</div>
									<div class="col-md-10">
										<div class="card-body">
											<div class="col-9">
												<h5 class="card-title">${followList.CAT_NAME }</h5>			
											</div>
											
												<ul>
													<li>${followList.CAT_CODE }</li>
													<li>${followList.SPECIES }</li>
													<li>${followList.ADDRESS }</li>
													<li>${followList.STATUS }</li>
													
												</ul>
										</div>
									</div>
									<a href="<%=cp %>/catdetail?id=${followList.CAT_CODE}" class="stretched-link"></a>
								</div>
							</div>
							
						</div>
						</c:forEach>
					</div>
					
	

				<!-- <nav aria-label="Page navigation example">
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
				</nav> -->


			</div>
			<!----------------------------------------------------- 내가 팔로우한 고양이 ----------------------------------------------------------->
		</div>
	</div>


</div>
<!-------------------------------------------------------- 내가 관리하는 고양이 / 내가 팔로우한 고양이 탭 -------------------------------------------------------->