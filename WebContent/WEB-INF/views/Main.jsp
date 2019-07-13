<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>메인</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link href="<%=cp%>/css/view/main.css" rel="stylesheet">
</head>
<body>



<c:import url="Menu.jsp"></c:import>
	<div>
		<img src="img/cat_back2.jpg" class="mainImg">
	</div>

	<div class="card"> <br>
		<div class="card-body center">
			<div>
			 	주변에 어떤 고양이가 있는지 확인하세요!
			</div><br>
			<div>
				<h4><span id="loc">"서울시 성동구 성수동"</span>에 사는 고양이</h4>
				<h4><a id="catCount">0</a></h4>
			</div><br>
			<div class="input-group mb-3">
				<input type="text" class="form-control" placeholder="Search">
				<div class="input-group-append">
					<button class="btn btn-primary" type="submit">Go</button>
				</div>
			</div><br>
		</div>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	
	<!-- <div class="container-fluid">
	 Control the column width, and how they should appear on different devices
	<div class="row">
	    <div class="col-sm-6">
	    	<div class="container">
	    		<div class="card text-center wh">
	    			<div class="container text-center" id="team">
						<h2>입양</h2>
						<p>서울시 서대문구 연희동</p>
						
						<div class="row"><br>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Johnny Walker</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Rebecca Flex</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Jan Ringo</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Kai Ringo</h5>
						</div>
						
						</div>
						</div>
	    		</div>
	    	</div>
	    </div>
		<div class="col-sm-6">
			<div class="container text-center">
	    		<div class="card" style="width: 800px; height: 400px;">
	    			<div class="container text-center" id="team">
						<h2>실종</h2>
						<p>서울시 서대문구 연희동</p>
						
						<div class="row"><br>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Johnny Walker</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Rebecca Flex</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Jan Ringo</h5>
						</div>
						
						<div class="w3-quarter">
						  <img src="img/straycat.jpg" alt="Boss" style="width:80%" class="w3-circle w3-hover-opacity">
						  <h5>Kai Ringo</h5>
						</div>
						
						</div>
						</div>
	    		</div>
	    	</div>
		</div>
	</div>
</div> -->

<br />
<br />
<br />
<br />
<br />
<div>
	<c:import url="Footer.jsp"></c:import>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b303496379e7132604036c5f952f3623&libraries=services"></script>
<script type="text/javascript">
// 카카오 맵 객체 생성
var geocoder = new kakao.maps.services.Geocoder();
var si = "서울";
var gu = "마포구";
var dong = "서교동";

// 현 위치를 알아내는 스크립트
// 브라우저가 위치 정보를 제공하는지 물어봄
if (navigator.geolocation) 
{
	navigator.geolocation.getCurrentPosition(callback, handleError);
}
else
{
	
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
		
		/* $("#si").text(si);
		$("#gu").text(gu);
		$("#dong").text(dong); */
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


/* 
$(document).ready(function()
{
	$("#loginBtn").unbind("click").click(function(e)
	{
		e.preventDefault();
		fn_moveToLogin();
	});
	
});

function fn_moveToLogin()
{
	window.location.href="login";
} */

$(document).ready(function()
{	
	$.ajax(
	{
		url: 'checkCount'
		,type: 'get'
		,data: {'gu':gu, 'dong':dong}
		,success : function(data)
		{
			$("#catCount").text(data + "마리");
		}
	});
	

	$("#catCount").attr("href", "cat?gu=" + gu + "&dong=" + dong);
	
});


</script>
</body>
</html>