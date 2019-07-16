<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="card text-center update">
	<div class="card-header">
		<h3>${myInfo.NAME }</h3>
	</div>
	<div class="card-body">
		<h5 class="card-title">회원 정보 수정 / 탈퇴</h5>
		<p class="card-text">회원 정보의 수정이나 탈퇴를 원하시면 아래의 버튼을 클릭해주세요.</p>
		<!-- <a href="memberupdate" class="btn btn-primary">수정하기</a> -->
		<button type="button" class="btn btn-primary" id="update">수정/탈퇴하기</button>
		<!-- <button type="button" class="btn btn-primary" id="leave">탈퇴하기</button> -->
		<!-- <a href="UnRegistration.jsp" class="btn btn-primary">탈퇴하기</a> -->
	</div>
	
</div>