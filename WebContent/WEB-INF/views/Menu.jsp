<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light rounded site-header sticky-top py-1">
    <a class="navbar-brand" href="<%=cp %>/main"><img src="<%=cp%>/img/cat_main.jpg" style="width: 60px; margin-left: 30px;"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="true" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExample09" style="margin: 30px;">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="<%=cp %>/introduce">소개<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=cp %>/cat" id="catManage">길냥이관리<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="<%=cp %>/adopt" id="adopt">입양<span class="sr-only">(current)</span></a>
        </li>
        <%-- <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown09" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">입양&실종</a>
          <div class="dropdown-menu" aria-labelledby="dropdown09">
            <a class="dropdown-item" href="<%=cp %>/adopt">입양</a>
            <a class="dropdown-item" href="<%=cp %>/missing">실종</a>
          </div>
        </li> --%>
        <li class="nav-item">
          <a class="nav-link" href="<%=cp %>/board">자유게시판<span class="sr-only">(current)</span></a>
        </li>
      </ul>
      <form class="form-inline my-2 my-md-0">
          <c:choose>
	        <c:when test="${sessionScope.user_id != null }">
	        	 <!-- else if 로그인 O --> 
			        <button type="button" class="btn btn-primary" onclick="location.href='<%=cp %>/catregistrationform'">등록</button>&nbsp;&nbsp;
			        <span>${sessionScope.user_id }</span>&nbsp;&nbsp;&nbsp;&nbsp;
			        <button type="button" class="btn btn-outline-primary" onclick="location.href='<%=cp%>/mypage'">마이페이지</button>&nbsp;&nbsp;
			        <button type="button" class="btn btn-outline-primary" onclick="location.href='<%=cp%>/logout'">로그아웃</button>
	        </c:when>
	        <c:otherwise>
	        	 <!-- if 로그인 X -->
		        <button type="button" class="btn btn-outline-primary" onclick="location.href='<%=cp%>/login?check=y'">로그인</button>&nbsp;&nbsp;
		        <button type="button" class="btn btn-outline-primary" onclick="location.href='<%=cp%>/acceptterms'">회원가입</button>
	        </c:otherwise>
	        
        
        
        </c:choose>
      </form>
    </div>
  </nav>
  
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b303496379e7132604036c5f952f3623&libraries=services"></script>
<script type="text/javascript">
// 카카오 맵 객체 생성
var geocoder = new kakao.maps.services.Geocoder();
var si = null;
var gu = null;
var dong = null;

// 현 위치를 알아내는 스크립트
// 브라우저가 위치 정보를 제공하는지 물어봄
if (navigator.geolocation) 
{
	navigator.geolocation.getCurrentPosition(callback, handleError);
}
else
{
	alert("in");
	si = "서울";
	gu = "마포구";
	dong = "서교동";	
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
	//console.log("path name:" + window.location.url);
	var url = window.location.pathname
	
	if(url=="<%=cp%>/cat" || url=="<%=cp%>/main" || url=="<%=cp%>/adopt" || url=="<%=cp%>/missing" || url=="<%=cp%>/introduce")
	{
		for(var i = 0; i < 1; i++) 
		{
			console.log("for문")
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
	console.log(gu + "," + dong);

	$("#catCount").attr("href", "<%=cp %>/cat?gu=" + gu + "&dong=" + dong);
	$("#catManage").attr("href", "<%=cp %>/cat?gu=" + gu + "&dong=" + dong);
	
	}	
	
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


</script>
