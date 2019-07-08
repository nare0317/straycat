<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>길고양이 등록 페이지</title>
	<c:import url="Head.jsp"></c:import>

	<!-- 길냥이 등록 페이지 자바스크립트, CSS -->
	<script type="text/javascript" src="<%=cp %>/js/view/straycatregistration.js"></script>
	<link rel="stylesheet" href="<%=cp %>/css/view/straycatregistration.css">
</head>
<body>


<c:import url="Menu.jsp"></c:import>

<div class="container header">

	<h1>등록<span>길냥이 등록 신청</span></h1>
	<span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam dolor reiciendis aliquid rem atque accusamus ab voluptate quam aspernatur magnam maxime nisi voluptas unde nesciunt dicta aliquam quas quasi quaerat!
	</span>
	<hr><br><br>
	
	<form action="StrayCatManage.jsp" method="post" id="catRegForm">
	<div class="row">
	    <div class="col-5 text-center">
		<img src="img/straycat.jpg" class="img1"><br><br>

		<label class="btn btn-primary"> 사진첨부<input type="file" class="form-control-file" id="catRepImg"></label>

		</div>
	    <div class="col-7">
		 <div class="form-group row">
		    <label for="colFormLabel" class="col-sm-2 col-form-label" >이름</label>
		    <div class="col-sm-10">
		      <input type="email" class="form-control" id="inputName" placeholder="냥아취">
		      <span id="nameCount">이름은 7자 이하로 입력해주세요.</span>
		    </div>
		  </div><br>
		 <div class="form-group row">
		    <label for="colFormLabel" class="col-sm-2 col-form-label">지역</label>
		    <div class="col-sm-2">
		      서울시
		    </div>
		    <div class="col-sm-3">
		      <select class="custom-select" id="catGu" class="select1">
				  <option selected>구 선택</option>
				  <option value="1">마포구</option>
				  <option value="2">영등포구</option>
				  <option value="3">서대문구</option>
				</select>
		    </div>
		    <div class="col-sm-5">
		       <select class="custom-select" class="select1" id="catDong">
				  <option selected>동 선택</option>
				  <option value="1">연희동</option>
				  <option value="2">연남동</option>
				  <option value="3">서교동</option>
				</select>
		    </div>
		  </div><br>
		 <div class="form-group row">
		    <label for="colFormLabel" class="col-sm-2 col-form-label">종류</label>
		    <div class="col-sm-10">
		      <select class="custom-select" id="catType">
				  <option selected>종 선택</option>
				  <option value="1">코리안숏헤어</option>
				  <option value="2">품종</option>
				</select>
		    </div>
		  </div><br>
		 <div class="form-group row">
		    <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
		    <div class="col-sm-10">
		     <div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline1" name="customRadioInline1" class="custom-control-input">
			  <label class="custom-control-label" for="customRadioInline1">1</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline2" name="customRadioInline1" class="custom-control-input">
			  <label class="custom-control-label" for="customRadioInline2">2</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline3" name="customRadioInline1" class="custom-control-input">
			  <label class="custom-control-label" for="customRadioInline3">3</label>
			</div>
			<div class="custom-control custom-radio custom-control-inline">
			  <input type="radio" id="customRadioInline4" name="customRadioInline1" class="custom-control-input">
			  <label class="custom-control-label" for="customRadioInline4">4</label>
			</div>
		    </div>
		  </div><br>
		 <div class="form-group row">
		    <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 특이사항</label>
		    <div class="col-sm-8">
		      <textarea class="form-control resize" id="catEtc1" rows="3"></textarea>
		      <div ><span id="counter1">0</span> / 500</div>
		    </div>
		  </div><br>
		 <div class="form-group row">
		    <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 건강상태</label>
		    <div class="col-sm-8">
		      <textarea class="form-control resize" id="catEtc2" rows="3"></textarea>
		      <div ><span id="counter2">0</span> / 500</div>
		    </div>
		  </div><br>
		 <div class="form-group row">
		    <label for="colFormLabel" class="col-sm-4 col-form-label">사진첨부</label>
		    <div class="col-sm-8">
		     1 	2	3	5
		    </div>
		    <div class="row">
		       	 	<span class="err">필수 항목이 입력되지 않았습니다.</span>
		       	</div>
		  </div><br>
		<button type="button" class="btn btn-primary" id="catRegistBtn">등록하기</button>
		</div>
	</div>
	</form>
</div>



<br />
<br />
<br />
<br />
<br />
<div>
	<c:import url="Footer.jsp"></c:import>
</div>


</body>
</html>