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
				test5.innerHTML = result[0].address.region_2depth_name;		// 마커 클릭시 구 이름 받기
				test6.innerHTML = result[0].address.region_3depth_name;		// 마커 클릭시 동 이름 받기
				
				//test1.innerHTML = marker.getPosition();		// 마커 클릭시 위도 경도 받기
				//
				
				test3 = marker.getPosition(new kakao.maps.LatLng());		// 마커 클릭시 위도 경도 받기
				
				//test5.innerHTML = test3.getLat();
				//test6.innerHTML = test3.getLng();
				
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
					//test1.innerHTML = result[i].address_name;
					// result[i].address_name  → 지도 중심부의 주소 명

				}
			}
		}
		
	}
	
	
	
	
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
                
            	// 테스트용 ----------------------------------------------
            	test1.innerHTML = data.sigungu;
            	test2.innerHTML = data.bname;	// 사용자가 입력한 주소의 구, 동 출력
            	// ---------------------------------------------- 테스트용
                
            }
        }).open();
    }
</script>


</body>
</html>