<%@page import="java.util.Calendar"%>
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
	<title>고양이상세페이지</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp%>/css/jquery-ui.css">
	<link rel="stylesheet" href="<%=cp %>/css/view/cat_detail.css">
	<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>
	<script type="text/javascript" src="<%=cp %>/js/view/cat_detail.js"></script>
	<script type="text/javascript">
	$(document).ready(function()
	{
		// 업로드 input 엘리먼트의 상태가 바뀌면,
		$("#uploadPicture").on("change",function(){readURL(this);});
		
		function readURL(input) { 
			if (input.files && input.files[0]) 
			{ 
				var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성 
	            
				// 파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
				reader.onload = function (e) { 
				// 이미지 Tag의 SRC속성에 읽어들인 File내용(아래 코드에서 읽어들인 dataURL형식)을 지정 
				$('#catPicture').attr('src', e.target.result); 
                }                    
				reader.readAsDataURL(input.files[0]);
				//File내용을 읽어 dataURL형식의 문자열로 저장 
       		}
        }
	});
	</script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

<div class="container2" style="min-width: 1600px;">
	<div class="jumbotron">
		<div class="row">
			<div class="col-4 text-center imgMainContain">
				<img src="<%=cp %>${catInfo.CAT_IMG }" class="actImg"><br>
				<br>
			</div>
		<div class="col-4 text-left mt">
			<div class="row">
				<div class="col-7"><h2>${catInfo.CAT_NAME }</h2></div>
					<!------------------------  대표집자 3명에게 보여지는 수정 버튼  -------------------------->
						<!-- 
						<div class="col-8">
						   <button type="button" class="btn btn-primary">수정</button>
						</div> 
						-->
					<!------------------------  대표집자 3명에게 보여지는 수정 버튼  -------------------------->
			</div>
		<div class="row">
			<div class="col-6">
				<h5>${catInfo.CAT_ADDRESS }</h5>
			</div>
			<div class="col-6 align-right">
				${catInfo.CAT_DATE }
			</div>
		</div>
            
		
		<div class="row">
			<div class="col-6">
				<label for="exampleInputEmail1">종류</label>
				<input type="email" class="form-control" id="exampleInputEmail1" value="${catInfo.CAT_SPECIES }" readonly="readonly">
			</div>
                  
			<div class="col-6">
				<label for="exampleInputEmail1">성별</label>
				<input type="email" class="form-control" id="exampleInputEmail1" value="${catInfo.CAT_SEX }" readonly="readonly">
			</div>
		</div><br>
		<div class="form-group">
			<label for="exampleInputEmail1">특이사항</label>
			<input type="email" class="form-control" id="exampleInputEmail1" value="${catInfo.ETC }" readonly="readonly">
		</div>
            
		<div class="form-group">
			<label for="exampleInputEmail1">건강사항</label>
			<input type="email" class="form-control" id="exampleInputEmail1" value="${catInfo.HEALTH }" readonly="readonly">
		</div>
            <br>
          <div class="row">
			<div class="col-6 text-right">
				<img src="<%=cp %>/img/plus-button.png" class="img2"><span class="followInfo">${catInfo.FOLLOW }</span>
			</div>
			<div class="col-6 text-left">
				<img src="<%=cp %>/img/user.png" class="img2"> 집사
			</div>
		</div><br>
		<div class="row">
			<div class="col-3">
				<span>대표집사</span>
			</div>
			<c:forEach var="representationCat" items="${representationCat }">
				<div class="col-3">
					<span>${representationCat.USER_CODE}집사</span>
				</div>
			
			</c:forEach>
		</div><br>
	</div>
	<div class="col-4 cat_foot">
		<h3>야옹이 발자취</h3>
		<div id="map0" class="map0">
	</div><br>
	<div class="row">
		<div class="col-6">	
			<!-- 팔로우 기능 구현 -->
			<!-- 로그인 했을때 -->
			<c:choose>
			<c:when test="${sessionScope.user_id != null }">
		
				<c:choose>
					<c:when test="${result == 0}">
						<button type="button" class="btn btn-primary" id="loginNeed">팔로우</button>
					</c:when>
					<c:otherwise>
						<button type="button" class="btn btn-secondary" id="loginNeed">언팔로우</button>
					</c:otherwise>
				</c:choose>
			
			
			</c:when>
			<c:otherwise>
			<button type="button" class="btn btn-primary" onclick="javascript: login_need();" id="followBtn">팔로우</button>
			</c:otherwise>
			</c:choose>
		</div>
		<div class="col-6">
			<button type="button" class="btn" data-toggle="modal" data-target="#exampleModalCenter"><img src="img/notification.png" class="img2"></button>신고하기
				<!-- Modal -->
				<form action="declaration" method="post" id="modalForm">
					<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
						<div class="modal-dialog modal-dialog-centered" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h5 class="modal-title" id="exampleModalCenterTitle">길냥이관리 게시판</h5>
									<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body">
									<div class="container">
										<p>Post Number</p>
										<input type="text" value="${catInfo.CAT_CODE }" class="form-control" readonly="readonly" name="cat_id"> 
									</div><br>
									<div class="container">
										<p>Description</p>
										<select class="form-control" id="declarationSelect" name="declarationSelect">
											<option selected="selected">신고분류 선택</option>
											<option value="RP1">부적절한 정보(욕설, 협박 등)</option>
											<option value="RP2">고양이 사망</option>
											<option value="RP3">잘못된 정보가 통합됨</option>
										</select>
									</div><br>
									<div class="container">
										<p>Input</p>
										<textarea class="form-control resize" id="declarationContent" rows="3" name="declarationContent"></textarea>
										<div class="row text-right">
											<div class="col-8"></div>
												<div class="col-4">
													<div class="textCounter declaration"><span id="counter">0</span> / 1000</div> 
												</div>
										</div>
										<div class="row">
											<span class="err1">필수 항목이 입력되지 않았습니다.</span>
										</div>
										<div class="row">
											<span class="err2">신고분류를 선택해 주세요.</span>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
									<button type="button" class="btn btn-primary" id="sendBtn">Save changes</button>
								</div>
							</div>
						</div>
					</div>
				</form>
		</div>
	</div>
	</div>
		</div>
	</div>
	
	<!----------------------------------------------  대표집자 3명에게 보여지는 유사한 고양이 그래프  ------------------------------------------------>
	<!-- <div class="row">
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
				<div class="row"></div>
			</div>
		</div>
		<div class="col-5">
			<button type="button" class="btn btn-primary integratioApplication" data-toggle="modal" data-target="#integrationApplication">통합신청</button>
			Modal
			<div class="modal fade" id="integrationApplication" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">통합 신청</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<a href="#">#28374 냐옹이</a> 와 통합 신청이 들어왔습니다.<br> 
							냐옹이의 정보를 확인 후, 2019년 7월 19일까지 통합 신청에 응답해주세요.<br> 
							- 같은 고양이라고 판단되어 신청을 수락하신 경우, 전체 집사를 대상으로 통합 투표가 2주간 진행  됩니다.<br>
							- 같은 고양이가 아니라고 판단될 시에는, 즉시 거절 응답을 보내시면 됩니다.<br>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">거절</button>
							<button type="button" class="btn btn-primary">수락</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div> -->
	
	<!----------------------------------------------  대표집자 3명에게 보여지는 유사한 고양이 그래프  ------------------------------------------------>
	
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
					<input type="hidden" value="${sessionScope.user_id}" id="user_id" name="user_id">
					<c:choose>
					<c:when test="${sessionScope.user_id != null }">	
						<div class="jumbotron select">
						
							<form action="actregistration" method="POST" id="activityForm" enctype="multipart/form-data">
							<input type="hidden" value="${catInfo.CAT_CODE }" id="cat_id" name="cat_id">
							<div class="row row2">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="activity1" name="activityRadio" class="custom-control-input" value="AT1">
									<label class="custom-control-label" for="activity1">먹이</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="activity2" name="activityRadio" class="custom-control-input" value="AT2">
									<label class="custom-control-label" for="activity2">물</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="activity3" name="activityRadio" class="custom-control-input" value="AT3">
									<label class="custom-control-label" for="activity3">간식</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="activity4" name="activityRadio" class="custom-control-input" value="AT4">
									<label class="custom-control-label" for="activity4">약</label>
								</div>
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="activity5" name="activityRadio" class="custom-control-input" value="AT5">
									<label class="custom-control-label" for="activity5">만남</label>
								</div>
							</div><br>
							<div class="row">
								<div class="col-8 text-right">
									<div class="form-group">
										<textarea class="form-control resize" id="activityContent" rows="14" name="activityContent"></textarea>
										<div id="activityCounter"><span id="Acounter">0</span> / 9000</div>
									</div>
								</div>
								<div class="col-4 cat_foot">
									<div class="map_wrap">
										<div id="map" class="map"></div>
											<div class="hAddr">
												<span class="title">지도중심기준 행정동 주소정보</span> 
												<span id="centerAddr"></span>
											</div>
											
											<!-- 
											<input type="hidden" id="latitude" name="latitude">
											<input type="hidden" id="longitude" name="longitude">
											<input type="hidden" id="gu" name="gu">
											<input type="hidden" id="dong" name="dong"> -->
											
												<input type="hidden" id="latitude" name="latitude">
												<input type="hidden" id="longitude" name="longitude">
												<input type="hidden" id="gu" name="gu">
												<input type="hidden" id="dong" name="dong">
									</div>
								</div>
							</div>
							<div class="row row2">
								<div id="col text-center">
									<input type="text" id="firstDatepicker" class="form-control3" name="firstDatepicker" readonly="readonly">
								</div>
								<div class="col">
									<img id="catPicture" src="img/straycat.jpg" style="width: 50px; margin-right: 20px;"><label class="btn btn-primary"> 사진첨부<input type="file" class="form-control-file" id="uploadPicture" style="display: none;" name="file"></label>
								</div>
							</div>
							<div class="row">
								<span class="err1">필수 항목이 입력되지 않았습니다.</span>
							</div>
									<div class="text-center">
										<button type="button" class="btn btn-primary" id="activityBtn">글쓰기</button>
										<button type="button" class="btn btn-primary">취소</button>
									</div>
							</form>
						</div>
					</c:when>
				
				
				<c:otherwise>
					<div class="jumbotron text-center">
						<h1 class="display-4">로그인이 필요한 서비스 입니다!</h1>
						<a class="btn btn-primary btn-lg" href="login" role="button">로그인</a>
					</div>
				</c:otherwise>
				</c:choose>
				<!----------------------------------------------------- 로그인 X ----------------------------------------------------->

				<h4 class="write">활동피드</h4>
				<div class="form-group">
						<input type="text" id="secondDatepicker" name="secondDatepicker" class="form-control2 text-center" readonly="readonly">
				</div><br>

				<div id="cat">
					<c:forEach var="catActRegList" items="${catActReg}">
					<div class="row">
					<div class="col-2">
						<div class="row">
						<%-- <c:if test="${catActRegList.NIKNAME eq (null)}">
							<div class="row">등록된 활동이 없습니다.</div>
						</c:if> --%>
							<div>
								<h5>${catActRegList.NICKNAME }</h5>
								<span>${catActRegList.ACT_DATE }</span>
								<div>${catActRegList.ACT_LOCATION }</div>
							</div>
						</div>
					</div>
					<div class="col-10">
			 		<div class="row">
					
						&nbsp;&nbsp;&nbsp;&nbsp;
						<c:choose>
							<c:when test="${catActRegList.ACT_TYPE eq '먹이'}"><img src="img/fish.png"></c:when>
							<c:when test="${catActRegList.ACT_TYPE eq '물'}"><img src="img/water.png"></c:when>
							<c:when test="${catActRegList.ACT_TYPE eq '간식'}"><img src="img/cacao.png"></c:when>
							<c:when test="${catActRegList.ACT_TYPE eq '약'}"><img src="img/help.png"></c:when>
							<c:when test="${catActRegList.ACT_TYPE eq '만남'}"><img src="img/favorite.png"></c:when>
							<c:otherwise></c:otherwise>
						</c:choose>
						 
					</div>
					</div>
					</div>
					
						<div class="row">
							<div class="col-2"></div>
							<div class="col-10">
								<div class="row">
									<div class="col-4 imgContain">
										<img src="<%=cp %>${catActRegList.ACT_IMG }" class="actImg">
									</div>
									<div class="col-8">
										<span>${catActRegList.CONTENT }</span>
									</div>
								</div>
							</div>
						</div>
	
						<!-- <div class="row">
							<div class="col-2"></div>
							<div class="col-10">
								<form class="form-inline">
									<div style="margin-top: 30px;">
										<input type="text" id="inputPassword2" placeholder="댓글달기"  style="width: 100%;">
									</div>
									<button type="submit" class="btn btn-primary mb-2">입력</button>
								</form>
							</div>
						</div> --><br>
						<hr><br>
					</c:forEach>
					<!-- </div> -->
					<!-- 스크롤 end -->
				</div>
			</div>
			<!-----------------------------------------------------  활동 탭  ----------------------------------------------------------->
			
			<!----------------------------------------------------- 갤러리 탭 ----------------------------------------------------------->
			
			
			<%-- <c:forEach var="actGalList" items="${actGalList}">
				<div style="display:none; text-align: center;" class="tab-pane fade" id="nav-profile" role="tabpanel">
					<div style="text-align: right;">
						<h4 class="write">사진추가 <img class="img2" src="img/plus-button.png"></h4>
					</div>
					<div>
						<img src="<%=cp %>${actGalList.IMG_FILE }" style="margin-bottom: 15px; max-width: 600px;" class="rounded">
					</div>
					<div>
						<img src="img/like.png"> 999
					</div>
				</div><br><br>
			</c:forEach>
			 --%>
			
			
				<div style="display:none; text-align: center;" class="tab-pane fade" id="nav-profile" role="tabpanel">
				
					<div style="text-align: right;">
						<h4 class="write">사진추가 <img class="img2" src="img/plus-button.png"></h4>
					</div>
					<c:forEach var="actGalList" items="${actGalList}">
					<div>
						<img src="<%=cp %>${actGalList.IMG_FILE }" style="margin-bottom: 15px; max-width: 600px;" class="rounded">
					</div>
					<div>
						<img src="img/like.png"> 999
					</div>
					<br><br>
					</c:forEach>
					
				
				</div><br><br>
			
				</div><br><br>
				<!-- <div class="text-center">
					<button type="button" class="btn btn-primary btn-lg">더보기</button>
				</div>					 -->
			</div>
			

			<!----------------------------------------------------- 갤러리 탭 ----------------------------------------------------------->

