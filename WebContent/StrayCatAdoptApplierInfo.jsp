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
	#row
	{
		overflow-y:scroll;
		overflow-x:hidden;
		overflow-y:auto;
		height: 350px;
		margin-top: -3%;
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
		</div>
		<hr>
		<div class="container">
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
						<!-- 게시판 헤더 시작 -->
						<div class="bbsHeader">
							<div class="header no">No</div>
							<div class="header board">게시판분류</div>
							<div class="header title">제목</div>
							<div class="header date">작성일</div>
						</div>
					</div>
	

				<!-- 게시판 게시물 리스트 시작 -->
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
			
			
			<div id="row" class="row right">
			<div class="col-6">
				<div class="tab-content" id="v-pills-tabContent">
					iv class="container2" id="container2">
		<h4>선택형 질문</h4>
		<hr>		
		<div class="row">
		    <div class="col-7">
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
			    <div class="col-sm-6">
			      <input type="text" class="form-control" id="colFormLabel" placeholder="ex)고길동">
			    </div>
			  </div>
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">사는곳</label>
			    <div class="col-sm-3" id="select0">
			    서울시
			    </div>
			    <div class="col-sm-3" id="select1">
			      <select class="custom-select">
					  <option selected>구 선택</option>
					  <option value="1">마포구</option>
					  <option value="2">영등포구</option>
					  <option value="3">서대문구</option>
					</select>
			    </div>
			    <div class="col-sm-3" id="select2">
			       <select class="custom-select">
					  <option selected>동 선택</option>
					  <option value="1">연희동</option>
					  <option value="2">연남동</option>
					  <option value="3">서교동</option>
					</select>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">성별</label>
			    <div class="col-sm-10" id="yesno2">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline1">남</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline2">여</label>
				</div>
			    </div>
			  </div>	
			  
			   <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">연령대</label>
			    <div class="col-sm-3">
			      <select class="custom-select" id="custom-select1">
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
			      <select class="custom-select" id="custom-select1">
					  <option selected>아파트</option>
					  <option value="1">아파트</option>
					  <option value="2">단독주택</option>
					  <option value="3">다가구주택</option>
					  <option value="4">공동주택</option>
					</select>
			    </div>
			  </div>
			  
			<div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">고양이<br>양육경험</label>
			    <div class="col-sm-10" style="margin-top: 20px;">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline3">있음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline4" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline4">없음</label>
				</div>
			    </div>
			 </div>					 	
			 <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">직업구분</label>
			    <div class="col-sm-10" style="margin-top: 7px;">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline5" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline5">학생</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline6" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline6">직장인</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline7" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline7">기타</label>
				</div>
			    </div>
			  </div>
			  <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">결혼여부</label>
			    <div class="col-sm-10" id="yesno2">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline8" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline8">미혼</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline9" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline9">비혼</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline10" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline10">기혼</label>
				</div>
			    </div>
			  </div>	
			   <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">가족<br>구성원 수</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline11" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline11">1명</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline12" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline12">2명</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline13" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline13">3명 이상</label>
				</div>
			    </div>
			  </div>
			   <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">가족 내<br>동의 여부</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline14" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline14">동의</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline15" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline15">일부 동의</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline16" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline16">비동의</label>
				</div>
			    </div>
			  </div>
			    <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">거주지<br>반려동물<br>가능여부</label> 
			    <div class="col-sm-10" id="yesno1">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline17" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline17">가능</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline18" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline18">불가능</label>
				</div>
			    </div>
			  </div>
			    <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">키우는(*)<br>반려동물</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline19" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline19">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline20" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline20">1마리</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline21" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline21">2마리</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline22" name="customRadioInline4" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline22">3마리 이상</label>
				</div>
			    </div>
			    <label for="colFormLabel" class="col-sm-10 col-form-label" style="color: blue;">* 키우는 반려동물 종류/나이/성별/중성화여부</label>
			    <br>
			    <div class="col-sm-7">
			      <input type="text" class="form-control" id="colFormLabel" placeholder="ex)강아지/2살/수컷/중성화했어요">
			    </div>
			  </div>	
			    <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">하루평균<br>돌봄시간</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline23" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline23">1시간 이하</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline24" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline24">1-3시간</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline25" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline25">3-5시간</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline26" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline26">5시간 이상</label>
				</div>
			    </div>
			  </div>
			    <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">알러지<br>유무</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline27" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline27">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline28" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline28">있음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline29" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline29">모름</label>
				</div>
			    </div>
			  </div>				
			  <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">입양동물<br>파양경험</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline30" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline30">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline31" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline31">있음</label>
				</div>
			    </div>
			  </div>		
			  <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">반려동물<br>입양경험</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline32" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline32">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline33" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline33">있음</label>
				</div>
				</div>
			    </div>
			  </div>
		</div>
		<br><br><br><br>
		<div class="container3">
		<h4>서술형 질문<span><button class="btn btn-primary btn" id="questionbtn" type="submit">질문수정하기</button></span></h4>
		<hr>		
		<div><span class="input-group-text">1. 입양을 원하는 가장 큰 이유는 무엇인가요?</span></div>
		<div class="input-group">		
		  <div class="input-group-prepend">
		  </div>
		  <textarea class="form-control" id="textarea" aria-label="With textarea" placeholder="내용을 입력해주세요.">냥이 사연이 너무 안타깝네요.. 
제가 평소에 고양이를 키우려고 알아보고 있었는데, 
돈을 주고 사는 것보다는 입양을 통해서 불쌍한 아이들을 도와주고 싶은 마음에 신청하게 되었습니다. </textarea>
		</div>
		<br>
		<div><span class="input-group-text">2. 입양을 결정하기까지 얼마나 오랜 시간 고민하셨나요?</span></div>
		<div class="input-group">		
		  <div class="input-group-prepend">
		  </div>
		  <textarea class="form-control" id="textarea" aria-label="With textarea" placeholder="내용을 입력해주세요."></textarea>
		</div>
		<br>
		<div><span class="input-group-text text-left">3. 현재 다른 반려동물을 양육 중인 경우, 합사는 적어도  2주 정도 시간을 갖고 천천히 진행해야 합니다.
		<br>&nbsp;&nbsp;&nbsp;합사가 필요한 경우 간단한 합사 계획에 대해서 알려주세요. (ex. 2주 간 격리 후 천천히 대면 예정)</span></div>
		<div class="input-group">		
		  <div class="input-group-prepend">
		  </div>
		  <textarea class="form-control" id="textarea" aria-label="With textarea" placeholder="내용을 입력해주세요."></textarea>
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