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
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese"
	rel="stylesheet">
<link href="<%=cp%>/css/view/note_list.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<!-- ionicons 기타 아이콘  -->
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>


<style type="text/css">
div {
	font-family: 'Nanum Gothic Coding', monospace;
	font-family: 'Quicksand', sans-serif;
}

th {
	padding: 0 4px 0 0;
	background-color: #F6F6F6;
	width: 10ppx;
}

td {
	position: relative;
	text-align: left;
}

span {
	margin-left: 10px;
	font-weight: bold;
	font-size: large;
}

.bbsHeader
{
	border-top: 3px solid black;
	border-bottom: 1px solid black;
}

.header
{
	font-weight: bold;
}

.no, .title, .writer, .writer, .date, .viewCount, .recomm
{
	display: inline-block;
	height: 35px;
	line-height: 35px;
	text-align: center;
}

.no
{
	width: 8px;
}

.title
{
	width: 50px;
}

.content
{
	overflow: hidden;
}

.contentTitle
{
	display: inline-block;
	padding-left: 10px;
	text-align: left;
	max-width: 50px;
	text-overflow: ellipsis;
	overflow: hidden;
	/* white-space: nowrap; */
}

.titleLeft
{
	text-align: left;
}

.bbsContents
{
	border-bottom: 1px solid black;
	line-height: 35px;
	height: 35px;
}

#completebtn {
	margin-left: 1%;
}

