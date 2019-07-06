// 카카오 맵 객체 생성
var geocoder = new kakao.maps.services.Geocoder();

// 현 위치를 알아내는 스크립트
// 브라우저가 위치 정보를 제공하는지 물어봄
if (navigator.geolocation) 
{
	navigator.geolocation.getCurrentPosition(callback, handleError);
}
else
{
	var si = "서울";
	var gu = "마포구";
	var dong = "서교동";
	
	var juso = "\"" + si + " " + gu + " " + dong + "\"";
	
	$("#loc").text(juso);
}

// 위에서 위도와 경도를 알아내서 주소를 알아냄
function callback(position)
{
	geocoder.coord2Address(position.coords.longitude, position.coords.latitude, result);
};

// 메인에 시, 구, 동을 표시함.
function result(info)
{	
	for(var i = 0; i < 1; i++) 
	{
		var si = info[0].address.region_1depth_name;
		var gu = info[0].address.region_2depth_name;
		var dong = info[0].address.region_3depth_name;
		
		var juso = "\"" + si + " " + gu + " " + dong + "\"";
		
		$("#loc").text(juso);
		break;
	};
};

function handleError(err) 
{
	// 사용자가 위치 정보 공유를 거부한 경우
	if (err.code == 1)
	{
		var si = "서울";
		var gu = "마포구";
		var dong = "서교동";
	}
		
	var juso = "\"" + si + " " + gu + " " + dong + "\"";
	$("#loc").text(juso);
}

// 얻은 시, 구, 동으로 등록 고양이 DB 검색
// (작성 중)