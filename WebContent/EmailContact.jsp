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
<title>EmailContact.jsp</title>
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
	
	.footer {
		position: absolute;
		left: 0;
		bottom: 0;
		width: 100%;
		padding: 15px 0;
		text-align: center;
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
				<h1>이메일 문의</h1>
				<span><span style="color: red;">*</span> 표시는 필수 입력 항목입니다. 반드시 입력해 주세요.</span>
			</div><br>
		    <div>
		    	<form action="">
			    	<table class="table">
					    <tr>
					      <th>답변 이메일<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 400px;"></td>
					      <td><div class="dropdown">
							  <button class="btn btn-light dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
							    직접입력
							  </button>
							  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
							    <a class="dropdown-item" href="#">naver.com</a>
							    <a class="dropdown-item" href="#">gmail.com</a>
							    <a class="dropdown-item" href="#">daum.net</a>
							  </div>
							</div></td>
					    </tr>
					    <tr>
					      <th>제목<span style="color: red;">*</span></th>
					      <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 400px;"></td>
					    </tr>
					    <tr>
					    <th>문의내용<span style="color: red;">*</span></th>
					    <td colspan="2">
					      <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" style="width:400px;"></textarea>
					     </td>
					     </tr> 
					    <tr>
					    <th>첨부파일</th>
					    <td colspan="2"><input type="text" class="form-control mx-sm-3" style="width: 400px;">
					    <span>※ png. jpg. bmp. 확장자에 한해 업로드 가능합니다.</sapn><span style="margin-left: 13%">0KB / 5MB</span></td>
					    <td><button type="button" class="btn btn-outline-secondary btn-sm">첨부하기</button></td>
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