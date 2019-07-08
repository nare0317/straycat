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
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<link href="<%=cp%>/css/view/note_list.css" rel="stylesheet">
<script	src="<%=cp%>/js/view/mypage_main.js"></script>
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
						<c:import url="MypageCatManage.jsp"></c:import>
					</div>
					<!-------------------------------------------------------- ① MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->

					<!-------------------------------------------------------- ② MyPage : 회원정보 관리 부분 --------------------------------------------------------------->
					<div class="tab-pane fade" id="memberupdate" role="tabpanel" aria-labelledby="memberupdate-tab">
						<c:import url="MypageMemberManage.jsp"></c:import>
					</div>
					<!-------------------------------------------------------- ② MyPage : 회원정보 관리 부분 --------------------------------------------------------------->

					<!-------------------------------------------------------- ③ MyPage : 활동 내역 ------------------------------------------------------------------------>
					<div class="tab-pane fade" id="activity" role="tabpanel" aria-labelledby="activity-tab">
						<c:import url="MypageActivity.jsp"></c:import>
					</div>
					<!-------------------------------------------------------- ③ MyPage : 활동 내역 ------------------------------------------------------------------------>
					
					<!-------------------------------------------------------- ④ MyPage : 입양 ----------------------------------------------------------------------------->
					<div class="tab-pane fade" id="adoption" role="tabpanel" aria-labelledby="adoption-tab">
						<c:import url="MypageAdoption.jsp"></c:import>
					</div>
					<!-------------------------------------------------------- ④ MyPage : 입양 ----------------------------------------------------------------------------->
					
					<!-------------------------------------------------------- ⑤ MyPage : 쪽지함 --------------------------------------------------------------------------->
					<div class="tab-pane fade" id="notebox" role="tabpanel" aria-labelledby="notebox-tab">
						<c:import url="MypageNote.jsp"></c:import>
					</div>
					<!-------------------------------------------------------- ⑤ MyPage : 쪽지함 --------------------------------------------------------------------------->
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