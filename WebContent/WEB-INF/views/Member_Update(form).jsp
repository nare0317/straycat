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
	<title>회원정보 수정</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/member_update.css">
</head>
<body>


<c:import url="Menu.jsp"></c:import>

<div class="container">
	<div class="card">
	  <div class="card-body">
	    <h1>회원정보 수정</h1>
	    <div>
	    	<form action="">
		    	<table class="table">
				    <tr>
				      <th>아이디(이메일)</th>
				      <td>jyb7488@naver.com <button type="button" class="btn btn-outline-primary btn-sm">이메일 변경</button></td>
				    </tr>
				    <tr>
				      <th>이름</th>
				      <td>
				      	<div><h4>진윤비 <small class="small">본인확인이 필요합니다.</small></h4></div>
				      	<div><small class="small">본인 미인증 고객의 경우, 입력하신 정보가 기존 회원정보와 상이할 시 입력하신 정보로 회원정보가 자동 변경됩니다.</small></div>
				      	<div><input type="radio" checked="checked"><label>본인명의 휴대폰으로 인증</label></div>
				      	<div class="alert alert-secondary" role="alert">
						  <small class="small">회원님의 명의로 등록된 휴대폰으로 본인인증을 진행합니다.</small>
						  <button type="button" class="btn btn-primary btn-sm">본인명의 휴대폰으로 인증</button>
						</div>
				      </td>
				    </tr>
				    <tr>
				      <th>휴대폰 번호</th>
				      <td>01030187488 <button type="button" class="btn btn-outline-primary btn-sm">휴대폰 번호 변경</button></td>
				    </tr>
				    <tr>
				      <th>비밀번호 변경</th>
				      <td><small class="small">비밀번호는 6~15자 이내로 영문 (대문자,소문자), 숫자, 특수 문자 3가지 조합중 2가지 이상을 조합하셔서 작성하시면 됩니다.
		단, 3가지 모두를 조합하실 경우 더욱 강력한 패스워드 구현이 가능합니다.</small>
								<div class="input-group w50">
								<div class="input-group-prepend">
									<span class="input-group-text">현재 비밀번호</span>
								</div>
									<input type="text" class="form-control">
							</div><br>
							<div class="input-group w50">
								<div class="input-group-prepend">
									<span class="input-group-text">신규 비밀번호</span>
								</div>
									<input type="text" class="form-control">
							</div><br>
							<div class="input-group w50">
								<div class="input-group-prepend">
									<span class="input-group-text">비밀번호 다시 입력</span>
								</div>
									<input type="text" class="form-control">
							</div><br>
							<button type="button" class="btn btn-outline-primary btn-sm">비밀번호 변경</button>
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