div.Table {
	border: 1px solid #E5E5E5;
	background-color: #FFFFFF;
	width: 100%;
	height: 500px;
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
/* .divTable.Table .divTableHeading {
  background: #FFFFFF;
  background: -moz-linear-gradient(top, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
  background: -webkit-linear-gradient(top, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
  background: linear-gradient(to bottom, #ffffff 0%, #ffffff 66%, #FFFFFF 100%);
  border-bottom: 1px solid #CECECE;
} */
.divTable.Table .divTableHeading .divTableHead {
	font-size: 23px;
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

.Table .tableFootStyle .links a {
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

#head {
	width: 50%;
}

#title {
	margin-top: 5%;
}

.divTable {
	display: table;
}

.divTableRow {
	display: table-row;
}

.divTableHeading {
	display: table-header-group;
}

.divTableCell, .divTableHead {
	display: table-cell;
	height: 60px;
}

.divTableHeading {
	display: table-header-group;
}

.divTableFoot {
	display: table-footer-group;
}

.divTableBody {
	display: table-row-group;
}

#scroll
{
	overflow:scroll; width: 100%; height: 100%; padding:10px;
}
</style>

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp%>/favicon.ico">
<link rel="icon" href="<%=cp%>/favicon.ico">

</head>
<body>
	<div>
		<c:import url="Menu.jsp"></c:import>

		<div class="container">
			<h1>
				입양 <span>매칭프로세스(후보자 검증) | 후보자 상세 페이지 </span>
			</h1>
			<hr>

			<div class="form">
				<div>
					<h5>
						ID : nare0317 <br>이름 : 임나래 <br>
					</h5>
					<a href="#"><ion-icon name="send" size="small"></ion-icon></a>
					<span>쪽지 보내기</span><br> <a href="#"><ion-icon name="pin" size="small"></ion-icon></a>
					<span>서울시 마포구 서교동</span>
				</div>
				<hr>
			</div>

			<br>

			<div class="divTable Table">
				<div class="divTableHeading">
					<div class="divTableRow">
						<div class="divTableHead" id="head">
							<h2 id="title">활동내역</h2>
						</div>
						<div class="divTableHead" id="head">
							<h2 id="title">신청내역</h2>
						</div>
					</div>
				</div>
				<div class="divTableBody">
					<div class="divTableRow">
						<div class="divTableCell">
							<span>nare0317 님이 쓴 게시글</span> <br>
							<br>
							<!-- 게시판 헤더 시작 -->
							<div class="bbsHeader">
								<div class="header no">No</div>
								<div class="header board">게시판</div>
								<div class="header title">제목</div>
								<div class="header date">작성일</div>
							</div>

							<!-- 게시판 게시물 리스트 시작 -->
							<div class="bbsContents">
								<div class="content no">3</div>
								<div class="content board">자유게시판</div>
							</div>
							<div class="content title titleLeft">
								<div class="contentTitle">
									<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 </a>
								</div>
								<div class="content date">2019-07-04</div>
							</div>
							<div class="bbsContents">
								<div class="content no">2</div>
								<div class="content title titleLeft">
									<div class="contentTitle">
										<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게
											리듬을 타는 비트위의 나그네 아싸 가오리</a>
									</div>
									<div class="commentCount">
										<i class='far fa-comment'>0</i>
									</div>
								</div>
								<div class="content writer">아웃사이더</div>
								<div class="content date">2019-07-04</div>
								<div class="content viewCount">10</div>
								<div class="content recomm">5</div>
							</div>
							<div class="bbsContents">
								<div class="content no">1</div>
								<div class="content title titleLeft">
									<div class="contentTitle">
										<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게
											리듬을 타는 비트위의 나그네 아싸 가오리</a>
									</div>
									<div class="commentCount">
										<i class='far fa-comment'>0</i>
									</div>
								</div>
								<div class="content writer">아웃사이더</div>
								<div class="content date">2019-07-04</div>
					
							</div>
							<span>nare0317 님이 쓴 댓글</span>
							<!-- 게시판 헤더 시작 -->
							<div class="bbsHeader">
								<div class="header no">No</div>
								<div class="header title">제목</div>
								<div class="header board">게시판</div>
								<div class="header date">작성일</div>
			
							</div>

							<!-- 게시판 게시물 리스트 시작 -->
							<div class="bbsContents">
								<div class="content no">10</div>
								<div class="content title titleLeft">
									<div class="contentTitle">
										<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 </a>
									</div>
									<div class="commentCount">
										<i class='far fa-comment'>0</i>
									</div>
								</div>
								<div class="content board">자유게시판</div>
								<div class="content date">2019-07-04</div>
							
							</div>
							<div class="bbsContents">
								<div class="content no">9</div>
								<div class="content title titleLeft">
									<div class="contentTitle">
										<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게
											리듬을 타는 비트위의 나그네 아싸 가오리</a>
									</div>
									<div class="commentCount">
										<i class='far fa-comment'>0</i>
									</div>
								</div>
								<div class="content writer">아웃사이더</div>
								<div class="content date">2019-07-04</div>
							
							</div>
							<div class="bbsContents">
								<div class="content no">8</div>
								<div class="content title titleLeft">
									<div class="contentTitle">
										<a class="contentLink" href="#">누구보다 빠르게 난 남들과는 다르게 색 다르게
											리듬을 타는 비트위의 나그네 아싸 가오리</a>
									</div>
									<div class="commentCount">
										<i class='far fa-comment'>0</i>
									</div>
								</div>
								<div class="content writer">아웃사이더</div>
								<div class="content date">2019-07-04</div>
						
							</div>
						</div>

						<div class="divTableCell">
							<div class="col">
								<div class="form-group row required">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>이름</label>
									<div class="col-sm-3">
										<input type="text" class="form-control" id="colFormLabel"
											placeholder="ex)고길동">
									</div>
								</div>

								<div class="form-group row required">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>지역</label>
									<div class="col-sm-2" id="select0">서울시</div>
									<div class="col-sm-2">
										<select class="custom-select" id="doSelect">
											<option selected>구 선택</option>
											<option value="1">마포구</option>
											<option value="2">영등포구</option>
											<option value="3">서대문구</option>
										</select>
									</div>
									<div class="col-sm-2" id="select1">
										<select class="custom-select" id="doSelect">
											<option selected>동 선택</option>
											<option value="1">연희동</option>
											<option value="2">연남동</option>
											<option value="3">서교동</option>
										</select>
									</div>
								</div>

								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>성별</label>
									<div class="col-sm-10" id="yesno">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline1"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline1">남</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline2"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline2">여</label>
										</div>
									</div>
								</div>

								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>연령대</label>
									<div class="col-sm-3">
										<select class="custom-select" id="custom-select">
											<option selected>10대</option>
											<option value="1">10대</option>
											<option value="2">20대</option>
											<option value="2">30대</option>
											<option value="2">40대</option>
											<option value="2">50대 이상</option>
										</select>
									</div>
								</div>

								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">주거형태</label>
									<div class="col-sm-6">
										<select class="custom-select" id="custom-select">
											<option selected>아파트</option>
											<option value="1">아파트</option>
											<option value="2">단독주택</option>
											<option value="3">다가구주택</option>
											<option value="4">공동주택</option>
										</select>
									</div>
								</div>

								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>고양이<br>양육경험</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline3"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline3">있음</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline4"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline4">없음</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>직업구분</label>
									<div class="col-sm-10" id="yesno">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline5"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline5">학생</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline6"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline6">직장인</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline7"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline7">기타</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>결혼여부</label>
									<div class="col-sm-10" id="yesno">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline8"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline8">미혼</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline9"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline9">비혼</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline10"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline10">기혼</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label"><span
										id="notice">*</span>가족<br>구성원 수</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline11"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline11">1명</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline12"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline12">2명</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline13"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline13">3명
												이상</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">가족
										내<br>동의 여부
									</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline14"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline14">동의</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline15"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline15">일부
												동의</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline16"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline16">비동의</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">거주지<br>반려동물<br>가능여부
									</label>
									<div class="col-sm-10" id="yesno2">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline17"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline17">가능</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline18"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline18">불가능</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">키우는(*)<br>반려동물
									</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline19"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline19">없음</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline20"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline20">1마리</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline21"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline21">2마리</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline22"
												name="customRadioInline4" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline22">3마리
												이상</label>
										</div>
									</div>
									<label for="colFormLabel" class="col-sm-10 col-form-label"
										style="color: blue;">*키우는 반려동물 종류/나이/성별/중성화여부</label> <br>
									<div class="col-sm-7">
										<input type="text" class="form-control" id="colFormLabel"
											placeholder="ex)강아지/2살/수컷/중성화했어요">
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">하루평균<br>돌봄시간
									</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline23"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline23">1시간
												이하</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline24"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline24">1-3시간</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline25"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline25">3-5시간</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline26"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline26">5시간
												이상</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">알러지<br>유무
									</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline27"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline27">없음</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline28"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline28">있음</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline29"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline29">모름</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">입양동물<br>파양경험
									</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline30"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline30">없음</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline31"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline31">있음</label>
										</div>
									</div>
								</div>
								<div class="form-group row">
									<label for="colFormLabel" class="col-sm-2 col-form-label">반려동물<br>입양경험
									</label>
									<div class="col-sm-10" id="yesno1">
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline32"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline32">없음</label>
										</div>
										<div class="custom-control custom-radio custom-control-inline">
											<input type="radio" id="customRadioInline33"
												name="customRadioInline1" class="custom-control-input">
											<label class="custom-control-label" for="customRadioInline33">있음</label>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>



		<br />
		<div class="col text-center">
			<button class="btn btn-primary btn-lg" type="submit">후보자선택</button>
			<a class="btn btn-secondary btn-lg" href="#" role="button"
				id="completebtn">돌아가기</a>
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