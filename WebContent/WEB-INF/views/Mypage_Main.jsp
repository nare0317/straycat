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
<title>마이페이지</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link href="<%=cp%>/css/view/mypage_message.css" rel="stylesheet">
	<script	src="<%=cp%>/js/view/mypage_main.js"></script>
</head>
<body>


<c:import url="Menu.jsp"></c:import>
<br>
<div class="row left">
	<div class="col-2">
		<div class="row">
			<div class="col-6">
				<div class="left">
					<h3>${myInfo.NAME }</h3>
				</div>
			</div>
			<div class="col-2">..</div>
			<div class="col-2">..</div>
		</div>
		<div class="row left">
			<div>
				<h5>${myInfo.ID }님</h5>
			</div>
		</div>
		<div class="row left">
			<div>
<!-- 				<h5>
					활동점수 <span>xxx점</span>
				</h5> -->
			</div>
		</div>
		<div class="row left">
			<div>
				<h5>
					등급 <span>${myInfo.GRADE }</span>
				</h5>
			</div>
		</div>

		<div class="nav flex-column nav-pills" id="v-pills-tab"	role="tablist" aria-orientation="vertical">
			<a class="nav-link active" id="straycat-tab" data-toggle="pill"	href="#straycat" role="tab" aria-controls="straycat" aria-selected="true">길냥이관리</a> 
			<a class="nav-link"	id="memberupdate-tab" data-toggle="pill" href="#memberupdate" role="tab" aria-controls="memberupdate" aria-selected="false">회원정보관리</a>
			<a class="nav-link" id="activity-tab" data-toggle="pill" href="#activity" role="tab" aria-controls="activity" aria-selected="false">활동내역</a> 
			<!-- <a class="nav-link"	id="adoption-tab" data-toggle="pill" href="#adoption" role="tab" aria-controls="adoption" aria-selected="false">입양</a> --> 
			<a class="nav-link" id="notebox-tab" data-toggle="pill"	href="#notebox" role="tab" aria-controls="notebox" aria-selected="false">쪽지함</a>
		</div>
	</div>
	<div class="col-10">
		<div class="tab-content" id="v-pills-tabContent">

			<!-------------------------------------------------------- ① MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->
			<div class="tab-pane fade show active" id="straycat" role="tabpanel" aria-labelledby="straycat-tab">
				<c:import url="Mypage_Cat.jsp"></c:import>
			</div>
			<!-------------------------------------------------------- ① MyPage : 내가 관리하는 고양이 부분 -------------------------------------------------------->

			<!-------------------------------------------------------- ② MyPage : 회원정보 관리 부분 --------------------------------------------------------------->
			<div class="tab-pane fade" id="memberupdate" role="tabpanel" aria-labelledby="memberupdate-tab">
				<c:import url="Mypage_MemberManage.jsp"></c:import>
			</div>
			<!-------------------------------------------------------- ② MyPage : 회원정보 관리 부분 --------------------------------------------------------------->

			<!-------------------------------------------------------- ③ MyPage : 활동 내역 ------------------------------------------------------------------------>
			<div class="tab-pane fade" id="activity" role="tabpanel" aria-labelledby="activity-tab">
				<c:import url="Mypage_Activity.jsp"></c:import>
			</div>
			<!-------------------------------------------------------- ③ MyPage : 활동 내역 ------------------------------------------------------------------------>
			
			<!-------------------------------------------------------- ④ MyPage : 입양 ----------------------------------------------------------------------------->
			<%-- <div class="tab-pane fade" id="adoption" role="tabpanel" aria-labelledby="adoption-tab">
				<c:import url="Mypage_Adopt.jsp"></c:import>
			</div> --%>
			<!-------------------------------------------------------- ④ MyPage : 입양 ----------------------------------------------------------------------------->
			
			<!-------------------------------------------------------- ⑤ MyPage : 쪽지함 --------------------------------------------------------------------------->
			<div class="tab-pane fade" id="notebox" role="tabpanel" aria-labelledby="notebox-tab">
				<c:import url="Mypage_Message.jsp"></c:import>
			</div>
			<!-------------------------------------------------------- ⑤ MyPage : 쪽지함 --------------------------------------------------------------------------->
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