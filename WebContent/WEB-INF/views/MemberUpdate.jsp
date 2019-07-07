<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>회원정보수정</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/member_update.css">
	<script type="text/javascript" src="<%=cp %>/js/view/member_update.js"></script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="container">
	<div class="card">
		<div class="card-body">
			<h1>회원정보 수정</h1>
	    	<form id="changeForm" action="">
				<table class="table">
					<tr>
						<th>아이디</th>
						<td>jyb7488</td>
					</tr>
					<tr>
						<th>이메일</th>
						<td id="emailContent">jyb7488@naver.com <button id="emailModifyBtn" type="button" class="btn btn-outline-primary btn-sm">이메일 변경</button></td>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<h4>진윤비</h4>
						</td>
					</tr>
					<tr>
						<th>휴대폰 번호</th>
						<td>010-3018-7488</td>
					</tr>
					<tr>
						<th>비밀번호 변경</th>
						<td>
							<small>비밀번호는 6~15자 이내로 영문 대소문자, 숫자, 특수 문자를 조합하여 작성하면 됩니다.</small>
							<div class="input-group" style="width: 50%;">
								<div class="input-group-prepend">
									<span class="input-group-text">현재 비밀번호</span>
								</div>
								<input id="oldPwd" type="password" class="form-control">
							</div><br>
							<div class="input-group" style="width: 50%;">
								<div class="input-group-prepend">
									<span class="input-group-text">신규 비밀번호</span>
								</div>
								<input id="newPwd" type="password" class="form-control">
							</div><br>
							<div class="input-group" style="width: 50%;">
								<div class="input-group-prepend">
									<span class="input-group-text">비밀번호 다시 입력</span>
								</div>
								<input id="newPwdConfirm" type="password" class="form-control">
							</div>
							<br>
							<div class="err"></div>
							<br>
							<button id="changePwdBtn" type="button" class="btn btn-outline-primary btn-sm">비밀번호 변경</button>
						</td>
					</tr>
				</table>
				<div class="alignRight">탈퇴를 원하시면 우측의 회원탈퇴 버튼을 눌러주세요. <button type="button" class="btn btn-secondary btn-sm">회원탈퇴</button></div><br><br>
				<div class="mButton gCenter">
					<button type="submit" class="btn btn-secondary">변경하기</button>
				</div>
			</form>
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