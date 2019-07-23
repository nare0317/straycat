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
<title>입양글 열람 페이지</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp %>/css/view/adopt_read.css">

<!-- JS 파일 -->
<script src="<%=cp %>/js/view/adopt_read.js"></script>
<script type="text/javascript">

	$(document).ready(function()
	{
		// 게시글의 게시글상태(ADT_PROC)에 맞춰 셀렉트박스에 "selected" 옵션 추가
		$("#adt_proc option").each(function()
		{
			var adt_proc_selected = $("#adt_proc_selected").val();
			//alert(adt_proc_selected);
			
			if($(this).html()== adt_proc_selected)
		    {
		      $(this).attr("selected","selected");  
		    };
		});
		
		
		// 입양상태 변경 버튼 클릭 시 모달 창 호출
		$("#modal_call").click(function()
		{
			//alert("성공");
			$("#proc_change_modal").modal();
		});
		
		$("#confirm_update").click(function()
		{
			//alert("성공");
			//alert("adt_proc : " + $("#adt_proc").val());
			//alert("adt_code : " +$("#adt_code").val());
			$(location).attr("href", "<%=cp%>/adopt_proc?adt_proc=" + $("#adt_proc").val() + "&adt_code=" + $("#adt_code").val());
			
		});
		
		// 삭제 버튼 클릭 시 모달 창 호출 
		$("#delete-btn").click(function()
		{
			$("#delete_modal").modal();
		});
		
		$("#confirm_delete").click(function()
		{
			$(location).attr("href", "<%=cp%>/adopt_delete?adt_code=" + $("#adt_code").val());
		});
		
		
	}); 
	

</script>

</head>
<body>

