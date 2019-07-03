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
<title>Missing_Read.jsp(실종게시글열람)</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Font Awesome 5 -->
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">

	div
	{
		font-family: 'Nanum Gothic Coding', monospace;
		font-family: 'Quicksand', sans-serif;
	}
	
	.header
	{
		margin-bottom: 40px;
	}
	
	.container
	{
		width: 100%;
	    padding-right: 15px;
	    padding-left: 15px;
	    margin-right: auto;
	    margin-left: auto;
	}
	
	.header-title
	{
		padding-top: 1rem;
		border-color: #ddd;
		border-bottom: solid 1px #000000e0;
	}
	
	span.sub-title
	{
		font-size: medium;
		letter-spacing: 0px;
	}
	
	.breadcrumbs ul
	{
		padding-top: 10px;
		padding-left: 0px;
	}
	
	
	h2 {
		font-weight: bold;
		letter-spacing: 5px;
		margin-top:40px;
	}
	
	.post-head
	{
		padding-bottom: 10px;
	}
	.post-title
	{
		padding-bottom: 10px;
	}
	
	.iconic-photo
	{
		overflow: hidden;
        display: flex;
        align-items: center;
        justify-content: center;
        width: 300px;
        height: 300px;
	}
	
	table
	{
		border-style: none;
	}
	
	th
	{
		width: 19%;	
		font-size: 18px;
		font-weight: bold;
	}
	
	th, td
	{
		height: 50px;
	}
	
	.writer-info
	{
		margin-top: 40px;
		background-color: lightgray;
		padding-left: 10px; 
		width: 400px;
	}
	
	.writer-info th
	{
		width: 20%;
		font-size: 18px;
		font-weight: bold;
		padding-left: 13px;
	}
	
	#comment-form
	{
		margin-top: 70px;
	}
	
	#comment-form textarea
	{
		resize: none;
		border-color: #eee !important;
		background-color: #fff !important;
		padding-left: 1.07143rem !important;
    	padding-right: 1.07143rem !important;
    	overflow: auto;
	}
	
	.form-control
	{
	    
	    display: block;
	    width: 100%;
	    padding: .375rem .75rem;
	    font-size: 1rem;
	    line-height: 1.5;
	    color: #495057;
	    background-color: #fff;
	    background-clip: padding-box;
	    border: 1px solid #a9a9a9;
	    border-radius: .25rem;
	    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
	}
	
	.form-control:focus 
	{
  	   color: #555;
	}
	
	span.login-needed
	{
		display: inline;
		font-size: medium;
		 
	}
	
	.comment-list-area
	{
		padding-top: 2.14286rem !important;
    	padding-bottom: 2.14286rem !important;
    	margin-bottom: 0.71429rem !important;
	}
	
	.letter-number-notice
	{
		color: #999;
		font-size: 0.85714rem;
		font-weight: 500;
	}
	.comment-head
	{
		margin-bottom: 3rem!important;
	}
	
	.comment
	{
		margin-bottom: 2.14286rem ;
		display: -webkit-box;
	    display: -ms-flexbox;
	    display: flex;
	    -webkit-box-align: start;
	    -ms-flex-align: start;
	    align-items: flex-start;
	}
	
	.comment-date
	{
		margin-left: 0.71429rem;
		color: #999;
		font-size: 0.85714rem;
		font-weight: 500;
	}
	
	.comment-content
	{
		flex:1;
	}
	
	.comment-writer
	{
		font-weight: 600 !important;
		display: block;
	}
	
	.comment-writer-date
	{
		display: flex;
		align-items: flex-start;
	}
	
	hr
	{
		margin-top: 2rem;
		margin-bottom: 2rem;
		border-top: 1px solid rgba(0,0,0,.2);
		box-sizing: content-box;
		height: 0;
		overflow: visible;
	}
	
</style>

</head>
<body>

