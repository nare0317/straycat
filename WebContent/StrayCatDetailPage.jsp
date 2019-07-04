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
<title>StrayCatDetailPage.jsp</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
div {
	font-family: 'Nanum Gothic Coding', monospace;
	font-family: 'Quicksand', sans-serif;
}

.container2 {
	margin-left: 150px;
	margin-right: 150px;
	margin-top: 60px;
}

.map_wrap {
	position: relative;
	width: 350px;
	height: 350px;
}

.title {
	font-weight: bold;
	display: block;
}

.hAddr {
	position: absolute;
	left: 10px;
	top: 10px;
	border-radius: 2px;
	background: #fff;
	background: rgba(255, 255, 255, 0.8);
	z-index: 1;
	padding: 5px;
}

#centerAddr {
	display: block;
	margin-top: 2px;
	font-weight: normal;
}

.bAddr {
	padding: 5px;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
.jumbotron
{
	background-color: #F8F9FA;
}
</style>

<!-- 파비콘 -->
<link rel="shortcut icon" href="<%=cp %>/favicon.ico">
<link rel="icon" href="<%=cp %>/favicon.ico">

</head>
<body>

	<div>
		<c:import url="Menu.jsp"></c:import>


		<div class="container2" style="margin-top: 60px;">
			<div class="jumbotron" style="padding: 40px;">
				<div class="row">
					<div class="col-4 text-center">
						<img src="img/straycat.jpg" style="width: 400px;"><br>
						<br>
						<div class="row">
							<div class="col-6 text-right"><img src="img/plus-button.png" style="width:30px;"> 999</div>
							<div class="col-6 text-left"><img src="img/user.png" style="width:30px;"> 집사</div>
						</div>
					</div>
					<div class="col-4 text-left">
						<div>
							<h2>야옹이</h2>
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
						</div><br><br><br><br><br><br><br><br>
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
						
						</div><br>
						<div class="row">
							<div><img src="img/notification.png" style="width:30px;">신고하기</div>														
						</div>
					</div>
					<div class="col-4" style="padding-left: 90px;">
						<h3>야옹이 발자취</h3>
						<div id="map0" style="width:350px;height:350px;"></div>


					</div>

				</div>
			</div>
			<div>
				<nav>
					<div class="nav nav-tabs" id="nav-tab" role="tablist">
						<a class="nav-item nav-link active text-center" id="nav-home-tab"
							data-toggle="tab" href="#nav-home" role="tab"
							aria-controls="nav-home" aria-selected="true"
							style="width: 50%; font-size: 20pt;">활동</a> <a
							class="nav-item nav-link text-center" id="nav-profile-tab"
							data-toggle="tab" href="#nav-profile" role="tab"
							aria-controls="nav-profile" aria-selected="false"
							style="width: 50%; font-size: 20pt;">갤러리</a>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
						<h4 style="margin: 20px;">활동작성</h4>
						<div class="jumbotron" style="padding: 30px 30px;">
						<div class="row" style="padding-left: 20px;">
							<div class="custom-control custom-checkbox my-1 mr-sm-2">
							  <input type="checkbox" class="custom-control-input" id="customCheck1">
							  <label class="custom-control-label" for="customCheck1">먹이</label>
							</div>
							<div class="custom-control custom-checkbox my-1 mr-sm-2">
							  <input type="checkbox" class="custom-control-input" id="customCheck2">
							  <label class="custom-control-label" for="customCheck2">물</label>
							</div>
							<div class="custom-control custom-checkbox my-1 mr-sm-2">
							  <input type="checkbox" class="custom-control-input" id="customCheck3">
							  <label class="custom-control-label" for="customCheck3">간식</label>
							</div>
							<div class="custom-control custom-checkbox my-1 mr-sm-2">
							  <input type="checkbox" class="custom-control-input" id="customCheck4">
							  <label class="custom-control-label" for="customCheck4">약</label>
							</div>
							<div class="custom-control custom-checkbox my-1 mr-sm-2">
							  <input type="checkbox" class="custom-control-input" id="customCheck5">
							  <label class="custom-control-label" for="customCheck5">만남</label>
							</div>
							</div><br>
							<div class="row">
								<div class="col-8">
									<div class="form-group">
								    	<textarea class="form-control" id="exampleFormControlTextarea1" style="width: 100%" rows="3"></textarea>
								  	</div>
								</div>
								<div class="col-4" style="padding-left: 90px;">
									<div class="map_wrap">
										<div id="map" style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>
										<div class="hAddr">
											<span class="title">지도중심기준 행정동 주소정보</span> <span id="centerAddr"></span>
										</div>
									</div>
								</div>
							</div>
							<div class="text-center">
								<button type="button" class="btn btn-primary">글쓰기</button>
								<button type="button" class="btn btn-primary">취소</button>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel"
						aria-labelledby="nav-profile-tab">
						<div>갤러리</div>
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



<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b303496379e7132604036c5f952f3623&libraries=services"></script>
<script>

	/* 첫번째 지도 (마커 출력용 지도) */
	var mapContainer0 = document.getElementById('map0'), // 지도를 표시할 div 
	mapOption0 = { 
	    center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	};
	
	var map0 = new kakao.maps.Map(mapContainer0, mapOption0); // 지도를 생성합니다
	
	//마커가 표시될 위치입니다 
	var markerPosition0  = new kakao.maps.LatLng(33.450701, 126.570667); 
	
	//마커를 생성합니다
	var marker0 = new kakao.maps.Marker({
	position: markerPosition0
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