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
<title>StrayCatAdoptApplierInfo.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<link href="<%=cp%>/css/view/note_list.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- ionicons 기타 아이콘  -->
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>


<style type="text/css">
	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
	th
	{
		padding: 0 4px 0 0;
		background-color: #F6F6F6;
		width: 10ppx;
	}
	td
	{
		position: relative;
		text-align: left;
	}
	span
	{
		margin-left: 10px;
		font-size: large;
	}
	p
	{
		text-align: justify;
		margin-left: 1%;
	}
	.container
	{
		margin-top: 5%;
	}
	.row
	{
		margin-top: -3%;
	}
	.col
	{
		font-weight: bold;
		text-align: center;
	}	
	#profile
	{
		margin-left: 1%;
	}
	.v1
	{
		border-left: 3px solid #e9e9e9;
		height: 500px;
		position: absolute;
		left: 50%;
		margin-top: 19.8%;
		top: 0;
	}
div.Table {
  border: 1px solid #E5E5E5;
  background-color: #FFFFFF;
  width: 100%;
  height: 200px;
  text-align: left;
  border-collapse: collapse;
}
.divTable.Table .divTableCell, .divTable.Table .divTableHead {
  border: 1px solid #E5E5E5;
  padding: 7px 10px;
}
.divTable.Table .divTableBody .divTableCell {
  font-size: 17px;
}
.divTable.Table .divTableRow:nth-child(even) {
  background: #E5E5E5;
}
.divTable.Table .divTableHeading {
  background: #FFFFFF;
  background: -moz-linear-gradient(top, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
  background: -webkit-linear-gradient(top, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
  background: linear-gradient(to bottom, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
  border-bottom: 1px solid #CECECE;
}
.divTable.Table .divTableHeading .divTableHead {
  font-size: 23px;
  font-weight: bold;
  color: #000000;
  text-align: center;
  border-left: 1px solid #E5E5E5;
}
.divTable.Table .divTableHeading .divTableHead:first-child {
  border-left: none;
}

.Table .tableFootStyle {
  font-size: 14px;
}
.Table .tableFootStyle .links {
	 text-align: right;
}
.Table .tableFootStyle .links a{
  display: inline-block;
  background: #1C6EA4;
  color: #FFFFFF;
  padding: 2px 8px;
  border-radius: 5px;
}
.Table.outerTableFooter {
  border-top: none;
}
.Table.outerTableFooter .tableFootStyle {
  padding: 3px 5px; 
}
/* DivTable.com */
.divTable{ display: table; }
.divTableRow { display: table-row; }
.divTableHeading { display: table-header-group;}
.divTableCell, .divTableHead { display: table-cell;}
.divTableHeading { display: table-header-group;}
.divTableFoot { display: table-footer-group;}
.divTableBody { display: table-row-group;}



</style>	

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>
	<div>
		<c:import url="Menu.jsp"></c:import>
		
		<div class="container">
		<h1>입양 <span>매칭프로세스(후보자 검증) | 후보자 상세 페이지 </span></h1>
		<hr>
		
		<div class="form">
		<div>
			<h5>ID : nare0317 <br>이름 : 임나래 <br></h5>
		     <a href="#"><ion-icon name="send" size="small"></ion-icon></a><span> 쪽지 보내기</span><br>
		     <a href="#"><ion-icon name="pin" size="small"></ion-icon></a><span> 서울시 마포구 서교동</span>
		</div>
		<hr>
		</div>
		
<br>

<div class="divTable Table">
<div class="divTableHeading">
<div class="divTableRow">
<div class="divTableHead">활동내역</div>
<div class="divTableHead">입양신청서</div>
</div>
</div>
<div class="divTableBody">
<div class="divTableRow">
<div class="divTableCell">cell1_1</div><div class="divTableCell">cell2_1</div></div>
</div>


				<!-- <div class="container">
		  <div class="row">
		  <hr>
		    <div class="col"><h3>활동내역</h3></div>
		    <div class="col"><h3>입양신청서</h3></div>
		    <hr>
		  <hr>
		    <div class="w-100"></div>
		  </div>
		    <div class="v1"></div>
		  <hr>
		</div>
		<h4>선택형 질문</h4>

		<div class="row left">
			<div class="col-6">
				<div class="form-group">
					<div class="nav flex-column nav-pills" id="v-pills-tab"	role="tablist" aria-orientation="vertical">
						게시판 헤더 시작
						<div class="bbsHeader">
							<div class="header no">No</div>
							<div class="header board">게시판분류</div>
							<div class="header title">제목</div>
							<div class="header date">작성일</div>
						</div>
					</div>
	

				게시판 게시물 리스트 시작
				<div class="bbsContents">
					<div class="content no">3</div>
					<div class="content board">게시판분류</div>
					<div class="content title titleLeft">
						<div class="contentTitle">
							<a class="contentLink" href="#">와 세 번째 글이다.</a>
						</div>
					</div>
					<div class="content date">2019-03-01 10:00:00</div>
				</div>
				<div class="bbsContents">
					<div class="content no">2</div>
					<div class="content board">게시판분류</div>
					<div class="content title titleLeft">
						<div class="contentTitle">
							<a class="contentLink" href="#">와 두 번째 글이다.</a>
						</div>
					</div>
					<div class="content date">2019-03-01 10:00:00</div>
				</div>
				<div class="bbsContents">
					<div class="content no">1</div>
					<div class="content board">게시판분류</div>
					<div class="content title titleLeft">
						<div class="contentTitle">
							<a class="contentLink" href="#">와 첫 번째 글이다.</a>
						</div>
					</div>
					<div class="content date">2019-03-01 10:00:00</div>
				</div>
			</div>
		</div>
	</div>
			
			
		</div>
		<br><br>
		<div class="col text-center">
		   <button class="btn btn-light btn-md" type="submit">임시저장</button>
		   <a class="btn btn-primary btn-md" href="#" role="button" id="completebtn">작성완료</a>
		</div>
	  </div>
				
				</div>
			</div>
			-->
			    </div>
			</div>
		</div>


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