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
		<hr>
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