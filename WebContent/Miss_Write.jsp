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
<title>MissingRegisration.jsp(실종글 등록 페이지)</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/miss_write.css">

<!-- JS 파일 -->
<script src="<%=cp%>/js/view/missing_registration.js"></script>


<link rel="stylesheet" href="<%=cp%>/css/jquery-ui.css">
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>

</head>
<body>

   <!-- ★★★★★메뉴바★★★★★ -->
   <c:import url="Menu.jsp"></c:import>
      
   <!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

   <section id="header" class="container ">
   
      <div id="header-title">
         <h2 id="title">실종<span id="sub-title">게시글작성</span></h2>
      </div>
      
      <div id="breadcrumbs">
         <ul>
            <li class="list-inline-item">
               <a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
               <span class="breadcrumb-divider">></span>
               
            </li>
            <li class="list-inline-item">
               <a class="text-dark" href="#">실종</a>
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
      
      <form class="needs-validation" novalidate>
      
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
                     <input type="text" class="form-control" id="cat-name" placeholder="ex.야옹이"  maxlength="10" required>
                    </div>
                </div>
                
               <!-- 실종 지역 -->
               <div class="form-group row">
                  <label for="location" class="col-sm-2 col-form-label">지역</label>
                  <label id="seoul" class="col-sm-2 col-form-label">서울시</label>
                  <div class="col-sm-3 gu-select">
                     <select id="gu" class="custom-select" required>   
                        <option value="">구 선택</option>
                        <option value="1">마포구</option>
                        <option value="2">영등포구</option>
                        <option value="3">서대문구</option>
                     </select>
                  </div>
                  <div class="col-sm-3">
                     <select id="dong" class="custom-select" required>
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
                     <select class="custom-select" id="cat-species" required>
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
                        <input type="radio" id="customRadio3" name="customRadio2" class="custom-control-input" required>
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
               
               <!-- 특이사항 -->   
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">고양이<br>
                     특이사항</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="exampleFormControlTextarea1"
                     placeholder="고양이의 특징이나 생김새에 대해 자세히 기술해주세요. 고양이를 찾는데 큰 도움이 됩니다."
                     rows="7" maxlength="1000" required></textarea>
                  </div>
               </div>
               <br>
               
               <!-- 기타사항 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">기타사항</label>
                  <div class="col-sm-10">
                     <textarea class="form-control" id="exampleFormControlTextarea1"
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
            <div class="col-md-2 text-right">
               <h1>
                  작성자<br>정보
               </h1>
            </div>
            
            <!------------------ 작성자정보 등록 폼 ----------------->
            <div class="col-md-7 offset-md-3">
            
               <!-- 이름(수정X)  -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
                  <div class="col-sm-3">
                     <input type="text" readonly="readonly" class="form-control" id="name" placeholder="임나래" >
                  </div>
               </div>
               
               <!-- 연락처 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">연락처</label>
                  <div class="col-sm-5">
                     <input type="text" class="form-control" id="tel" placeholder="010-1234-5678">
                  </div>
               </div>
               
               <!-- 이메일 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">이메일</label>
                  <div class="col-sm-6">
                     <input type="email" class="form-control" id="email" placeholder="test123@naver.com">
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