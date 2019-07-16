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
<title>Kakao 지도 시작하기</title>
<style>
    .map_wrap {position:relative;width:100%;height:350px;}
    .title {font-weight:bold;display:block;}
    .hAddr {position:absolute;left:10px;top:10px;border-radius: 2px;background:#fff;background:rgba(255,255,255,0.8);z-index:1;padding:5px;}
    #centerAddr {display:block;margin-top:2px;font-weight: normal;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>
</head>
<body>

<div class="map_wrap">
    <div id="map" style="width:500px;height:500px;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
        <span class="title">지도중심기준 행정동 주소정보</span>
        <span id="centerAddr"></span>
    </div>
	
	<input type="text" id="sample6_postcode" placeholder="우편번호">
	<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
	<input type="text" id="sample6_address" placeholder="주소" readonly="readonly"><br>
	<input type="text" id="sample6_detailAddress" placeholder="상세주소">
	<input type="text" id="sample6_extraAddress" placeholder="참고항목" >
	<br><br>
	<span id="test1"></span>
	<br><br>
	<span id="test2"></span>
	<br><br>
	<span id="test5"></span>
	<br>
	<span id="test6"></span>
	<br>
	<span id="test7"></span>
	<br>
	<span id="test8"></span>
	

</div>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35831b6d578cf29259f031b43458c225&libraries=services"></script>
<script type="text/javascript">
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption =
	{
		center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		level : 1
	// 지도의 확대 레벨
	};

	var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

	var geocoder = new kakao.maps.services.Geocoder();	// 주소-좌표 변환 객체를 생성합니다

	//마커가 표시될 위치입니다 
	//var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
	
	// 테스트 -----------------------------------------------------------------------
	var test3 = "";
	var test4 = "";
	// ----------------------------------------------------------------------- 테스트
	
	
	var marker = new kakao.maps.Marker();	// 클릭한 위치를 표시할 마커입니다
	var infowindow = new kakao.maps.InfoWindow({zindex : 1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

	// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
	searchAddrFromCoords(map.getCenter(), displayCenterInfo);

	// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다

	kakao.maps.event.addListener(map, 'click', function(mouseEvent)
	{
		searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status)
		{
			if (status === kakao.maps.services.Status.OK)
			{
				var detailAddr = !!result[0].road_address ? '<div>도로명주소 : '
						+ result[0].road_address.address_name + '</div>' : '';
				detailAddr += '<div>지번 주소 : ' + result[0].address.address_name
						+ '</div>';

				var content = '<div class="bAddr">'
						+ '<span class="title">법정동 주소정보</span>' + detailAddr
						+ '</div>';

				// 마커를 클릭한 위치에 표시합니다 
				marker.setPosition(mouseEvent.latLng);
				marker.setMap(map);

				// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
				infowindow.setContent(content);
				infowindow.open(map, marker);
				// 테스트용 ----------------------------------------------
				test1.innerHTML = marker.getPosition();		// 마커 클릭시 위도 경도 받기
				//
				
				test3 = marker.getPosition(new kakao.maps.LatLng());		// 마커 클릭시 위도 경도 받기
				
				test5.innerHTML = test3.getLat();
				test6.innerHTML = test3.getLng();
				
				test7.innerHTML = result[0].address.region_2depth_name;		// 마커 클릭시 구 이름 받기
				test8.innerHTML = result[0].address.region_3depth_name;		// 마커 클릭시 동 이름 받기
				
				// ---------------------------------------------- 테스트용
			}
			
			
		});
	});
	
	
	
	
	kakao.maps.event.addListener(map, 'idle', function()
	{
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);
	});

	function searchAddrFromCoords(coords, callback)
	{
		// 좌표로 행정동 주소 정보를 요청합니다
		geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);
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
			var test = document.getElementById("test");
			
			for (var i = 0; i < result.length; i++)
			{
				// 행정동의 region_type 값은 'H' 이므로
				if (result[i].region_type === 'H')
				{
					infoDiv.innerHTML = result[i].address_name;
				}
			}
		}
		
	}
</script>


</body>
</html>