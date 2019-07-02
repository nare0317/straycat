<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
</style>
</head>
<body>
	<div>
		<c:import url="Menu.jsp"></c:import>

		<div class="container" style="margin-top: 60px;">
			<div>
				<h1>받은 쪽지함</h1><br>
				<table class="table table-bordered">
					<thead>
						<tr class="table-active">
							<th scope="col">
								<div class="form-check">
									<input class="form-check-input position-static" type="checkbox"
										id="blankCheckbox" value="option1">
								</div>
							</th>
							<th scope="col">No.</th>
							<th scope="col">제목</th>
							<th scope="col">보낸 날짜</th>
							<th scope="col">받은 사람</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">
								<div class="form-check">
									<input class="form-check-input position-static" type="checkbox"
										id="blankCheckbox" value="option1">
								</div>
							</th>
							<td>1</td>
							<td>가져와봐라</td>
							<td>2019-06-27 7:56</td>
							<td>열혈집사</td>
						</tr>
					</tbody>
				</table>
				<p align="right">
				  	<button type="button" class="btn btn-primary">쪽지 쓰기</button>
				 	<button type="button" class="btn btn-primary">취소</button>
				</p>
			</div>

			<div>
				<h1>보낸 쪽지함</h1><br>
				<table class="table table-bordered">
					<thead>
						<tr class="table-active">
							<th scope="col">
								<div class="form-check">
									<input class="form-check-input position-static" type="checkbox"
										id="blankCheckbox" value="option1">
								</div>
							</th>
							<th scope="col">No.</th>
							<th scope="col">제목</th>
							<th scope="col">보낸 날짜</th>
							<th scope="col">받은 사람</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">
								<div class="form-check">
									<input class="form-check-input position-static" type="checkbox"
										id="blankCheckbox" value="option1">
								</div>
							</th>
							<td>1</td>
							<td>가져와봐라</td>
							<td>2019-06-27 7:56</td>
							<td>열혈집사</td>
						</tr>
					</tbody>
				</table>
				<p align="right">
				  	<button type="button" class="btn btn-primary">쪽지 쓰기</button>
				 	<button type="button" class="btn btn-primary">취소</button>
				</p>
			</div>
			</div>
		</div>



	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
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