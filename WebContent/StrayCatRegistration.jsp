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
<title>StrayCatRegistration.jsp</title>
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

	<div class="container" style="margin-top: 60px;">
		<h1>등록<span>길냥이 등록 신청</span></h1>
		<hr><br><br>
		
		
		<div class="row">
		    <div class="col-5 text-center">
			<img src="img/straycat.jpg" style="width: 200px;"><br><br>

			<label class="btn btn-primary"> 사진첨부<input type="file" class="form-control-file" id="exampleFormControlFile1" style="display: none;"></label>

			</div>
		    <div class="col-7">
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="colFormLabel" placeholder="냥아취">
			    </div>
			  </div><br>
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">지역</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="colFormLabel" placeholder="냥아취">
			    </div>
			  </div><br>
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">종류</label>
			    <div class="col-sm-10">
			      <input type="email" class="form-control" id="colFormLabel" placeholder="냥아취">
			    </div>
			  </div><br>
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
			    <div class="col-sm-10">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline1">1</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline2">2</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline3">3</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline4" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline4">4</label>
				</div>
			    </div>
			  </div><br>
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 특이사항</label>
			    <div class="col-sm-8">
			      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
			    </div>
			  </div><br>
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 건강상태</label>
			    <div class="col-sm-8">
			      <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
			    </div>
			  </div><br>
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-4 col-form-label">사진첨부</label>
			    <div class="col-sm-8">
			     1 	2	3	5
			    </div>
			  </div><br>
			<button type="button" class="btn btn-primary">등록하기</button>
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