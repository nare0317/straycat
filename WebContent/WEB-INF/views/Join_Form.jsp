<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>회원가입</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/join_form.css">
	<script type="text/javascript" src="<%=cp %>/js/view/join_form.js"></script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="container">
	<div class="breadcrumbs">
		<ul>
			<li class="list-inline-item"><a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a></li>
			<li class="list-inline-item">></li>
			<li class="list-inline-item">회원가입</li>
		</ul>
	</div>

	<div class="card">
		<div class="card-body">
			<div class="text-center">
				<h1>회원가입</h1>
				<span class="caution"><span class="required">*</span> 표시는 필수 입력 항목입니다. 반드시 입력해 주세요.</span>
			</div><br>
			<div>
				<form id="joinForm" action="" method="post">
					<table class="table">
						<tr>
							<th>아이디<span class="required">*</span></th>
							<td colspan="2">
								<input id="idInput" type="text" class="form-control inputbox">
								<button id="idCheck" type="button" class="btn btn-outline-primary btn-sm">중복확인</button>
							</td>
						</tr>
						<tr>
							<th>비밀번호<span class="required">*</span></th>
							<td class="inputbox" colspan="2">
								<input type="password" id="pwd" class="form-control" class="w300"><br>
								<span class="caution">영문대문자, 영문소문자, 숫자, 특수기호 중 3가지를 포함한 8자리 이상의 암호나</span><br>
								<span class="caution">2가지를 포함한 10자리 이상의 암호를 사용할 수 있습니다.</span>
							</td>
						</tr>
						<tr>
							<th>비밀번호 확인<span class="required">*</span></th>
							<td class="inputbox" colspan="2">
								<input type="password" id="pwdConfirm" class="form-control" class="w300"><br>
								<span class="caution">확인을 위해 한 번 더 입력하세요.</span>
							</td>
						</tr>
						<tr>
							<th>닉네임<span class="required">*</span></th>
							<td colspan="2">
								<input id="nickname" type="text" class="form-control inputbox">
								<button type="button" class="btn btn-outline-primary btn-sm">중복확인</button>
							</td>
						</tr>
						<tr>
							<th>이메일<span class="required">*</span></th>
							<td colspan="2">
								<input id="email" type="text" class="form-control inputbox">
								<button type="button" class="btn btn-outline-primary btn-sm">중복확인</button>
							</td>
						</tr>
						<tr>
							<th rowspan="4">실명확인<span class="required">*</span></th>
						</tr>
						<tr>
							<td colspan="4"><button type="button" class="btn btn-outline-primary btn-sm">실명확인</button></td>
						</tr>
						<tr>
							<th>성명<span class="required">*</span></th>
							<td colspan="2">
								<input type="text" id="name" class="form-control" readonly="readonly">
							</td>
						</tr>
						<tr>
							<th>전화번호<span class="required">*</span></th>
							<td colspan="2">
								<div class="form-row">
									<div class="col">
										<input id="tel1" type="text" class="form-control" readonly="readonly">
									</div> - 
									<div class="col">
										<input id="tel2" type="text" class="form-control" readonly="readonly">
									</div> - 
									<div class="col">
										<input id="tel3" type="text" class="form-control" readonly="readonly">
									</div>
								</div>
							</td>
						<tr>
							<th>주소<span class="required">*</span></th>
							<td colspan="3">
								<input id="address" type="text" class="form-control inputbox local">
								<button type="button" class="btn btn-outline-primary btn-sm">검색</button>
							</td>
						</tr>
					</table><br>
					<div class="errDiv">
						<span class="err"></span>
					</div>
					<br>
					<div class="mButton gCenter">
						<button id="joinBtn" type="button" class="btn btn-primary">회원가입</button>
						<button id="cancelBtn" type="button" class="btn btn-secondary" onclick="location.href='main'">취소</button>
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