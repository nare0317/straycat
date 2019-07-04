<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();

	Calendar cal = Calendar.getInstance();

	int nowYear = cal.get(Calendar.YEAR);
	int nowMonth = cal.get(Calendar.MONTH);
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);
	int[] lastDays = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

	if (nowYear % 4 == 0 && nowYear % 100 != 0 || nowYear % 400 == 0)
		lastDays[1] = 29;

	String sbYear = "";
	String sbMonth = "";
	String sbDay = "";

	String YearMonDay = "";

	for (int i = nowYear - 10; i < nowYear + 11; i++) {
		if (i == nowYear)
			YearMonDay += i + ".";
		sbYear += i;
	}

	for (int i = 1; i <= 12; i++) {
		if (i == nowMonth + 1)
			YearMonDay += i + ".";
		sbMonth += i;
	}

	for (int i = 1; i <= lastDays[nowMonth]; i++) {
		if (i == nowDay)
			YearMonDay += i + ".";
		sbDay += i;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>StrayCatDetailPage.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean"	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese"	rel="stylesheet">
<link rel="stylesheet" href="<%=cp%>/css/jquery-ui.css">
<link rel="stylesheet" href="css/view/straycatdetailpage.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=cp %>/js/view/straycatdetailpage.js"></script>
</head>
<body>

	<div>
		<c:import url="Menu.jsp"></c:import>


		<div class="container2">
			<div class="jumbotron">
				<div class="row">
					<div class="col-4 text-center">
						<img src="img/straycat.jpg" class="img1"><br>
						<br>
						<div class="row">
							<div class="col-6 text-right">
								<img src="img/plus-button.png" class="img2"> 999
							</div>
							<div class="col-6 text-left">
								<img src="img/user.png" class="img2"> 집사
							</div>
						</div>
					</div>
					<div class="col-4 text-left">
						<div class="row">
							<div class="col-4">
								<h2>야옹이</h2>
							</div>
							<!------------------------  대표집자 3명에게 보여지는 수정 버튼  -------------------------->
							<!-- 
							<div class="col-8">
								<button type="button" class="btn btn-primary">수정</button>
							</div> 
							-->
							<!------------------------  대표집자 3명에게 보여지는 수정 버튼  -------------------------->
						</div>
						<div>
							<h5>서울시 마포구 서교동</h5>
						</div>
						<div>
							<h4>야옹이</h4>
						</div>
						<div>
							<h4>야옹이</h4>
						</div>
						<div>
							<h4>야옹이</h4>
						</div>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<br>
						<div class="row">
							<div class="col-3">
								<span>대표집사</span>
							</div>
							<div class="col-3">
								<span>김대표집사</span>
							</div>
							<div class="col-3">
								<span>김대표집사</span>
							</div>
							<div class="col-3">
								<span>김대표집사</span>
							</div>

						</div>
						<br>
						<div class="row">
							<div>
								<img src="img/notification.png" class="img2">신고하기
							</div>
						</div>
					</div>
					<div class="col-4 cat_foot">
						<h3>야옹이 발자취</h3>
						<div id="map0" class="map0"></div>
					</div>
				</div>
			</div>
			
			<!----------------------------------------------  대표집자 3명에게 보여지는 유사한 고양이 그래프  ------------------------------------------------>
			<div class="row">
				<div class="col-2">
					<h3>유사한 고양이</h3>
				</div>
				<div class="col-10">
					<h6>해당 지역에 등록된 유사한 고양이 리스트입니다. 동일한 고양이라고 판단될 경우, 해당 고양이를 선택 후(1마리만 가능)  통합신청을 눌러주세요~! </h6>
				</div>
			</div>
			
			<div class="row">
				<div class="col-7">
				
					<div class="jumbotron" id="jumbo2">
						<div class="row">
								
						</div>
					</div>
				</div>
				<div class="col-5">
					<button type="button" class="btn btn-primary integratioApplication">통합신청</button>
				</div>
			</div>
			
			
			<!----------------------------------------------  대표집자 3명에게 보여지는 유사한 고양이 그래프  ------------------------------------------------>
			
			<div>
				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active text-center tab" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"	aria-controls="nav-home" aria-selected="true">활동</a> 
							<a class="nav-item nav-link text-center tab" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">갤러리</a>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<!-----------------------------------------------------  활동 탭  ----------------------------------------------------------->
					<div class="tab-pane fade show active" id="nav-home">
						<h4 class="write">활동작성</h4>
						<!----------------------------------------------------- 로그인 O ----------------------------------------------------->
						<div class="jumbotron select">
							<div class="row row2">
								<div class="custom-control custom-checkbox my-1 mr-sm-2">
									<input type="checkbox" class="custom-control-input" id="customCheck1"> 
										<label class="custom-control-label"	for="customCheck1">먹이</label>
								</div>
								<div class="custom-control custom-checkbox my-1 mr-sm-2">
									<input type="checkbox" class="custom-control-input"	id="customCheck2"> 
										<label class="custom-control-label"	for="customCheck2">물</label>
								</div>
								<div class="custom-control custom-checkbox my-1 mr-sm-2">
									<input type="checkbox" class="custom-control-input"	id="customCheck3"> 
										<label class="custom-control-label"	for="customCheck3">간식</label>
								</div>
								<div class="custom-control custom-checkbox my-1 mr-sm-2">
									<input type="checkbox" class="custom-control-input"	id="customCheck4"> 
										<label class="custom-control-label"	for="customCheck4">약</label>
								</div>
								<div class="custom-control custom-checkbox my-1 mr-sm-2">
									<input type="checkbox" class="custom-control-input" id="customCheck5"> 
										<label class="custom-control-label" for="customCheck5">만남</label>
								</div>
							</div>
							<br>
							<div class="row">
								<div class="col-8">
									<div class="form-group">
										<textarea class="form-control" id="exampleFormControlTextarea1" rows="14"></textarea>
									</div>
								</div>
								<div class="col-4 cat_foot">
									<div class="map_wrap">
										<div id="map" class="map"></div>
										<div class="hAddr">
											<span class="title">지도중심기준 행정동 주소정보</span> 
												<span id="centerAddr"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="text-center">
								<button type="button" class="btn btn-primary">글쓰기</button>
								<button type="button" class="btn btn-primary">취소</button>
							</div>
						</div>
						<!----------------------------------------------------- 로그인 O ----------------------------------------------------->
						
						<!----------------------------------------------------- 로그인 X ----------------------------------------------------->
						<!-- 
						<div class="jumbotron text-center">
						  <h1 class="display-4">로그인이 필요한 서비스 입니다!</h1>
						  <a class="btn btn-primary btn-lg" href="Login.jsp" role="button">로그인</a>
						</div>
						 -->
						<!----------------------------------------------------- 로그인 X ----------------------------------------------------->

						<h4 class="write">활동피드</h4>
						<div class="row">
							<div id="col form-control text-center">
								<input type="text" id="newDatepicker" name="newDatepicker" value="<%=YearMonDay%>" class="" readonly="readonly">
							</div>
						</div><br>

						<div class="scroll">
							<div class="row">
								<div class="col-2">
									<h5>이용자 닉네임</h5>
									<span>14:15</span>
									<div>서울시 마포구 서교동</div>
								</div>
								<div class="col-10">
									<div class="row">
										<img src="img/help.png"> <img src="img/water.png">
									</div>
									<div>길지 아니한 목숨을 사는가 싶이 살았으며 그들의 그림자는 천고에 사라지지 않는 것이다 이것은
										현저하게 일월과 같은 예가 되려니와 그와 같지 못하다 할지라도 창공에 반짝이는 뭇 별과 같이 산야에 피어나는
										군영과 같이 이상은</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2"></div>
								<div class="col-10">
									<div class="row">

										<c:forEach var="j" begin="0" end="1">
											<c:forEach var="i" begin="0" end="1">
												<div class="col-6">
													<img src="img/straycat.jpg" class="rounded mx-auto d-block catImg">
												</div>
											</c:forEach>
											<br>
											<br>
										</c:forEach>
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-2"></div>
								<div class="col-10">
									<form class="form-inline">
										<div class="form-group mx-sm-3 mb-2">
											<input type="text" class="form-control comment"	id="inputPassword2" placeholder="댓글달기">
										</div>
										<button type="submit" class="btn btn-primary mb-2">입력</button>
									</form>
								</div>
							</div>

						</div>
						<!-- 스크롤 end -->

					</div>
					<!-----------------------------------------------------  활동 탭  ----------------------------------------------------------->
					
					<!----------------------------------------------------- 갤러리 탭 ----------------------------------------------------------->
					<div class="tab-pane fade" id="nav-profile" role="tabpanel"	aria-labelledby="nav-profile-tab">
						<div class="row">
							<div class="col-2">
								<h4 class="write">갤러리</h4>
							</div>						
							<div class="col-8"></div>
							<div class="col-2">
								<h4 class="write">사진추가<img class="img2" src="img/plus-button.png"></h4>
							</div>
						</div>
						<div class="row">
							<c:forEach var="j" begin="0" end="2">
								<c:forEach var="i" begin="0" end="2">
									<div class="col-4">
										<img src="img/straycat.jpg" class="rounded mx-auto d-block catImg">
										<div class="row">
											<div class="col-9"></div>
											<div class="col-3">
												<img src="img/like.png"> 999
											</div>
										</div>
									</div>
								</c:forEach>
								<br>
								<br>
							</c:forEach>
						</div><br><br>
						<div class="text-center">
							<button type="button" class="btn btn-primary btn-lg">더보기</button>
						</div>						
					</div>
					<!----------------------------------------------------- 갤러리 탭 ----------------------------------------------------------->
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



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b303496379e7132604036c5f952f3623&libraries=services"></script>
<script>
	/* 첫번째 지도 (마커 출력용 지도) */
	var mapContainer0 = document.getElementById('map0'), // 지도를 표시할 div 
	mapOption0 =
	{
		center : new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level : 3
	// 지도의 확대 레벨
	};

	var map0 = new kakao.maps.Map(mapContainer0, mapOption0); // 지도를 생성합니다

	//마커가 표시될 위치입니다 
	var markerPosition0 = new kakao.maps.LatLng(33.450701, 126.570667);

	//마커를 생성합니다
	var marker0 = new kakao.maps.Marker(
	{
		position : markerPosition0
	});

	//마커가 지도 위에 표시되도록 설정합니다
	marker0.setMap(map0);

	/* 두 번째 지도 (마커 생성용 지도) */
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption =
	{
		center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		level : 1
	// 지도의 확대 레벨
	};

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	var marker = new kakao.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
	infowindow = new kakao.maps.InfoWindow(
	{
		zindex : 1
	}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

	// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	searchAddrFromCoords(map.getCenter(), displayCenterInfo);

	// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent)
	{
		searchDetailAddrFromCoords(mouseEvent.latLng, function(result,
				status)
		{
			if (status === kakao.maps.services.Status.OK)
			{
				var detailAddr = !!result[0].road_address ? '<div>도로명주소 : '
						+ result[0].road_address.address_name + '</div>'
						: '';
				detailAddr += '<div>지번 주소 : '
						+ result[0].address.address_name + '</div>';

				var content = '<div class="bAddr">'
						+ '<span class="title">법정동 주소정보</span>'
						+ detailAddr + '</div>';

				// 마커를 클릭한 위치에 표시합니다 
				marker.setPosition(mouseEvent.latLng);
				marker.setMap(map);

				// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
				infowindow.setContent(content);
				infowindow.open(map, marker);
			}
		});
	});

	// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
	kakao.maps.event.addListener(map, 'idle', function()
	{
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	});

	function searchAddrFromCoords(coords, callback)
	{
		// 좌표로 행정동 주소 정보를 요청합니다
		geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
				callback);
	}

	function searchDetailAddrFromCoords(coords, callback)
	{
		// 좌표로 법정동 상세 주소 정보를 요청합니다
		geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}

	// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다
	function displayCenterInfo(result, status)
	{
		if (status === kakao.maps.services.Status.OK)
		{
			var infoDiv = document.getElementById('centerAddr');

			for (var i = 0; i < result.length; i++)
			{
				// 행정동의 region_type 값은 'H' 이므로
				if (result[i].region_type === 'H')
				{
					infoDiv.innerHTML = result[i].address_name;
					break;
				}
			}
		}
	}
</script>
</body>
</html>