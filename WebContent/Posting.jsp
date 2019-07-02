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
<title>Posting.jsp</title>
<link rel="stylesheet" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
</head>
<body>
<form action="List.jsp">
<div class="container form-group">

	<div>
		<h1>새 게시물 작성</h1>
	</div>
	
	<div> 
		<h3>작성자 아이디</h3>
	</div>

	<div class="form-group col-sm-10">
			<label class="col-sm-2 control-label ">제목</label>
			<div class="col-sm-10">
			<input type="text" name="subject" class="form-control col-sm-2 active" placeholder="제목을 입력해 주세요." required="required">
			</div>
			<label class="col-sm-2 control-label">태그</label>
			<div class="col-sm-10">
			<input type="text" name="tag" class="form-control col-sm-2 active" placeholder="태그를 입력해주세요." required="required">
			</div>
			<!-- <label class="btn btn-default btn-file"> 업로드 <input type="file" style="display: none;"></label> -->
			<label class="col-sm-3 control-label">파일 업로드</label>
			<div class="col-sm-9">
			<input type="file" class="form-control">
			</div>
			<label class="control-label col-sm-2">내용</label>
			<div class="col-sm-10">
			<textarea rows="20px;" cols="50px;" class="form-control"></textarea>
			</div>
			<label class="btn btn-default btn-file"> 업로드 <input type="file" style="display: none;"></label>
			
	</div>
		
	<div class="form-group col-sm-10">
		<button class="btn btn-default" type="submit">작성 완료</button>
		<button class="btn btn-default">작성 취소</button>
	</div>
</div>
</form>
</body>
</html>