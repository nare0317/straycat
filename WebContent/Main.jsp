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
	<script type="text/javascript" src="<%=cp%>/js/view/gudong.js"></script>
</head>
<body>



<c:import url="Menu.jsp"></c:import>
	<div>
		<!-- <img src="img/cat_back2.jpg" class="mainImg"> -->
		<img src="<%=cp %>/img/main18_edit.jpg" class="mainImg">
		<%-- <img src="<%=cp %>/img/main29_edit.jpg" class="mainImg"> --%>	
		
		
		<%-- <img src="<%=cp %>/img/main28.jpg" class="mainImg"> --%>
		
	</div>

	<div class="card"> <br>
		<div class="card-body center">
			<div>
			 	주변에 어떤 고양이가 있는지 확인하세요!
			</div><br>
			<div>
				<h4><span id="loc">"서울시 성동구 성수동"</span>에 사는 고양이</h4>
				<h4><a id="catCount">0 마리</a></h4>
			</div><br>
			
			<div class="row">
				<!-- 구 선택 -->
				<div class="col-lg-5">
					<select class="custom-select" id="gu" onchange="dongList();">
						<option selected>구 선택</option>
						<c:forEach var="guList" items="${guList }">
							<option value="${guList.GU }">${guList.GU }</option>
						</c:forEach>
					</select>
				</div>
				<!-- 동 선택 -->
				<div class="col-lg-5">
					<select class="custom-select" id="dong" name="dong">
						<option value="">동 선택</option>
					</select>
				</div>
				<!-- 조회버튼 -->
				<div class="col-lg-2">
					<button type="button" class="btn btn-primary" id="searchAddress">조회</button>
				</div>
			</div>
			
		</div><br>
	</div>
	<br><br><br>
	
	
	<div class="container2 text-center">
		<div class="jumbotron">
			  <h2 class="display-4">입양된 고양이</h2><br>
			  
			  <div class="container2 marketing">
				    <div class="row">
				      <c:forEach var="adoptList" items="${list }" begin="1" end="3">
					      <div class="col-lg-4 text-center">
					      		<img src="img/straycat.jpg" class="catImg">
					        <h2>${adoptList.CAT_NAME }</h2>
					        <p>종 : ${adoptList.CAT_TYPE }</p>
					        <p>성별 : ${adoptList.CAT_SEX }</p>
					        <p>나이 : ${adoptList.CAT_AGE }</p>
					        <p>사는곳 : ${adoptList.CAT_ADDRESS }</p><br>
					        <p><a class="btn btn-secondary" href="<%=cp %>/adopt_read?id=${adoptList.ADT_CODE }" role="button">View details »</a></p>
					      </div><!-- /.col-lg-4 -->
				      </c:forEach>
				    </div><!-- /.row -->
			  </div>
			  
			  <hr class="my-4">
			  <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
			  <a class="btn btn-primary btn-lg" href="adopt" role="button">Learn more</a>
		</div>
	</div><br>
	
	
	
		<div class="container2 text-center">
		<div class="jumbotron">
			  <h2 class="display-4">실종된 고양이</h2><br><br>
			  
			  <div class="container2 marketing">
				    <div class="row">
				    
				      <div class="col-lg-4 text-center">
				        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				        <h2>Heading</h2>
				        <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
				        <p><a class="btn btn-secondary" href="#" role="button">View details »</a></p>
				      </div><!-- /.col-lg-4 -->
				      <div class="col-lg-4 text-center">
				        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				        <h2>Heading</h2>
				        <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
				        <p><a class="btn btn-secondary" href="#" role="button">View details »</a></p>
				      </div><!-- /.col-lg-4 -->
				      <div class="col-lg-4 text-center">
				        <svg class="bd-placeholder-img rounded-circle" width="140" height="140" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: 140x140"><title>Placeholder</title><rect width="100%" height="100%" fill="#777"></rect><text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				        <h2>Heading</h2>
				        <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
				        <p><a class="btn btn-secondary" href="#" role="button">View details »</a></p>
				      </div><!-- /.col-lg-4 -->
				    </div><!-- /.row -->
			  </div>
			  
			  <hr class="my-4">
			  <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
			  <a class="btn btn-primary btn-lg" href="#" role="button">Learn more</a>
		</div>
	</div>
	
<br />
<br />
<br />
<br />
<br />
<div>
	<c:import url="Footer.jsp"></c:import>
</div>


<script type="text/javascript">
$(document).ready(function()
{
	$("#searchAddress").click(function()
	{
		var gu = $("#gu").val();
		var dong = $("#dong").val();
		
		location.href = "<%=cp%>/cat?gu=" + gu + "&dong=" + dong;
	});	
});


</script>
</body>
</html>