<div id="content">

	<c:import url="Menu.jsp"></c:import>
		
	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

	<section class="header container">
		<div class="header-title">
			<h2 class="h2">입양<span class="sub-title">입양모집글</span></h2>
		</div>
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item">
					<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<a class="text-dark" href="#">입양&실종</a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<span class="breadcrumb-divider">입양</span>
				</li>
			</ul>
		</div>
	</section>
	
	<!-- ★★★★★내용★★★★★ -->
	<section class="post-view container">
	
		<!-- 제목/작성자/작성일시/조회수 -->
		<div class="post-title row">
			<div class="col-lg-12">
				<!-- 글 제목 -->
				<h3 class="title"><span class="adt_status">[${post.ADT_PROC }]</span>${post.CAT_NAME }</h3>
				<!-- 제목 밑에 줄 -->
				<hr class="post-title-hr">
			</div>
		</div>
		
		<div class="post-head row">
			<div class="col-lg-6">
				<!-- 작성자아이디, 작성일시, 조회수 -->
				<ul class="list-inline">
					<li class="list-inline-item g-mx-4">${post.USER_NICKNAME }
					<li class="list-inline-item g-mx-4">|</li>
					<li id="timestamp" data-timestamp="2019-03-06 16:26:27" class="list-inline-item">${post.POST_DATE }</li>			
					<li class="list-inline-item g-mx-4">|</li>
					<li class="list-inline-item g-mx-4"><span class="icon-mouse font11"></span>${post.HIT_COUNT }</li>
				</ul>
			</div>
			
			
			<!-- 수정/삭제 버튼 -->
			<c:if test="${sessionScope.user_id != null && sessionScope.user_id == post.USER_ID }">
				<div class="col-md-2 offset-md-4" align="right">
					<input type="button" class="btn btn-secondary btn-sm" id="modify-btn" value="수정"
					onclick="location.href='<%=cp%>/adopt_update_form?adt_code=${post.ADT_CODE}'">
					
					<!-- 입양모집글 상태가 '신규등록'일 때만 게시글 삭제 가능 -->
					<c:if test="${post.ADT_PROC eq '신규등록'}">
					<input type="button" class="btn btn-secondary btn-sm" id="delete-btn" value="삭제">
					<!-- onclick="location.href='<%=cp%>/adopt_delete?adt_code=${post.ADT_CODE }'" -->
					</c:if>
					
					<!-- 삭제하시겠습니까? 팝업 -->
					<div class="modal fade" id="delete_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-header">
					        <h5 class="modal-title" id="exampleModalLabel">게시글 삭제</h5>
					        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
					          <span aria-hidden="true">&times;</span>
					        </button>
					      </div>
					      <div class="modal-body" align="left">
					       현재 게시글을 삭제하시겠습니까?
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
					        <button type="button" class="btn btn-primary" id="confirm_delete">삭제</button>
					      </div>
					    </div>
					  </div>
					</div>
					
					<!-- 삭제 완료 팝업 -->
					<div class="modal fade success_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
					  <div class="modal-dialog modal-sm">
					    <div class="modal-content">
					      게시글이 정상적으로 삭제되었습니다. 
					    </div>
					  </div>
					</div>
					
				</div>
			</c:if>	
			
			<!--★★★★★ 게시글 상태 변경 ★★★★★ -->
			<c:if test="${sessionScope.user_id != null && sessionScope.user_id == post.USER_ID }">
				<div class="post-status row">
					<div class="input-group">
						
						<!-- 게시글코드(hidden) -->
            			<%-- <input type="hidden" id="adt_code" name="adt_code" value="${post.ADT_CODE}"> --%>
            			
            			<!-- 게시글번호(hidden) -->
            			<input type="hidden" id="articleNum" name="articleNum" value="${post.NUM }">
            			
						<!-- 게시글상태(hidden) ※ 해당 게시글의 게시글상태-->
						<input type="hidden" id="adt_proc_selected" name="adt_proc_selected" value="${post.ADT_PROC}">
						
						
						<!-- 게시글상태 -->
				    	<div class="input-group-prepend">
			        	  <div class="input-group-text">게시글 상태</div>
			       	 	</div>
			       	 	
			        	<select class="custom-select mr-sm-2" id="adt_proc" name="adt_proc">
					        <option value="">== 선택 ==</option>
					        <option value="ADP1" >신규등록</option>
					        <option value="ADP2" >입양진행중</option>
					        <option value="ADP3" >매칭진행중</option>
					        <option value="ADP4" >입양보류</option>
					        <option value="ADP5" >입양확정</option>
					        <option value="ADP6" <c:if test="${post.ADT_PROC} eq 'ADP6'">selected</c:if>>입양완료</option>
					    </select>
					    
			      		<!-- 게시글상태 변경 버튼 -->
						<button type="button" class="btn btn-dark" id="modal_call" data-toggle="modal" data-target="proc_change_modal">
						  변경
						</button>
			  
				
						<!-- 변경하시겠습니까? 팝업 -->
						<div class="modal fade" id="proc_change_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">입양 상태 변경</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						       현재 게시글의 상태를 변경하시겠습니까?
						      </div>
						      <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
						        <button type="button" class="btn btn-primary" id="confirm_update">변경</button>
						      </div>
						    </div>
						  </div>
						</div>
						
						<!-- 변경 완료 팝업 -->
						<div class="modal fade success_modal" tabindex="-1" role="dialog" aria-labelledby="mySmallModalLabel" aria-hidden="true">
						  <div class="modal-dialog modal-sm">
						    <div class="modal-content">
						      게시글 상태가 성공적으로 변경되었습니다. 
						    </div>
						  </div>
						</div>


				    </div>
				</div>
			</c:if>
		
		</div>
		
		<!-- ★★★★★글내용★★★★★ -->	
		<div class="post-content row">
			
				<!-- 고양이 대표사진 -->
				<div class="iconic-photo col-lg-3">
					<%-- <img src="<%=cp %>/img/cat_profile_picture.jpg" class="img-thumbnail"> --%>
					
					<!-- 사진 불러오는 구문 -->
					<!-- C:\GIT\SSIT_StrayCatProject\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\straycat\resource -->
					<img src="<%=cp %>${post.CAT_REP_IMAGE}" class="" style="width: 300px; height:300px% ">
				</div>
				
				<!-- 글 내용 -->
				<div class="content col-lg-7">
					<table class="missing-info table table-light">
						<!-- 입양분류(ADT_TYPE) 체크박스로 표시해주는 내용 추가해야 됨. -->
					
						<tr>
							<th class="align-top th-sm th-lg">이름</th>
							<td class="align-top">${post.CAT_NAME }</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">종류</th>
							<td class="align-top">${post.CAT_TYPE }</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">구조지역</th>
							<td class="align-top">${post.CAT_ADDRESS }</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">구조일</th>
							<td class="align-top">${post.RSQ_DATE }</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">나이</th>
							<td class="align-top">${post.CAT_AGE_TYPE }(${post.CAT_AGE })</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">성별</th>
							<td class="align-top">${post.CAT_SEX }</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">고양이<br>특이사항</th>
							<td class="align-top">
								<p>${post.CAT_ECT1 }</p>
							</td>
						</tr>
						<tr>
							<th class="align-top">건강상태</th>
							<td class="align-top">
								<p>${post.CAT_ECT2 }</p>
							</td>
						</tr>
						<tr>
							<th class="align-top">입양보내는 이유</th>
							<td class="align-top">
								<p>${post.ADT_REASON }</p>
							</td>
						</tr>
					</table>
				
					
					<!-- 게시글 작성자 정보 -->
					<div class="writer-info">
						<div class="row writer-info-title">게시글 작성자 정보</div>
						<div class="row writer-name"><label>이름 : </label>${post.USER_NAME }
							<a href="" onclick=""  class="send-message">
								<i class="fas fa-envelope"> 쪽지보내기 </i>
							</a>
						</div>
						<div class="row writer-tel"><label>연락처 : </label>${post.USER_TEL }</div>
						<div class="row writer-email"><label>이메일 :</label>${post.USER_EMAIL }</div>
					</div>
				</div>
				
				
				<!-- 우측 사이드바 (입양신청 - 로그인X)-->
				<c:if test="${sessionScope.user_id eq null}">
				<div class="slidemenu col-lg-2 text-center">
					<div class="apply">
						<h5 class="">현재 신청자 수:<span> ${post.APP_COUNT } </span>명</h5>
						<!-- 마감일자(hidden) -->
						<input type="hidden" id="endDate" value="${post.END_DATE }">
						<p>남은시간 : <br><span id="leftDate"></span></p>
						<input type="button" class="btn btn-primary disabled" value="입양신청">
						<p style="font-size: 10pt;">로그인 후 입양 신청이<br> 가능합니다.</p>
					</div>
				</div>
				</c:if>
				
				
				<!-- 우측 사이드바 (입양신청 - 게시글작성자)-->
				<c:if test="${sessionScope.user_id ne null && sessionScope.user_id eq post.USER_ID }">
					<div class="slidemenu col-lg-2 text-center">
						<div class="apply">
							<h5 class="">현재 신청자 수:<span> ${post.APP_COUNT } </span>명</h5>
							<!-- 마감일자(hidden) -->
							<input type="hidden" id="endDate" value="${post.END_DATE }">
							<p>남은시간 : <br><span id="leftDate"></span></p>
							<input type="button" class="btn btn-success" value="입양 신청자 확인"
							onclick="location.href='<%=cp%>/adopt/apply_list?adt_code=${post.ADT_CODE }'">
						</div>
					</div>
				</c:if>
				
			
				<!-- 우측 사이드바 (입양신청 - 입양신청자)-->
				<c:forEach var="applicant" items="${applicantList }">
				<c:if test="${user_id ne null && user_id eq applicant.APPLICANT_ID}">
				<div class="slidemenu col-lg-2 text-center">
					<div class="apply">
						<h5 class="">현재 신청자 수:<span> ${post.APP_COUNT } </span>명</h5>
						<!-- 마감일자(hidden) -->
						<input type="hidden" id="endDate" value="${post.END_DATE }">
						<p class="deadline">남은시간 : <span>13일 00:57:30</span></p>
						<button class="btn btn-secondary" data-toggle="tooltip" data-placement="bottom" disabled="disabled"
						title="2019.06.20 18:20:39에 이미 신청하셨습니다">신청하기</button>
					</div>
				</div>
				</c:if>
				</c:forEach>
				
				<!-- 우측 사이드바 (입양신청 - 일반사용자)-->
				<c:if test="${sessionScope.user_id ne null && sessionScope.user_id ne post.USER_ID }">
				<div class="slidemenu col-lg-2 text-center">
					<div class="apply">
						<h5 class="">현재 신청자 수:<span> ${post.APP_COUNT } </span>명</h5>
						<!-- 마감일자(hidden) -->
						<input type="hidden" id="endDate" value="${post.END_DATE }">
						<p>남은시간 : <br><span id="leftDate"></span></p>
						<input type="button" class="btn btn-primary" value="입양신청"
						onclick="location.href='<%=cp%>/adopt/apply_form?adt_code=${post.ADT_CODE }'">
					</div>
				</div>
				</c:if>
				
				
				
		</div>
		
		
		
		<!-- ★★★★★ 신고/공유/추천 버튼 ★★★★★★ -->
		<div class="post-footer row justify-content-center" id="post_footer">
			<button class="btn_report" data-toggle="modal" data-target="#exampleModalCenter"><span class="fa fa-ban"></span> 신고</button>
			
			<div class="post_share">
					<button class="btn_share" data-toggle="dropdown"><span class="fa fa-share-square-o"></span> 공유</button>
					<ul class="dropdown-menu share">
						<li><a href="javascript:;" onclick=""><span class="fa fa-link"></span>주소복사</a></li>
						<li><a href="" class="facebook" target="_blank"><span class="fa fa-facebook"></span>Facebook</a></li>
						<li><a href="" class="twitter" target="_blank"><span class="fa fa-twitter"></span>Twitter</a></li>
					</ul>
			</div>
			<button class="btn_like">
				<span class="fas fa-thumbs-up"></span><span class="text"> 추천<strong>${post.LIKE_COUNT }</strong></span>
			</button>
		</div>
		
		
		<!-- Modal -->
		<form action="catdetail" method="post" id="modalForm">
			<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalCenterTitle">입양게시판</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="container">
								<p>Post Number</p>
								<input type="text" value="#19283" class="form-control" readonly="readonly"> 
							</div><br>
							<div class="container">
								<p>Description</p>
								<select class="form-control" id="declarationSelect">
									<option selected="selected">신고분류 선택</option>
									<option>부적절한 정보(욕설, 협박 등)</option>
									<option>실종된 고양이</option>
									<option>불법 가정분양 의심</option>
								</select>
							</div>
							<br>
							<div class="container">
								<p>Input</p>
								<textarea class="form-control resize" id="comment_input" rows="3"></textarea>
								<div class="row text-right">
									<div class="col-8"></div>
										<div class="col-4">
											<div class="textCounter declaration"><span id="current-word">0</span> / 1000</div> 
										</div>
								</div>
								<!-- <div class="row">
									<span class="err1">필수 항목이 입력되지 않았습니다.</span>
								</div> -->
								<!-- <div class="row">
									<span class="err2">신고분류를 선택해 주세요.</span>
								</div> -->
							</div>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							<button type="button" class="btn btn-primary" id="sendBtn">Save changes</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		</div>
		
	</section>
	
	
	
		
		
		
	<section class="post-view-bottom container">	

		<!-- ★★★★★ 이전글 / 다음글 ★★★★★★ -->
		<div class="beforeafter list-group">
			<a href="" onclick="" class=" prev list-group-item list-group-item-action"> 
				<i class="fas fa-chevron-up"> 이전 글 </i><span>이전 글이 없습니다.</span>
			</a>
			<a href="" onclick=""  class="next list-group-item list-group-item-action">
				<i class="fas fa-chevron-down"> 다음 글 </i><span>깜찍한 아기냥이 입양하세요~!!!</span>
			</a>
		</div>
		
		<!-- 목록으로 돌아가기 버튼 -->
		<input type="button" class="btn btn-dark pull-right" value="목록으로" onclick="location.href='<%=cp%>/adopt'">



		<!-- ★★★★★ 댓글 ★★★★★★ -->
		<div class="comment-area">

			<!-- 댓글 입력  -->
			<form id="comment-form" action="/comment/json" method="post">
				<input id="boardId" name="boardId" value="11663" type="hidden"
					value="11663" />

				<h5>댓글 남기기 <span class="login-notice">- 로그인 필요</span></h5>

				<div class="form-group">
					<textarea id="text" name="text" type="text" rows="2"></textarea>
					<small class="letter-number-notice">1000자 이내로 입력해 주세요</small>
				</div>
 
				<div class="text-right">
					<button type="submit" class="btn btn-outline-primary">댓글등록</button>
				</div>
			</form>


			<!-- 댓글 리스트  -->
			<div class="comment-list-area">
				
				<div class="comment-head">
					<h5>댓글 <span class="comment-number" 
					id="comment-number">2</span></h5>
				</div>
				
				<!-- 댓글 1 -->
				<div id="comment-wrapper">

					<div class="comment" data-id="16312" data-login="false">
						<div class="comment-content">
							<div class="comment-writer-date">
								<!-- <div class="d-block"> -->
									<h6 class="comment-writer">김경희
									<span class="comment-date">2019-07-03 12:39</span>
									</h6>
								<!-- </div> -->
							</div>
							<p>어머나 ㅠㅠ 야옹이가 너무 귀여워요ㅠㅜ 제가 입양하고 싶지만 이미 키우고 있는 냥이가 6마리나 되서ㅜㅜ 
							부디 좋은 분 만나서 입양 갔으면 좋겠네요~!!!</p>
						</div>
					</div><!-- end comment -->

					<hr class="comment-hr">

				</div><!-- end comment-wrapper -->
				
				<!-- 댓글 2 -->
				<div id="comment-wrapper">

					<div class="comment" data-id="16312" data-login="false">
						<div class="comment-content">
							<div class="comment-writer-date">
								<!-- <div class="d-block"> -->
									<h6 class="comment-writer">임나래 <span class="comment-date g-color-gray-dark-v5 g-font-size-12 g-font-weight-300">2019-07-02 17:29</span>
									</h6>
								<!-- </div> -->
							</div>
							<p>이 길냥이 지나가다가 저도 봤는데 ㅠㅠ 어미가 새끼낳고 며칠을 봐도 돌아오질 않더라구요.. 아마 무슨 사고가 난 듯 해요ㅜㅜ 
							아기들 너무 이쁘고 귀여워요. 꼭 좋은 분 만나서 입양갔으면 좋겠네요^^ </p>
						</div>
					</div><!-- end comment -->

					<hr class="comment-hr">

				</div><!-- end comment-wrapper -->
				
			</div><!-- end comment-list area -->
		</div><!-- end comment-area -->

	</section>

	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
	
</body>
</html>