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
	<title>입양신청</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/adoption_registration.css">
	<script type="text/javascript" src="<%=cp%>/js/view/adoption_registration.js"></script>
</head>
<body>


<c:import url="Menu.jsp"></c:import>

	<div class="container m30">
		<h1>
			입양<span>모집글 작성</span>
		</h1>
		<span>Lorem ipsum dolor sit amet, consectetur adipisicing
			elit. Numquam dolor reiciendis aliquid rem atque accusamus ab
			voluptate quam aspernatur magnam maxime nisi voluptas unde nesciunt
			dicta aliquam quas quasi quaerat! </span>
		<hr>
		<br> <br>



		<div class="row">
			<div class="col-2 text-right">
			<h1>고양이<br>정보</h1>
			</div>

			<div class="col-3 text-center">
				<img src="img/straycat.jpg" class="img1"><br> <br>
				<label class="btn btn-primary"> 사진첨부<input type="file" class="form-control-file" id="imgUpload"></label>

			</div>
			<div class="col-7">
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="colFormLabel" placeholder="냥아취">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">지역</label>
					<div class="col-sm-2">서울시</div>
					<div class="col-sm-3">
						<select class="custom-select" id="guSelect">
							<option selected>구 선택</option>
							<option value="1">마포구</option>
							<option value="2">영등포구</option>
							<option value="3">서대문구</option>
						</select>
					</div>
					<div class="col-sm-5">
						<select class="custom-select" id="dongSelect">
							<option selected>동 선택</option>
							<option value="1">연희동</option>
							<option value="2">연남동</option>
							<option value="3">서교동</option>
						</select>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">구조일시</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="date" name="date" placeholder="구조일시">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">종류</label>
					<div class="col-sm-10">
						<select class="custom-select" class="jong">
							<option selected>종 선택</option>
							<option value="1">코리안숏헤어</option>
							<option value="2">품종</option>
						</select>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label"></label>
					<div class="col-sm-10">
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadioInline1"	name="customRadioInline1" class="custom-control-input">
							<label class="custom-control-label" for="customRadioInline1">1</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadioInline2"	name="customRadioInline1" class="custom-control-input">
							<label class="custom-control-label" for="customRadioInline2">2</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadioInline3"	name="customRadioInline1" class="custom-control-input">
							<label class="custom-control-label" for="customRadioInline3">3</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadioInline4"	name="customRadioInline1" class="custom-control-input">
							<label class="custom-control-label" for="customRadioInline4">4</label>
						</div>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">나이</label>
					<div class="col-sm-10">
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadio1" name="customRadio1" class="custom-control-input">
							<label class="custom-control-label" for="customRadio1">아기묘</label>
						</div>
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadio2" name="customRadio1" class="custom-control-input">
							<label class="custom-control-label" for="customRadio2">성묘</label>
						</div>
						<div class="custom-control custom-control-inline">
							<input type="text" class="form-control" id="age" name="age" placeholder="예) 1개월">
						</div>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">성별</label>
					
					<div class="col-sm-10">
					
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadio3" name="customRadio2" class="custom-control-input">
							<label class="custom-control-label" for="customRadio3">암컷</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadio4" name="customRadio2" class="custom-control-input">
							<label class="custom-control-label" for="customRadio4">수컷</label>
						</div>
						
						<div class="custom-control custom-radio custom-control-inline">
							<input type="radio" id="customRadio5" name="customRadio2" class="custom-control-input">
							<label class="custom-control-label" for="customRadio5">알수없음</label>
						</div>
						
					</div>
					
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">분류</label>

					<div class="col-sm-10">
						<div class="custom-control custom-checkbox custom-control-inline">
							<input type="checkbox" id="jb-checkbox1"	name="jb-checkbox" class="custom-control-input">
						    <label class="custom-control-label" for="jb-checkbox1">긴급입양</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
							<input type="checkbox" id="jb-checkbox2"	name="jb-checkbox" class="custom-control-input">
						    <label class="custom-control-label" for="jb-checkbox2">분실의심</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
							<input type="checkbox" id="jb-checkbox3"	name="jb-checkbox" class="custom-control-input">
						    <label class="custom-control-label" for="jb-checkbox3">치료필요</label>
						</div>
						<div class="custom-control custom-checkbox custom-control-inline">
							<input type="checkbox" id="jb-checkbox4"	name="jb-checkbox" class="custom-control-input">
						    <label class="custom-control-label" for="jb-checkbox4">장애</label>
						</div>					
					</div>
					
				</div>


				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-4 col-form-label">고양이
						특이사항</label>
					<div class="col-sm-8">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3"></textarea>
					</div>
				</div>
				<br>
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-4 col-form-label">고양이
						건강상태</label>
					<div class="col-sm-8">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3"></textarea>
					</div>
				</div>
				<br>
				
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-2 text-right">
				<h1>
					입양<br>보내는분<br>정보
				</h1>
			</div>
			<div class="col-3"></div>
			<div class="col-7">
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="name" placeholder="임나래">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">연락처</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="tel" placeholder="010-1234-5678">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">이메일</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="email" placeholder="test123@naver.com">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">입양보내는<br>이유</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="reason" rows="3"></textarea>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">책임비</label>
					<div class="col-sm-10">
						<input type="email" class="form-control" id="pay" placeholder="책임비가 있다면 적어주세요.">
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-4 col-form-label">사진첨부</label>
					<div class="col-sm-8">1 2 3 4 5</div>
				</div>
				
			</div>
		</div>
		<hr>
		<div class="row">
			<div class="col-2 text-right row">
				<h1> 
					서술형 질문
				</h1>
			<div class="row">
				<div class="collapse" id="collapseExample">
				<div class="card card-body">Anim pariatur cliche
					reprehenderit, enim eiusmod high life accusamus terry richardson
					ad squid. Nihil anim keffiyeh helvetica, craft beer labore wes
					anderson cred nesciunt sapiente ea proident.</div>
			</div>
			</div>
				
				
			</div>
			<div class="col-3"></div>
			
			<div class="col-7">
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">질문1</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">질문2</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
					</div>
				</div>
				
				<div class="form-group row">
					<label for="colFormLabel" class="col-sm-2 col-form-label">질문3</label>
					<div class="col-sm-10">
						<textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
					</div>
				</div>
				
			</div>
	</div>
	<hr>
		<div class="row">
			<div class="col-2 text-right">
				<h1>
					입양<br>매칭을<br>위한<br>설문
				</h1>
			</div>
			<div class="col-3"></div>
			<div class="col-7"></div>
		</div><br>
		
			<button type="button" class="btn btn-primary">임시저장</button>
			<button type="button" class="btn btn-primary">작성완료</button>
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