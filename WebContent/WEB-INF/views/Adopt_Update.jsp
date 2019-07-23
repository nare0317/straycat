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
<title>입양게시글 수정</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/miss_write.css">

<!-- JS 파일 -->
<script src="<%=cp %>/js/view/gudong.js"></script>
<script src="<%=cp %>/js/view/adopt_update.js"></script>
<script src="<%=cp %>/js/view/adopt_write.js"></script>

<!-- jQuery DatePicker UI -->
<link rel="stylesheet" href="<%=cp%>/css/jquery-ui.css">
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>

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
      	}// end if
    }
	
	
	$("#submit-btn").click(function()
	{
		$("#updateForm").submit();
	});
	
});
</script>


</head>
<body>

   <!-- ★★★★★메뉴바★★★★★ -->
   <c:import url="Menu.jsp"></c:import>
      
   <!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

   <section id="header" class="container ">
   
      <div id="header-title">
         <h2 id="title">입양<span id="sub-title">게시글수정</span></h2>
      </div>
      
      <div id="breadcrumbs">
         <ul>
            <li class="list-inline-item">
               <a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <a class="text-dark" href="#">입양</a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <span>게시글수정</span>
            </li>
         </ul>
      </div>
      
   </section>
      
   <!-- ★★★★★내용★★★★★ -->
   <section class="content container">
      
      <form action="<%=cp %>/adopt_update" method="post" 
      id="updateForm" class="needs-validation" enctype="multipart/form-data" novalidate>
      
      
         <!-- ★★★★ 고양이 정보 입력 ★★★★  -->
         <div class="cat-info row">
         
            <!------------------ 왼쪽 등록 폼 이름 ----------------->
            <div class="col-2 text-right">
               <h1>고양이<br>정보</h1>
            </div>
            
            <!---------------- 고양이 대표 이미지 첨부 --------------->
            <div class="col-3 text-center">
             	<c:if test="${post.CAT_REP_IMAGE != null }">
					<img id="catPicture" src="<%=cp %>${post.CAT_REP_IMAGE }" style="width: 200px; height:200px ">						
				</c:if>
				<c:if test="${post.CAT_REP_IMAGE == null }">
					<img id="catPicture" src="<%=cp %>/img/defaultCat.png" style="width: 200px; height:200px ">
				</c:if>
              
               <label class="btn btn-primary"> 사진수정<input type="file" class="form-control-file" 
               id="uploadPicture" style="display: none;" accept=".jpeg, .png, .jpg" name="file"></label>

			   <!-- 원래 이미지 파일값(hidden) -->
			   <input type="hidden" value="${post.CAT_REP_IMAGE }" name="originalFile">

            </div>
            
            <!------------------ 고양이정보 등록 폼 ----------------->
            <div class="col-7">
               
               <!-- 게시글 코드 (hidden) -->
               <input type="hidden" id="adt_code" name="adt_code" value="${post.ADT_CODE }">
               
               <!-- 고양이 이름 -->
               <div class="form-group row">
                  <label for="cat-name" class="col-sm-2 col-form-label">이름</label>
                  <div class="col-sm-4">
                     <input type="text" class="form-control" id="cat_name" name="cat_name"
                    value="${post.CAT_NAME }" required>
                    </div>
                </div>
                
               <!-- 구조 지역 -->
               <div class="form-group row">
                  <label for="location" class="col-sm-2 col-form-label">지역</label>
                  <label id="seoul" class="col-sm-2 col-form-label">서울시</label>
                  <div class="col-sm-3 gu-select">
                  	 <!-- 구 선택값 hidden 엘리먼트 -->
					 <input type="hidden" id="gu_selected" name="gu_selected" value="${post.GU }">                     
                     
                     <select id="gu" name="gu" class="custom-select" required >   
                        <option value="">구 선택</option>
                        <c:forEach var="gu" items="${gu }">
							<option value="${gu.GU }">${gu.GU }</option>
						</c:forEach>
                     </select>
                  </div>
                  <div class="col-sm-3">
                  	  <!-- 동 선택값 hidden 엘리먼트 -->
                  	  <input type="hidden" id="dong_selected" name="dong_selected" value="${post.DONG }">                     
                     
                     <select class="custom-select" id="dong" name="dong">
						<option value="">동 선택</option>
					</select>
                  </div>
               </div>
               	
               <!-- 구조일시 -->
               <div class="form-group row">
                  <label for="rsq-date" class="col-sm-2 col-form-label">구조일시</label>
                  <div class="col-sm-4">
                     <input type="text" class="form-control datepicker" id="rsq_date" name="rsq_date" 
                     value="${post.RSQ_DATE }" required>
                  </div>
               </div>
               
               <!-- 고양이 종류 -->
               <div class="form-group row">
                  <label for="cat-species" class="col-sm-2 col-form-label">종류</label>
                  <div class="col-sm-4">
                   <!-- 고양이종류 선택값 hidden 엘리먼트 -->
                   <%-- <c:choose>
                  	 <c:when test="${post.CAT_TYPE eq 'SP1'||'SP2'||'SP3'||'SP4'||'SP5'||'SP6'||'SP7'||'SP8' }">
                  		 <input type="hidden" id="cat_type_selected" name="cat_type_selected" value="1">
                  	 </c:when>
                  	 <c:otherwise>
                  	 	 <input type="hidden" id="cat_type_selected" name="cat_type_selected" value="2">
                  	 </c:otherwise>
                   </c:choose> --%>
                    <input type="hidden" id="cat_type_selected" name="cat_type_selected" value="1">
                  
                     <select class="custom-select" id="cat_type" name="cat_type" required>
                        <option value="" >고양이 종류 선택</option>
                        <option value="1">코리안숏헤어</option>
                        <option value="2">품종</option>
                     </select>
                  </div>
               </div>
               
               <!-- 고양이 상세 종류(+사진) → Ajax 처리필요  -->
               <div class="form-group row">
                 <!--  <label for="colFormLabel" class="col-sm-2 col-form-label"></label> -->
                  <div class="col-sm-10 offset-sm-2">
                     
                     <!-- 고양이종류 선택값 hidden 엘리먼트 -->
                  	 <input type="hidden" id="cat_species_selected" name="cat_species_selected" value="${post.CAT_TYPE_CODE }">                     
                     
                     <!-- 코숏고등어 -->
							<div
								class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
								<label class="image-radio" for="SP2"> <img class="img-responsive"
									src="img/코숏고등어_resize.png" /> <input type="radio" id="SP2"
									name="cat_species" value="SP2" class="custom-control-input"
									required>
								</label>
							</div>
							<!-- 코숏치즈 -->
							<div
								class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
								<label class="image-radio" for="SP1"> <img class="img-responsive"
									src="img/코숏치즈_resize.png" /> <input type="radio" id="SP1"
									name="cat_species" value="SP1" class="custom-control-input"
									required>
								</label>
							</div>
							<!-- 코숏카오스-->
							<div
								class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
								<label class="image-radio" for="SP3"> <img class="img-responsive"
									src="img/코숏카오스_resize.png" /> <input type="radio" id="SP3"
									name="cat_species" value="SP3" class="custom-control-input"
									required>
								</label>
							</div>
						</div>
						<div class="col-sm-10 offset-sm-2">
							<!-- 코숏삼색이 -->
							<div
								class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
								<label class="image-radio" for="SP4"> <img class="img-responsive"
									src="img/코숏삼색이_resize.png" /> <input type="radio" id="SP4"
									name="cat_species" value="SP4" class="custom-control-input"
									required>
								</label>
							</div>
							<!-- 코숏턱시도-->
							<div
								class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
								<label class="image-radio" for="SP5"> <img class="img-responsive"
									src="img/코숏턱시도_resize.png" /> <input type="radio" id="SP5"
									name="cat_species" value="SP5" class="custom-control-input"
									required>
								</label>
							</div>
							<!-- 코숏올블랙 -->
							<div
								class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
								<label class="image-radio" for="SP6"> <img class="img-responsive"
									src="img/코숏올블랙_resize.png" /> <input type="radio" id="SP6"
									name="cat_species" value="SP6" class="custom-control-input"
									required>
								</label>
							</div>
						</div>
					</div>
					<div class="col-sm-10 offset-sm-2">
						<!-- 코숏젖소-->
						<div
							class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
							<label class="image-radio" for="SP7"> <img class="img-responsive"
								src="img/코숏젖소_resize.png" /> <input type="radio" id="SP7"
								name="cat_species" value="SP7" class="custom-control-input"
								required>
							</label>
						</div>
						<!-- 코숏올화이트 -->
						<div
							class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
							<label class="image-radio" for="SP8"> <img class="img-responsive"
								src="img/코숏올화이트_resize.JPG" /> <input type="radio" id="SP8"
								name="cat_species" value="SP8" class="custom-control-input"
								required>
							</label>
						</div>
						<!-- 기타 -->
						<div
							class="col-lg-3 nopad text-center custom-control custom-radio custom-control-inline">
							<label class="image-radio" for="SP17"> <img class="img-responsive"
								src="img/cat_icon2.png" /> <input type="radio" id="SP17"
								name="cat_species" value="SP17" class="custom-control-input"
								required>
							</label>
						</div>
					</div>

               <br>
               
               <!-- 고양이 나이 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">나이</label>
                  
                  <!-- 고양이나이 선택값 hidden 엘리먼트 -->
                  <input type="hidden" id="cat_age_type_selected" name="cat_age_type_selected" 
                  value="${post.CAT_AGE_CODE }">                     
                  
                  
                  <div class="col-sm-10">
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADCA2" name="cat_age_type" value="ADCA2" class="custom-control-input" required>
                        <label class="custom-control-label" for="ADCA2">아기묘</label>
                     </div>
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADCA1" name="cat_age_type" value="ADCA1" class="custom-control-input" required>
                        <label class="custom-control-label" for="ADCA1">성묘</label>
                     </div>
                     <div class="custom-control custom-control-inline col-sm-4">
                        <input type="text" class="form-control" id="cat_age_num" name="cat_age_num"
                        value="${post.CAT_AGE }" maxlength="10" required>
                     </div>
                  </div>
               </div>
               
               <!-- 고양이 성별 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">성별</label>
                  
                  <!-- 고양이성별 선택값 hidden 엘리먼트 -->
                  <input type="hidden" id="cat_sex_selected" name="cat_sex_selected"
                  value="${post.SEX_CODE }">  
                  
                  <div class="col-sm-10">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="female" name="cat_sex" value="CS1" 
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="female">암컷</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="male" name="cat_sex" value="CS2"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="male">수컷</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="dontknow" name="cat_sex" value="CS3"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="dontknow">알수없음</label>
                     </div>
                     
                  </div>
                  
               </div>
               
               <!-- 입양 분류 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">분류</label>
                  
                  <!-- 입양분류 선택값 hidden 엘리먼트 -->
                  <input type="hidden" id="adt_type_selected" name="adt_type_selected"
                  value="${post.ADT_TYPE_CODE }">  
                  
                  <div class="col-sm-10">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADT1" name="adt_type" value="ADT1"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADT1">긴급입양</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADT2" name="adt_type" value="ADT2"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADT2">분실의심</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADT3" name="adt_type" value="ADT3"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADT3">치료필요</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADT4" name="adt_type" value="ADT4"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADT4">장애있음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADT5" name="adt_type" value="ADT5"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADT5">해당없음</label>
                     </div>
                     
                  </div>
                  
               </div>
               
               <!-- 특이사항 -->   
               <div class="form-group row">
                  <label for="cat_ect1" class="col-sm-2 col-form-label">고양이<br>
                     특이사항</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="cat_ect1" name="cat_ect1"
                     rows="7" maxlength="1000" required>${post.CAT_ECT1 }</textarea>
                  </div>
               </div>
               <br>
               
               <!-- 건강사항 -->
               <div class="form-group row">
                  <label for="cat_ect2" class="col-sm-2 col-form-label">건강사항</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="cat_ect2" name="cat_ect2"
                     rows="7" maxlength="1000" required>${post.CAT_ECT2 }</textarea>
                  </div>
               </div>
               <br>
               
            </div>
            
         </div><!-- 고양이 정보입력 끝  -->
         
         <hr>
         
         <!-- ★★★★ 작성자 정보 입력 ★★★★  -->
         <div class="row">
         
            <!------------------ 왼쪽 등록 폼 이름 ----------------->
            <div class="col-md-3 text-right">
               <h1>
                  입양<br>보내는 분<br>정보
               </h1>
            </div>
            
            <!------------------ 작성자정보 등록 폼 ----------------->
            <div class="col-md-7 offset-md-2">
            
            	<!-- 아이디(hidden) -->
            	<input type="hidden" id="user_id" name="user_id" value="${sessionScope.user_id }">
            
               <!-- 이름(수정X)  -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
                  <div class="col-sm-3">
                     <input type="text" readonly="readonly" class="form-control" id="name" name="name" 
                     placeholder="${post.USER_NAME }">
                  </div>
               </div>
               
               <!-- 연락처 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">연락처</label>
                  <div class="col-sm-5">
                     <input type="text" class="form-control" id="tel" name="tel" 
                     value="${post.USER_TEL}">
                  </div>
               </div>
               
               <!-- 이메일 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">이메일</label>
                  <div class="col-sm-6">
                     <input type="email" class="form-control" id="email" name="email" 
                     value="${post.USER_EMAIL }">
                  </div>
               </div>
               
               <!-- 입양보내는 이유 -->   
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">입양보내는 이유</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="adt_reason" name="adt_reason"
                     rows="7" maxlength="1000" required>${post.ADT_REASON }</textarea>
                  </div>
               </div>
               <br>
               
            </div>
         </div><!-- 작성자 정보입력 끝 -->
         
          <hr>
         
         <!-- ★★★★ 설문 질문 ★★★★  -->
         <div class="row">
         
            <!------------------ 왼쪽 등록 폼 이름 ----------------->
            <div class="col-md-3 text-right">
               <h1>
                  입양매칭을<br>위한 설문
               </h1>
            </div>
            
            <!------------------ 작성자정보 등록 폼 ----------------->
            <div class="col-md-7 offset-md-2">
            
            <!-- 고양이 길러본 경험 -->
               <div class="form-group row">
                  <label for="adt_cat_exp" class="col-sm-4 col-form-label">고양이 길러본 경험</label>
                  
                  <!-- 고양이 길러본 경험 선택값 hidden 엘리먼트 -->
                  <input type="hidden" id="cat_exp_selected" name="cat_exp_selected"
                  value="${post.CAT_EXP }"> 
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="RT3" name="adt_cat_exp" value="RT3"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="RT3">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="RT1" name="adt_cat_exp" value="RT1"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="RT1">있음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="RT2" name="adt_cat_exp" value="RT2"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="RT2">없음</label>
                     </div>
                     
                  </div>
               </div>
               
               <!-- 직업 구분 -->
               <div class="form-group row">
                  <label for="adt_job" class="col-sm-4 col-form-label">직업구분</label>
                  
                  <!-- 직업 선택값 hidden 엘리먼트 -->
                  <input type="hidden" id="job_selected" name="job_selected"
                  value="${post.JOB }"> 
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADJ1" name="adt_job" value="ADJ1"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADJ1">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADJ2" name="adt_job" value="ADJ2"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADJ2">학생</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADJ3" name="adt_job" value="ADJ3"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADJ3">직장인</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADJ4" name="adt_job" value="ADJ4"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADJ4">없음</label>
                     </div>
                     
                  </div>
               </div>
               
               
               <!-- 결혼여부 -->
               <div class="form-group row">
                  <label for="adt_marriage" class="col-sm-4 col-form-label">결혼여부</label>
                  
                  <!-- 직업 선택값 hidden 엘리먼트 -->
                  <input type="hidden" id="marriage_selected" name="marriage_selected"
                  value="${post.MARRIAGE }"> 
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="marry_nomatter" name="adt_marriage" value="RT3"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="marry_nomatter">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="marry_no" name="adt_marriage" value="RT2"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="marry_no">미혼</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="marry_yes" name="adt_marriage" value="RT1"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="marry_yes">기혼</label>
                     </div>
                     
                  </div>
               </div>
               
               
               <!-- 가족 구성원 수(본인포함) -->
               <div class="form-group row">
                  <label for="adt_family_num" class="col-sm-4 col-form-label">가족 구성원 수(본인포함)</label>
                  
                  <!-- 가족 구성원 수 선택값 hidden 엘리먼트 -->
                  <input type="hidden" id="family_num_selected" name="family_num_selected"
                  value="${post.FAMILY_NUM }"> 
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADFN1" name="adt_family_num" value="ADFN1"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADFN1">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADFN2" name="adt_family_num" value="ADFN2"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADFN2">1명</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADFN3" name="adt_family_num" value="ADFN3"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADFN3">2명</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="ADFN4" name="adt_family_num" value="ADFN4"
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="ADFN4">3명</label>
                     </div>
                     
                  </div>
               </div>
               
            </div>
         </div><!-- 작성자 정보입력 끝 -->
            
         <!-- ★★★★ 임시저장 / 작성완료 버튼 ★★★★  -->
         <div id="button-section" class="text-center">
            <input id="back-btn" type="button" class="btn btn-secondary" value="취소"
            onclick="location.href='<%=cp%>/adopt_read?adt_code=${post.ADT_CODE}'">
            <button id="submit-btn" type="submit" class="btn btn-primary">수정완료</button>
         </div>
         
      </form>

   </section>
   
   <!-- ★★★★★ 푸터 ★★★★★ -->
   <c:import url="Footer.jsp"></c:import>

</body>
</html>