<div>
	<c:import url="Footer.jsp"></c:import>
</div>

<script type="text/javascript">
	$(document).ready(function()
	{
		$("#nav-home-tab").click(function()
		{
			$("#nav-profile").css("display", "none");
			$("#nav-home").css("display", "block");
		})
		
		$("#nav-profile-tab").click(function()
		{
			$("#nav-home").css("display", "none");
			$("#nav-profile").css("display", "block");
		})
		
		
		
		$("#loginNeed").click(function()
		{
			var cat_id = $("#cat_id").val();
			var user_id = $("#user_id").val();
			$.ajax(
			{
				url:"followCheck",
				type:"POST",
				data:{'cat_id':cat_id, 'user_id':user_id},
				success:function(data)
				{
					if(data==0)
					{
						// insert 구문 실행
						location.href = "<%=cp%>/follow?cat_id=" + cat_id;
						//alert("팔로우 실행");
						//console.log("insert");
					}
					else
					{
						// delete 구문 실행
						location.href = "<%=cp%>/unfollow?cat_id=" + cat_id;
						//alert("팔로우 취소");
						//console.log("delete");
					}
				}
			});
		});  
				
		$("#secondDatepicker").on("change", function()
		{
			//alert($("#secondDatepicker").val());
			$.ajax(
			{
				url: 'act_date'
				,type: 'POST'
				,data: {'id': $("#cat_id").val(),'act_date' :  $("#secondDatepicker").val()}
				,dataType : "JSON"
				,success:function(data)
				{
					//console.log(data);
					
								
						$("#cat").empty();
						
						var str = "";
						
						var cCnt = data.length;
						
						str += "<div id='cat'>";
						for(var i=0; i<cCnt; i++)
						{
							
							str += "				<div class='row'>";
							str += "						<div class='col-2'>";
							str += "						<div class='row'>";
							if(data == null)
							{
								str += "						<div class='row'>등록된 활동이 없습니다.</div>";
							}
							str += "							<h5>" + data[i].NICKNAME + "</h5>";
							str += "							<span>" + data[i].ACT_DATE + "</span>";
							str += "							<div>" + data[i].ACT_LOCATION + "</div>";
							str += "						</div>";
							str += "					</div>";
							str += "				</div>";
							str += "						<div class='col-10'>";
							str += "					 		<div class='row'>";
							str += "								&nbsp;&nbsp;&nbsp;&nbsp;";
							
							if(data[i].ACT_TYPE == "먹이")
							{
							str += "<img src='img/fish.png'>";
							}
							else if(data[i].ACT_TYPE == "물")
							{
							str += "<img src='img/fish.png'>";
							}
							else if(data[i].ACT_TYPE == "간식")
							{
							str += "<img src='img/fish.png'>";	
							}
							else if(data[i].ACT_TYPE == "약")
							{
							str += "<img src='img/fish.png'>";	
							}
							else if(data[i].ACT_TYPE == "만남")
							{
							str += "<img src='img/fish.png'>";	
							}
							str += "							</div>";
							str += "							</div>";
							str += "							</div>";
							str += "							</div>";
							str += "					<div class='row'>";
							str += "						<div class='col-2'></div>";
							str += "						<div class='col-10'>";
							str += "							<div class='row'>";
							
									str += "										<div class='col-4 imgContain'>";
									str += "											<img src='/FinalPrj/" + data[i].ACT_IMG + "' class='actImg'>";
									str += "										</div>";
							str += "					<div class='col-8'>";
							str += "						<span>" + data[i].CONTENT + "</span>";
							str += "						</div>";
							str += "						</div>";
							str += "						</div>";
							str += "						</div>";
							str += "						<br>";
							str += "						<hr><br>";
							str += "						</div>";
							str += "						</div>";
						}
						
						
						
						$("#cat").append(str);
						
				}
					
			});
		});
				
		
	});
