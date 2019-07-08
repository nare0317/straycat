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
<title>Adoption_Read(Writer).jsp(입양글 열람 페이지 - 게시물 작성자)</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp %>/css/view/adoption_read.css">

<!-- JS 파일 -->
<script src="<%=cp %>/js/view/adoption_read.js"></script>

</head>
<body>

<div id="content">

	<c:import url="Menu.jsp"></c:import>
		
	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

	<section class="header container ">
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
				<h3 class="title"><span class="adt_status">[신규등록]</span>귀여운 치즈태비 입양하실분~!!</h3>
				<!-- 제목 밑에 줄 -->
				<hr class="post-title-hr">
			</div>
		</div>
		
		<div class="post-head row">
			<div class="col-lg-6">
				<!-- 작성자아이디, 작성일시, 조회수 -->
				<ul class="list-inline">
					<li class="list-inline-item g-mx-4">nare0317
					<li class="list-inline-item g-mx-4">|</li>
					<li id="timestamp" data-timestamp="2019-03-06 16:26:27.0" class="list-inline-item">2019-03-06 16:26</li>			
					<li class="list-inline-item g-mx-4">|</li>
					<li class="list-inline-item g-mx-4"><span class="icon-mouse" style="font-size: 11px;"></span> 1020</li>
				</ul>
			</div>
			
			<!-- 수정/삭제 버튼 -->
			<div class="col-md-2 offset-md-4" align="right">
				<button class="btn btn-secondary btn-sm" id="modify-btn">수정</button>
				<button class="btn btn-secondary btn-sm" id="delete-btn">삭제</button>
			</div>
		</div>
		
		
		<!-- ★★★★★글내용★★★★★ -->	
		<div class="post-content row">
			
			<!--★★★★★ 게시글 상태 변경 ★★★★★ -->
			<div class="post-status row">
				<form action="" method="get">
					<div class="input-group">
					
				    	<div class="input-group-prepend">
			        	  <div class="input-group-text">게시글 상태</div>
			       	 	</div>
			       	 	
			        	<select class="custom-select mr-sm-2" id="inlineFormCustomSelect">
					        <option value="1">신규등록</option>
					        <option selected value="2">입양진행중</option>
					        <option value="3">매칭진행중</option>
					        <option value="4">입양보류</option>
					        <option value="5">입양확정</option>
					        <option value="6">입양완료</option>
					    </select>
					    
			      		<button type="submit" class="btn btn-dark">변경</button>
			      </div>
				</form>
			</div>
			
			<div class="row">
				<!-- 고양이 대표사진 -->
				<div class="iconic-photo col-lg-3">
					<img src="<%=cp %>/img/cat_profile_picture.jpg" class="img-thumbnail">
				</div>
				
				<!-- 글 내용 -->
				<div class="content col-lg-7">
					<table class="missing-info table table-light">
						<tr>
							<th class="align-top th-sm th-lg">이름</th>
							<td class="align-top">냥아취</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">종류</th>
							<td class="align-top">고등어태비</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">구조지역</th>
							<td class="align-top">서울시 마포구 서교동 풍성빌딩 주차장 앞</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">구조일</th>
							<td class="align-top">2019-06-10</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">나이</th>
							<td class="align-top">아기묘(4개월)</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">성별</th>
							<td class="align-top">암컷</td>
						</tr>
						<tr>
							<th class="align-top th-sm th-lg">고양이<br>특이사항</th>
							<td class="align-top">
								<p>하얀색 수염이 길고 풍성해요~~얼굴이 통통해서 아주 귀엽게 생겼구요.. 발바닥은 검은젤리에요 ㅜㅜ</p>
							</td>
						</tr>
						<tr>
							<th class="align-top">건강상태</th>
							<td class="align-top">
								<p>매우 건강. 기생충 없음. 접종 미완료(아직 어려서 몇 주 후 접종이 가능하다고 합니다.)</p>
							</td>
						</tr>
					</table>
					
					
					<!-- 게시글 작성자 정보 -->
					<div class="writer-info">
						<div class="row writer-info-title">게시글 작성자 정보</div>
						<div class="row writer-name"><label>이름 : </label>임나래
							<a href="" onclick=""  class="send-message">
								<i class="fas fa-envelope"> 쪽지보내기 </i>
							</a>
						</div>
						<div class="row writer-tel"><label>연락처 : </label>010-2493-4848</div>
						<div class="row writer-email"><label>이메일 :</label>nare0317@gmail.com</div>
					</div>
				</div>
				
				<!-- 우측 사이드바 (입양신청)-->
				<div class="slidemenu col-lg-2 text-center">
					<div class="apply">
						<h5 class="">현재 신청자 수:<span> 5 </span>명</h5>
						<p>남은시간 : <span>13일 00:57:30</span></p>
						<button class="btn btn-success">입양 신청자 확인</button>
					</div>
				</div>
			</div>			
		</div>
		
		
		
		<!-- ★★★★★ 신고/공유/추천 버튼 ★★★★★★ -->
		<div class="post-footer row justify-content-center" id="post_footer">
			<button class="btn_report" onclick=""><span class="fa fa-ban"></span> 신고</button>
			
			<div class="post_share">
					<button class="btn_share" data-toggle="dropdown"><span class="fa fa-share-square-o"></span> 공유</button>
					<ul class="dropdown-menu share">
						<li><a href="javascript:;" onclick=""><span class="fa fa-link"></span>주소복사</a></li>
						<li><a href="" class="facebook" target="_blank"><span class="fa fa-facebook"></span>Facebook</a></li>
						<li><a href="" class="twitter" target="_blank"><span class="fa fa-twitter"></span>Twitter</a></li>
					</ul>
			</div>
			<button class="btn_like">
				<span class="fas fa-thumbs-up"></span><span class="text"> 추천<strong>5</strong></span>
			</button>
		</div>

	</section>
</div> <!-- end #content  -->



	
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
		
		<!-- 하단 버튼 (수정/목록) -->
		<div class="pull-right">
			<!-- 글 수정하기 버튼 -->
			<button type="button" class="btn btn-secondary">글 수정하기</button>
			
			<!-- 목록으로 돌아가기 버튼 -->
			<button type="button" class="btn btn-dark">목록으로</button>
		</div>
	


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
							<p>정말 많은 사람들이 고생하셨습니다..ㅜ.ㅜ 정부에서는 크게 도와주는게 없으니
								동물보호단체에서라도 꾸준히 이후에도 관리를 해주셨으면 하는 바람입니다..ㅜ.ㅜ 정말 없어져서 기쁩니다!!</p>
						</div>
					</div><!-- end comment -->

					<hr>

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
							<p>야옹이 너무이쁘네요 ㅠㅠ 어쩌다 잃어버리셨을까.. ㅠㅠ 저희동네인데 
							주위 잘 둘러보고 다녀야겠어요 ㅠㅠ </p>
						</div>
					</div><!-- end comment -->

					<hr>

				</div><!-- end comment-wrapper -->
				
			</div><!-- end comment-list area -->
		</div><!-- end comment-area -->
	</section>


	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>
	
</body>
</html>