<div>

	<c:import url="Menu.jsp"></c:import>
		
	<!-- 헤더 + breadcrumbs -->

	<section class="container header">
		<div class="header-title">
			<h2 class="h2">실종<span class="sub-title">실종글</span></h2>
		</div>
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item">
					<a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<a class="text-dark" href="#">입양&실종</a>
					<span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item">
					<span class="breadcrumb-divider">실종</span>
				</li>
			</ul>
		</div>
	</section>
		
	<!-- 내용 -->
	<section class="container">
	
		<!-- 제목/작성자/작성일시/조회수 -->
		<div class="row post-head">
			<div class="col-lg-9">
				<h3 class="post-title">우리 냥이 좀 찾아주세요 ㅠㅠㅠㅠ</h3>
				
				<ul class="list-inline">
					<li class="list-inline-item g-mx-4">nare0317
					<li class="list-inline-item g-mx-4">|</li>
					<li id="timestamp" data-timestamp="2019-03-06 16:26:27.0" class="list-inline-item g-mx-4">2019-03-06 16:26</li>			
					<li class="list-inline-item g-mx-4">|</li>
					<li class="list-inline-item g-mx-4"><span class="icon-mouse" style="font-size: 11px;"></span> 1020</li>
				</ul>
			</div>
		</div>
		
		<!-- 글내용 -->	
		<div class="row post-content">
			
			<!-- 고양이 대표사진 -->
			<div class="iconic-photo col-xs-9 col-sm-9 col-md-5 col-lg-4">
				<img src="<%=cp %>/img/cat_profile_picture.jpg" class="img-thumbnail">
			</div>
			
			<!-- 글 내용 -->
			<div class="basic-info col-xs-9 col-sm-9 col-md-7 col-lg-8">
				<table class="missing-info">
					<tr>
						<th class="align-top th-sm th-lg">이름</th>
						<td class="align-top">냥아취</td>
					</tr>
					<tr>
						<th class="align-top th-sm th-lg">종류</th>
						<td class="align-top">고등어태비</td>
					</tr>
					<tr>
						<th class="align-top th-sm th-lg">실종지역</th>
						<td class="align-top">서울시 마포구 서교동 풍성빌딩 주차장 앞</td>
					</tr>
					<tr>
						<th class="align-top th-sm th-lg">실종일</th>
						<td class="align-top">2019-06-10</td>
					</tr>
					<tr>
						<th class="align-top th-sm th-lg">나이</th>
						<td class="align-top">1살</td>
					</tr>
					<tr>
						<th class="align-top th-sm th-lg">성별</th>
						<td class="align-top">암컷</td>
					</tr>
					<tr>
						<th class="align-top th-sm th-lg">고양이<br>특이사항</th>
						<td class="align-top">
							<p>하얀색 수염이 길고 풍성해요 ㅜㅜ 얼굴이 통통해서 아주 귀엽게 생겼구요.. 발바닥은 검은젤리에요 ㅜㅜ</p>
						</td>
					</tr>
					<tr>
						<th class="align-top">실종경위</th>
						<td class="align-top">
							<p>잠깐 한눈 판 사이에 집에서 나가버렸어요 ㅠㅠ 
							혹시 목격하셨거나 임시 보호중 이시라면 꼭! 연락 주세요 ㅠㅠ
							잠깐 한눈 판 사이에 집에서 나가버렸어요 ㅠㅠ 
							혹시 목격하셨거나 임시 보호중 이시라면 꼭! 연락 주세요 ㅠㅠ</p>
						</td>
					</tr>
				</table>
				
				<!-- 게시글 작성자 정보 -->
				<table class="writer-info">
					<tr>
						<th colspan="2">
						게시글 작성자 정보
						</th>
					</tr>
					<tr>
						<th>이름 : </th>
						<td>임나래</td>
					</tr>
					<tr>
						<th>연락처 : </th>
						<td>010-2493-4848</td>
					</tr>
					<tr>
						<th>이메일 : </th>
						<td>nare0317@gmail.com</td>
					</tr>
				</table>
				
			</div>
			
		</div>
		
		<hr id="stickyblock-end"/>

		<!-- ★★★★★댓글★★★★★★ -->
		<div class="comment-area">

			<!-- 댓글 입력  -->
			<form id="comment-form" action="/comment/json" method="post">
				<input id="boardId" name="boardId" value="11663" type="hidden"
					value="11663" />

				<h5>댓글 남기기 <span class="login-needed">- 로그인 필요</span></h5>

				<div class="form-group">
					<textarea id="text" name="text" type="text" class="form-control" rows="2"></textarea>
					<small class="letter-number-notice">1000자 이내로 입력해 주세요</small>
				</div>

				<div class="text-right">
					<button type="submit" class="btn btn-primary">댓글등록</button>
				</div>
			</form>


			<!-- 댓글 리스트  -->
			<div class="comment-list-area">
				
				<div class="comment-head">
					<h5>댓글 <span class="comment-number" 
					id="comment-number">2</span></h5>
				</div>
				
				<!-- 댓글 1 -->
				<div id="comment-wrapper">

					<div id="comment" data-id="16312" data-login="false" class="media g-mb-30">
						<div class="comment-content">
							<div class="comment-writer-date">
								<!-- <div class="d-block"> -->
									<h6 class="comment-writer">김경희
									<span class="comment-date">2019-07-03 12:39</span>
									</h6>
								<!-- </div> -->
							</div>
							<p>정말 많은 사람들이 고생하셨습니다..ㅜ.ㅜ 정부에서는 크게 도와주는게 없으니
								동물보호단체에서라도 꾸준히 이후에도 관리를 해주셨으면 하는 바람입니다..ㅜ.ㅜ 정말 없어져서 기쁩니다!!</p>
						</div>
					</div><!-- end comment -->

					<hr>

				</div><!-- end comment-wrapper -->
				
				<!-- 댓글 2 -->
				<div id="comment-wrapper">

					<div id="comment" data-id="16312" data-login="false" class="media g-mb-30">
						<div class="comment-content">
							<div class="comment-writer-date">
								<!-- <div class="d-block"> -->
									<h6 class="comment-writer">임나래 <span class="comment-date g-color-gray-dark-v5 g-font-size-12 g-font-weight-300">2019-07-02 17:29</span>
									</h6>
								<!-- </div> -->
							</div>
							<p>야옹이 너무이쁘네요 ㅠㅠ 어쩌다 잃어버리셨을까.. ㅠㅠ 저희동네인데 
							주위 잘 둘러보고 다녀야겠어요 ㅠㅠ </p>
						</div>
					</div><!-- end comment -->

					<hr>

				</div><!-- end comment-wrapper -->
				
			</div><!-- end comment-list area -->
		</div><!-- end comment-area -->

	</section>
</div>
</body>
</html>

