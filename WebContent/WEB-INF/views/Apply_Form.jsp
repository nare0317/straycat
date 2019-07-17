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
<title>입양신청 페이지</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/apply_form.css" >

<!-- JS 파일 -->
<script src="<%=cp%>/js/view/miss_write.js"></script>

</head>
<body>

	<!-- ★★★★★메뉴바★★★★★ -->
	<c:import url="Menu.jsp"></c:import>

	<!-- ★★★★★헤더 + breadcrumbs★★★★★ -->
	<section id="header" class="container ">

		<div id="header-title">
			<h2 id="title">
				입양신청<span id="sub-title">신청서 작성</span>
			</h2>
		</div>

		<div id="breadcrumbs">
			<ul>
				<li class="list-inline-item"><a class="text-dark"
					href="<%=cp%>/main"><i class="fas fa-home"></i></a> <span
					class="breadcrumb-divider">></span></li>
				<li class="list-inline-item"><a class="text-dark"
					href="<%=cp%>/adopt">입양</a> <span class="breadcrumb-divider">></span>
				</li>
				<li class="list-inline-item"><a class="text-dark" href="#">입양모집글</a>
					<span class="breadcrumb-divider">></span></li>
				<li class="list-inline-item"><span>입양신청서 작성</span></li>
			</ul>
		</div>

	</section>

	<!-- ★★★★★내용★★★★★ -->
	<section class="content container">
		<div class="container" id="container">

			<form action="<%=cp %>/adopt/apply" method="get"
				class="needs-validation" novalidate>

				<div class="alert alert-warning fade in">
					<p>다음의 경우에는 입양이 어렵습니다.</p>
					<ul class="" style="padding-left: 15px;">
						<li>가정으로 입양이 아닌 경우 (ex)공장, 회사, 군부대, 농장, 식당 등)</li>
						<li>5마리 이상의 동물을 한꺼번에 키우고 있는 경우.(상담후 입양이 가능 할 수 있습니다.)</li>
						<li>미취학 아동의 자녀가 3명 이상이거나 5세 이하의 아이가 2명 이상인 경우.</li>
						<li>가족 구성원 전체의 동의를 얻지 않은 경우나 미성년자의 입양신청</li>
						<li>외국으로 입양을 원하거나 한국에 거주하는 외국인.(상담후 입양이 가능 할 수 있습니다.)</li>
						<li>가족구성원 중 동물에 대한 알레르기나 우울증 등의 질환으로 치료를 받고있는 경우.(상담후 입양이 가능
							할 수 있습니다.)</li>
						<li>70세 이상 혼자 거주하고 있는 경우</li>
					</ul>
				</div>


				<!--------------------------- 선택형 질문 --------------------------->
				<h4 style="font-weight: bold;">선택형 질문</h4>
				<hr>

				<div class="col-12">

					<!-- 입양모집글 코드(hidden) -->
					<input type="hidden" name="adt_code" value="${adt_code }">
					
					<!-- 신청자 아이디(hidden) -->
            		<input type="hidden" id="user_id" name="user_id" value="${user.ID }">
            		
					<!-- 이름 -->
					<div class="form-group row">
						<label for="name" class="col-sm-2 col-form-label">이름</label>
						<div class="col-sm-4">
							<p>${user.USER_NAME }</p>
						</div>
					</div>


					<!-- 성별 -->
					<div class="form-group row">
						<label for="adt_gender" class="col-sm-2 col-form-label">성별</label>

						<div class="col-sm-10" id="yesno2">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="female" name="adt_gender" value="ADG2"
									class="custom-control-input" required> <label
									class="custom-control-label" for="female">여성</label>
							</div>

							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="male" name="adt_gender" value="ADG1"
									class="custom-control-input" required> <label
									class="custom-control-label" for="male">남성</label>
							</div>
						</div>

					</div>


					<!-- 연령대 -->
					<div class="form-group row">
						<label for="adt_age" class="col-sm-2 col-form-label">연령대</label>
						<div class="col-sm-3">
							<select class="custom-select" id="adt_age" name="adt_age" required>
								<option value="">선택</option>
								<option value="ADA1">10대</option>
								<option value="ADA2">20대</option>
								<option value="ADA3">30대</option>
								<option value="ADA4">40대</option>
								<option value="ADA5">50대 이상</option>
							</select>
						</div>
					</div>

					<!-- 주거형태 -->
					<div class="form-group row">
						<label for="adt_residence" class="col-sm-2 col-form-label">주거형태</label>
						<div class="col-sm-6">
							<select class="custom-select" id="adt_residence" name="adt_residence" required>
								<option value="">선택</option>
								<option value="ADRS1">아파트</option>
								<option value="ADRS2">단독주택</option>
								<option value="ADRS3">다가구주택</option>
								<option value="ADRS4">공동주택</option>
							</select>
						</div>
					</div>

					<!-- 고양이 길러본 경험 -->
					<div class="form-group row">
						<label for="adt_cat_exp" class="col-sm-2 col-form-label">고양이<br>길러본
							경험
						</label>

						<div class="col-sm-10" id="yesno2">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="yes-exp" name="adt_cat_exp" value="RT1"
									class="custom-control-input" required> <label
									class="custom-control-label" for="yes-exp">있음</label>
							</div>

							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="no-exp" name="adt_cat_exp" value="RT2"
									class="custom-control-input" required> <label
									class="custom-control-label" for="no-exp">없음</label>
							</div>
						</div>

					</div>


					<!-- 직업구분 -->
					<div class="form-group row">
						<label for="adt_job" class="col-sm-2 col-form-label">직업구분</label>

						<div class="col-sm-10 m7">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADJ2" name="adt_job" value="ADJ2"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADJ2">학생</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADJ3" name="adt_job" value="ADJ4"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADJ3">직장인</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADJ4" name="adt_job" value="ADJ4"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADJ4">기타</label>
							</div>
						</div>

					</div>

					<!-- 결혼여부 -->
					<div class="form-group row">
						<label for="adt_marriage" class="col-sm-2 col-form-label">결혼여부</label>

						<div class="col-sm-10" id="yesno2">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="marry_no" name="adt_marriage" value="RT2"
									class="custom-control-input" required> <label
									class="custom-control-label" for="marry_no">미혼</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="marry_yes" name="adt_marriage" value="RT1"
									class="custom-control-input" required> <label
									class="custom-control-label" for="marry_yes">기혼</label>
							</div>
						</div>

					</div>


					<!-- 가족 구성원 수 -->
					<div class="form-group row">
						<label for="adt_family_num" class="col-sm-2 col-form-label">가족<br>구성원
							수
						</label>

						<div class="col-sm-10" id="yesno">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADFN1" name="adt_family_num" value="ADFN1"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADFN1">1명</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADFN2" name="adt_family_num" value="ADFN2"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADFN2">2명</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADFN3" name="adt_family_num" value="ADFN3"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADFN3">3명 이상</label>
							</div>
						</div>

					</div>


					<!-- 가족내 동의여부 -->
					<div class="form-group row">

						<label for="adt_family_consent" class="col-sm-2 col-form-label">가족 내<br>동의
							여부
						</label>

						<div class="col-sm-10" id="yesno">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADC1" name="adt_family_consent" value="ADC1"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADC1">동의</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADC2" name="adt_family_consent" value="ADC2"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADC2">일부 동의</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADC3" name="adt_family_consent" value="ADC3"
									class="custom-control-input" required> <label
									class="custom-control-label" for="ADC3">비동의</label>
							</div>
						</div>

					</div>


					<!-- 거주지 반려동물 가능여부 -->
					<div class="form-group row">

						<label for="adt_allow" class="col-sm-2 col-form-label">거주지<br>반려동물<br>가능여부
						</label>

						<div class="col-sm-10" id="yesno1">

							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="adt_allow" name="adt_allow" value="RT1"
									class="custom-control-input" required> <label
									class="custom-control-label" for="adt_allow">가능</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="adt_allow" name="adt_allow" value="RT2"
									class="custom-control-input" required> <label
									class="custom-control-label" for="adt_allow">불가능</label>
							</div>
						</div>

					</div>

					<!-- 키우고 있는 반려동물 -->
					<div class="form-group row">
						
						<!-- 반려동물 수 -->
						<label for="adt_pet_num" class="col-sm-2 col-form-label">키우는<br>반려동물
						</label>
						<div class="col-sm-10" id="yesno">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADPN1"name="adt_pet_num" value="ADPN1"
								class="custom-control-input"  required>
								<label class="custom-control-label" for="ADPN1">없음</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADPN2"name="adt_pet_num" value="ADPN2"
								class="custom-control-input" required>
								<label class="custom-control-label" for="ADPN2">1마리</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADPN3"name="adt_pet_num" value="ADPN3"
								class="custom-control-input" required>
								<label class="custom-control-label" for="ADPN3">2마리</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADPN4" name="adt_pet_num" value="ADPN4"
								class="custom-control-input" required>
								<label class="custom-control-label" for="ADPN4">3마리
									이상</label>
							</div>
						</div>

						<!-- 반려동물 설명 -->
						<div class="col-sm-7 offset-sm-2">
							<input type="text" class="form-control" id="adt_pet_text" name="adt_pet_text"
							placeholder="키우는 반려동물 종류/나이/성별/중성화여부" maxlength="200">
						</div>

					</div>


					<!-- 돌볼 수 있는 시간 -->
					<div class="form-group row">
						<label for="adt_care_time" class="col-sm-2 col-form-label">하루평균<br>돌봄시간
						</label>
						<div class="col-sm-10" id="yesno">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADCT1" value="ADCT1"  required
									name="adt_care_time" class="custom-control-input">
								<label class="custom-control-label" for="ADCT1">1시간
									이하</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADCT2" value="ADCT2" required
									name="adt_care_time" class="custom-control-input">
								<label class="custom-control-label" for="ADCT2">1-3시간</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADCT3" value="ADCT3" required
									name="adt_care_time" class="custom-control-input">
								<label class="custom-control-label" for="ADCT3">3-5시간</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="ADCT4" value="ADCT4"  required
									name="adt_care_time" class="custom-control-input">
								<label class="custom-control-label" for="ADCT4">5시간
									이상</label>
							</div>
						</div>
					</div>


					<!-- 알러지 유무  -->
					<div class="form-group row">
						<label for="adt_allergy" class="col-sm-2 col-form-label">알러지<br>유무
						</label>
						<div class="col-sm-10" id="yesno">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="allergy-yes" value="RT1"  required
									name="adt_allergy" class="custom-control-input">
								<label class="custom-control-label" for="allergy-yes">있음</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="allergy-no" value="RT2"  required
									name="adt_allergy" class="custom-control-input">
								<label class="custom-control-label" for="allergy-no">없음</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="allergy-notknow" value="RT3"  required
									name="adt_allergy" class="custom-control-input">
								<label class="custom-control-label" for="allergy-notknow">모름</label>
							</div>
						</div>
					</div>

					
					<!-- 파양경험 -->
					<div class="form-group row">
						<label for="adt_abandon" class="col-sm-2 col-form-label">입양동물<br>파양경험
						</label>
						<div class="col-sm-10" id="yesno">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="abandon-yes" value="RT1"  required
									name="adt_abandon" class="custom-control-input">
								<label class="custom-control-label" for="abandon-yes">있음</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="abandon-no" value="RT2"  required
									name="adt_abandon" class="custom-control-input">
								<label class="custom-control-label" for="abandon-no">없음</label>
							</div>
						</div>
					</div>

					<!-- 입양경험 -->
					<div class="form-group row">
						<label for="adt_adoption" class="col-sm-2 col-form-label">반려동물<br>입양경험
						</label>
						<div class="col-sm-10" id="yesno">
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="adoption-yes" value="RT1"  required
									name="adt_adoption" class="custom-control-input">
								<label class="custom-control-label" for="adoption-yes">있음</label>
							</div>
							<div class="custom-control custom-radio custom-control-inline">
								<input type="radio" id="adoption-no"  value="RT2"  required
									name="adt_adoption" class="custom-control-input">
								<label class="custom-control-label" for="adoption-no">없음</label>
							</div>
						</div>
					</div>
				</div>

				<br>
				<br>
				
				<!--------------------------- 선택형 질문 --------------------------->
				<h4 style="font-weight: bold;">서술형 질문</h4>
				<hr>
				<div class="form-group">
					<span class="input-group-text col-form-label">1. 입양을 원하는 가장 큰 이유는 무엇인가요?</span>
					<textarea class="form-control" id="a1" name="a1" rows="7" 
						maxlength="1000"  placeholder="내용을 입력해주세요." required></textarea>
				</div>

				<br>

				<div class="form-group">
					<span class="input-group-text col-form-label">2. 입양을 결정하기까지 얼마나 오랜 시간
						고민하셨나요?</span>
					<textarea class="form-control" id="a2" name="a2" rows="7" 
						maxlength="1000"  placeholder="내용을 입력해주세요." required></textarea>
				</div>

				<br>

				<div class="form-group">
					<span class="input-group-text col-form-label">3. 현재 다른 반려동물을 양육
						중인 경우, 합사는 적어도 2주 정도 시간을 갖고 천천히 진행해야 합니다. <br>&nbsp;&nbsp;&nbsp;합사가
						필요한 경우 간단한 합사 계획에 대해서 알려주세요. (ex. 2주 간 격리 후 천천히 대면 예정)</span>
					<textarea class="form-control" id="a3" name="a3" rows="7" 
						maxlength="1000"  placeholder="내용을 입력해주세요." required></textarea>
				</div>
				
				<!--------------------------- 임시저장 / 작성완료 버튼 --------------------------->
				<div id="button-section" class="text-center">
					<button id="save-btn" type="button" class="btn btn-secondary">임시저장</button>
					<button id="submit-btn" type="submit" class="btn btn-primary">작성완료</button>
				</div>

			</form>
		</div>
	</section>

	<!-- ★★★★★ 푸터 ★★★★★ -->
	<c:import url="Footer.jsp"></c:import>

</body>
</html>