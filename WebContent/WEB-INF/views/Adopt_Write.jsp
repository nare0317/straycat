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
<title>입양게시글작성</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/miss_write.css">

<!-- JS 파일 -->
<script src="<%=cp%>/js/view/miss_write.js"></script>


<link rel="stylesheet" href="<%=cp%>/css/jquery-ui.css">
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>

</head>
<body>

   <!-- ★★★★★메뉴바★★★★★ -->
   <c:import url="Menu.jsp"></c:import>
      
   <!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

   <section id="header" class="container ">
   
      <div id="header-title">
         <h2 id="title">입양<span id="sub-title">게시글작성</span></h2>
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
               <span>게시글작성</span>
            </li>
         </ul>
      </div>
      
   </section>
      
   <!-- ★★★★★내용★★★★★ -->
   <section class="content container">
      
      <form action="<%=cp %>/adopt_write" method="get"
            class="needs-validation" novalidate>
      
         <!-- ★★★★ 고양이 정보 입력 ★★★★  -->
         <div class="cat-info row">
         
            <!------------------ 왼쪽 등록 폼 이름 ----------------->
            <div class="col-2 text-right">
               <h1>고양이<br>정보</h1>
            </div>
            
            <!---------------- 고양이 대표 이미지 첨부 --------------->
            <div class="col-3 text-center">
               <img src="img/straycat.jpg" style="width: 200px;"><br> <br>
               <label class="btn btn-primary"> 사진첨부<input type="file"
                  class="form-control-file" id="exampleFormControlFile1"
                  style="display: none;"></label>
            </div>
            
            <!------------------ 고양이정보 등록 폼 ----------------->
            <div class="col-7">
               
               <!-- 고양이 이름 -->
               <div class="form-group row">
                  <label for="cat-name" class="col-sm-2 col-form-label">이름</label>
                  <div class="col-sm-4">
                     <input type="text" class="form-control" id="cat_name" name="cat_name"
                     placeholder="ex.야옹이"  maxlength="10" required>
                    </div>
                </div>
                
               <!-- 실종 지역 -->
               <div class="form-group row">
                  <label for="location" class="col-sm-2 col-form-label">지역</label>
                  <label id="seoul" class="col-sm-2 col-form-label">서울시</label>
                  <div class="col-sm-3 gu-select">
                     <select id="gu" name="gu" class="custom-select" required>   
                        <option value="">구 선택</option>
                        <option value="1">마포구</option>
                        <option value="2">영등포구</option>
                        <option value="3">서대문구</option>
                     </select>
                  </div>
                  <div class="col-sm-3">
                     <select id="dong" name="dong" class="custom-select" required>
                        <option value="">동 선택</option>
                        <option value="1">연희동</option>
                        <option value="2">연남동</option>
                        <option value="3">서교동</option>
                     </select>
                  </div>
               </div>
               
               <!-- 구조일시 -->
               <div class="form-group row">
                  <label for="rsq-date" class="col-sm-2 col-form-label">구조일시</label>
                  <div class="col-sm-4">
                     <input type="text" class="form-control" id="date" name="date" 
                     placeholder="날짜를 선택하세요." required>
                  </div>
               </div>
               
               <!-- 고양이 종류 -->
               <div class="form-group row">
                  <label for="cat-species" class="col-sm-2 col-form-label">종류</label>
                  <div class="col-sm-4">
                     <select class="custom-select" id="cat_species" name="cat_species" required>
                        <option value="" >고양이 종류 선택</option>
                        <option value="1">코리안숏헤어</option>
                        <option value="2">품종</option>
                     </select>
                  </div>
               </div>
               
               <!-- 고양이 상세 종류(+사진) → Ajax 처리필요  -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                     <!-- 코숏고등어 -->
                     <div class="col-xs-10 col-sm-8 col-md-4 col-lg-4 nopad text-center custom-control custom-radio custom-control-inline" required>
                         <label class="image-radio">
                           <img class="img-responsive" src="img/코숏고등어.png"/>
                           <input type="radio" id="customRadioInline1"   name="customRadioInline1" class="custom-control-input" required>
                        </label>
                     </div>
                     <!-- 코숏치즈 -->
                     <div class="col-xs-10 col-sm-8 col-md-4 col-lg-4 nopad text-center custom-control custom-radio custom-control-inline">
                         <label class="image-radio">
                           <img class="img-responsive" src="img/코숏치즈.png"/>
                           <input type="radio" id="customRadioInline1"   name="customRadioInline1" class="custom-control-input" required>
                        </label>
                     </div>
                  </div>
               </div>
               
               
               <!-- 고양이 나이 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">나이</label>
                  <div class="col-sm-10">
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadio1" name="customRadio1" class="custom-control-input" required>
                        <label class="custom-control-label" for="customRadio1">아기묘</label>
                     </div>
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadio2" name="customRadio1" class="custom-control-input" required>
                        <label class="custom-control-label" for="customRadio2">성묘</label>
                     </div>
                     <div class="custom-control custom-control-inline col-sm-4">
                        <input type="text" class="form-control" id="age" name="age" placeholder="ex.2살/1개월" maxlength="10" required>
                     </div>
                  </div>
               </div>
               
               <!-- 고양이 성별 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">성별</label>
                  
                  <div class="col-sm-10">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadio3" name="customRadio2" 
                        value="" class="custom-control-input" required>
                        <label class="custom-control-label" for="customRadio3">암컷</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadio4" name="customRadio2" class="custom-control-input" required>
                        <label class="custom-control-label" for="customRadio4">수컷</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="customRadio5" name="customRadio2" class="custom-control-input" required>
                        <label class="custom-control-label" for="customRadio5">알수없음</label>
                     </div>
                     
                  </div>
                  
               </div>
               
               <!-- 고양이 분류 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">분류</label>
                  
                  <div class="col-sm-10">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="category1" name="category" class="custom-control-input" required>
                        <label class="custom-control-label" for="category1">긴급입양</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="category2" name="category" class="custom-control-input" required>
                        <label class="custom-control-label" for="category2">분실의심</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="category3" name="category" class="custom-control-input" required>
                        <label class="custom-control-label" for="category3">치료필요</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="category4" name="category" class="custom-control-input" required>
                        <label class="custom-control-label" for="category4">장애있음</label>
                     </div>
                     
                  </div>
                  
               </div>
               
               <!-- 특이사항 -->   
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">고양이<br>
                     특이사항</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="cat_etc1" name="cat_etc1"
                     placeholder="고양이의 특징이나 생김새에 대해 자세히 기술해주세요. 고양이를 찾는데 큰 도움이 됩니다."
                     rows="7" maxlength="1000" required></textarea>
                  </div>
               </div>
               <br>
               
               <!-- 기타사항 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">기타사항</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="cat_etc2" name="cat_etc2"
                     placeholder="고양이를 잃어버렸을 때의 상황, 고양이가 있을 것으로 예상되는 장소 등을 자세히 적어주시기 바랍니다.사례금이 있으실 경우, 사례금에 대한 내용도 작성해주세요."
                     rows="7" maxlength="1000" required></textarea>
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
            
               <!-- 이름(수정X)  -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
                  <div class="col-sm-3">
                     <input type="text" readonly="readonly" class="form-control" id="name" name="name" placeholder="임나래" >
                  </div>
               </div>
               
               <!-- 연락처 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">연락처</label>
                  <div class="col-sm-5">
                     <input type="text" class="form-control" id="tel" name="tel"placeholder="010-1234-5678">
                  </div>
               </div>
               
               <!-- 이메일 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">이메일</label>
                  <div class="col-sm-6">
                     <input type="email" class="form-control" id="email" name="email" placeholder="test123@naver.com">
                  </div>
               </div>
               
               <!-- 입양보내는 이유 -->   
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">입양보내는 이유</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="adt_reason" name="adt_reason"
                     rows="7" maxlength="1000" required></textarea>
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
                  <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 길러본 경험</label>
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="experience1" name="experience" class="custom-control-input" required>
                        <label class="custom-control-label" for="experience1">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="experience2" name="experience" class="custom-control-input" required>
                        <label class="custom-control-label" for="experience2">있음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="experience3" name="experience" class="custom-control-input" required>
                        <label class="custom-control-label" for="experience3">없음</label>
                     </div>
                     
                  </div>
               </div>
               
               <!-- 직업 구분 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-4 col-form-label">직업구분</label>
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="job1" name="job" class="custom-control-input" required>
                        <label class="custom-control-label" for="job1">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="job2" name="job" class="custom-control-input" required>
                        <label class="custom-control-label" for="job2">학생</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="job3" name="job" class="custom-control-input" required>
                        <label class="custom-control-label" for="job3">직장인</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="job4" name="job" class="custom-control-input" required>
                        <label class="custom-control-label" for="job4">없음</label>
                     </div>
                     
                  </div>
               </div>
               
               
               <!-- 결혼여부 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-4 col-form-label">결혼여부</label>
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="marry1" name="marry" class="custom-control-input" required>
                        <label class="custom-control-label" for="marry1">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="marry2" name="marry" class="custom-control-input" required>
                        <label class="custom-control-label" for="marry2">미혼</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="marry3" name="marry" class="custom-control-input" required>
                        <label class="custom-control-label" for="marry3">기혼</label>
                     </div>
                     
                  </div>
               </div>
               
               
               <!-- 가족 구성원 수(본인포함) -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-4 col-form-label">가족 구성원 수(본인포함)</label>
                  
                  <div class="col-sm-8">
                  
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="member1" name="member" class="custom-control-input" required>
                        <label class="custom-control-label" for="member1">상관없음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="member2" name="member" class="custom-control-input" required>
                        <label class="custom-control-label" for="member2">1명</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="member3" name="member" class="custom-control-input" required>
                        <label class="custom-control-label" for="member3">2명</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="member4" name="member" class="custom-control-input" required>
                        <label class="custom-control-label" for="member4">3명</label>
                     </div>
                     
                  </div>
               </div>
               
            </div>
         </div><!-- 작성자 정보입력 끝 -->
            
         <!-- ★★★★ 임시저장 / 작성완료 버튼 ★★★★  -->
         <div id="button-section" class="text-center">
            <button id="save-btn" type="button" class="btn btn-secondary">임시저장</button>
            <button id="submit-btn" type="submit" class="btn btn-primary">작성완료</button>
         </div>
         
      </form>

   </section>
   
   <!-- ★★★★★ 푸터 ★★★★★ -->
   <c:import url="Footer.jsp"></c:import>

</body>
</html>