</script>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b303496379e7132604036c5f952f3623&libraries=services"></script>
<script>
	/* 첫번째 지도 (마커 출력용 지도) */
	

	if("${avgLoc.LATITUDE }" == "" && "${avgLoc.LONGITUDE }"== "" )
	{
		var mapContainer0 = document.getElementById('map0'), // 지도를 표시할 div  
	    mapOption0 = { 
	        center: new kakao.maps.LatLng(37.566826,126.9786567), // 지도의 중심좌표
	        level: 6 // 지도의 확대 레벨
	    };
	}
	else
	{
		var mapContainer0 = document.getElementById('map0'), // 지도를 표시할 div  
		    mapOption0 = { 
		        center: new kakao.maps.LatLng("${avgLoc.LATITUDE }","${avgLoc.LONGITUDE }"), // 지도의 중심좌표
		        level: 6 // 지도의 확대 레벨
		    };
	}
	
	var map0 = new kakao.maps.Map(mapContainer0, mapOption0); // 지도를 생성합니다
	 
	// 마커를 표시할 위치와 title 객체 배열입니다 
	var positions0 = [
		<c:forEach var='catLocationList' items='${catLocation}'>
		{ 
			title: '카카오',
	        latlng: new kakao.maps.LatLng(${catLocationList.LATITUDE }, ${catLocationList.LONGITUDE })
	    },
	    </c:forEach>		
	];
	
	// 마커 이미지의 이미지 주소입니다
	var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    
	for (var i = 0; i < positions0.length; i ++) {
	    
	    // 마커 이미지의 이미지 크기 입니다
	    var imageSize = new kakao.maps.Size(24, 35); 
	    
	    // 마커 이미지를 생성합니다    
	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	    
	    // 마커를 생성합니다
	    var marker0 = new kakao.maps.Marker({
	        map: map0, // 마커를 표시할 지도
	        position: positions0[i].latlng, // 마커를 표시할 위치
	        title : positions0[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	        image : markerImage // 마커 이미지 
	    });
	}
	
	/* 두 번째 지도 (마커 생성용 지도) */
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption =
	{
		center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
		level : 4
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
				
				test3 = marker.getPosition(new kakao.maps.LatLng());
				
				$("#latitude").val(test3.getLat());
				$("#longitude").val(test3.getLng());
				$("#gu").val(result[0].address.region_2depth_name);
				$("#dong").val(result[0].address.region_3depth_name);
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