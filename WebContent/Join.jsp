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
<title>MemberUpdate.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
	.card
	{
		margin-top: 30px;
		padding: 30px;
	}
	.dt1
	{
		width: 50%;
		display: inline;
	}
	.dt2
	{
		width: 50%;
		display: inline;
	}
	th
	{
		background-color: #F6F6F6;
		width: 30%;
	}
	.mButton.gCenter 
	{ 
		position:relative; text-align:center; 
	}
	.alignRight
	{
		margin: 10px 0;
    	padding: 0 4px 0 0;
    	text-align: right;
	}
	.card
	{
		margin-top: 100px;
	}
	span
	{
		font-size: small;
	}
</style>
</head>
<body>


<div>
	<c:import url="Menu.jsp"></c:import>

	<div class="container">
		<div class="card">
		  <div class="card-body">
		    <div class="text-center">
				<h1>Join</h1>
				<span><span style="color: red;">*</span> 표시는 필수 입력 항목입니다. 반드시 입력해 주세요.</span>
			</div><br>
		    <div>
		    	<form action="">
			    	<table class="table">
					    <tr>
					      <th>아이디(이메일)<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 300px;"></td>
					      <td><button type="button" class="btn btn-outline-primary btn-sm">중복확인</button></td>
					    </tr>
					     <tr>
					      <th>비밀번호<span style="color: red;">*</span></th>
					      <td colspan="3"><input type="text" class="form-control mx-sm-3" style="width: 300px;"><span>- 영문대문자, 영문소문자, 숫자, 특수기호 중 3가지를 포함한 8자리 이상의 암호나<br>
2가지를 포함한 10자리 이상의 암호를 사용할 수 있습니다.</span></td>
					    </tr>
					     <tr>
					      <th>비밀번호 확인<span style="color: red;">*</span></th>
					      <td colspan="3"><input type="text" class="form-control mx-sm-3" style="width: 300px;"><span>(확인을 위해 한 번 더 입력하세요.)</span></td>
					    </tr>
					     <tr>
					      <th>닉네임<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 300px;"></td>
					      <td><button type="button" class="btn btn-outline-primary btn-sm">중복확인</button></td>
					    </tr>
					     <tr>
					      <th>실명확인<span style="color: red;">*</span></th>
					      <td colspan="3"><button type="button" class="btn btn-outline-primary btn-sm">실명확인</button></td>
					    </tr>
					     <tr>
					      <th>성명<span style="color: red;">*</span></th>
					      <td><input type="text" class="form-control" style="width: 200px;"></td>
					      <th style="width: 100px;">전화번호<span style="color: red;">*</span></th>
					      <td>
					      <div class="form-row">
						    <div class="col">
						      <input type="text" class="form-control" placeholder="010">
						    </div> - 
						    <div class="col">
						      <input type="text" class="form-control" placeholder="0000">
						    </div> - 
						    <div class="col">
						      <input type="text" class="form-control" placeholder="0000">
						    </div>
						  </div></td>
					    <tr>
					      <th>주소<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 400px;"></td>
					      <td><button type="button" class="btn btn-outline-primary btn-sm">검색</button></td>
					    </tr>
					    <tr>
					      <th>관심지역1<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 400px;"></td>
					      <td><button type="button" class="btn btn-outline-primary btn-sm">검색</button></td>
					    </tr>
					    <tr>
					      <th>관심지역2<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 400px;"></td>
					      <td><button type="button" class="btn btn-outline-primary btn-sm">검색</button></td>
					    </tr>
					    <tr>
					      <th>관심지역3<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 400px;"></td>
					      <td><button type="button" class="btn btn-outline-primary btn-sm">검색</button></td>
					    </tr>
					</table><br><br>
					<div class="mButton gCenter">
						<button type="submit" class="btn btn-primary">회원가입</button>
						<button type="submit" class="btn btn-secondary">취소</button>
					</div>
				</form>
		    </div>
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
<hr>
	<c:import url="Footer.jsp"></c:import>
</div>


</body>
</html>