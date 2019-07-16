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
<link href="<%=cp%>/css/view/apply_form.css" rel="stylesheet">

<!-- JS 파일 -->
<script src="<%=cp %>/js/view/gudong.js"></script>

</head>
<body>

	<!-- ★★★★★메뉴바★★★★★ -->
   <c:import url="Menu.jsp"></c:import>
      
   <!-- ★★★★★헤더 + breadcrumbs★★★★★ -->
   <section id="header" class="container ">
   
      <div id="header-title">
         <h2 id="title">입양신청<span id="sub-title">신청서 작성</span></h2>
      </div>
      
      <div id="breadcrumbs">
         <ul>
            <li class="list-inline-item">
               <a class="text-dark" href="<%=cp%>/main"><i class="fas fa-home"></i></a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <a class="text-dark" href="<%=cp%>/adopt">입양</a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <a class="text-dark" href="#">입양모집글</a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <span>입양신청서 작성</span>
            </li>
         </ul>
      </div>
      
   </section>
   
   <!-- ★★★★★내용★★★★★ -->
   <section class="content container">
   		<div class="container" id="container">
		
		<form action="<%=cp %>/adopt/apply" method="get" class="needs-validation" novalidate>
            
        <!------------------ 선택형 질문 ----------------->    
		<h4>선택형 질문</h4>
		<hr>	
		
		<div class="col-12">
		
			<!-- 이름 -->
			<div class="form-group row">
                  <label for="name" class="col-sm-2 col-form-label">이름</label>
                  <div class="col-sm-4">
                     <input type="text" class="form-control" id="name" name="name"
                     placeholder="ex)고길동"  maxlength="10" required>
                   </div>
            </div>
			    
			 <!-- 사는 곳 --> 
             <div class="form-group row">
                <label for="location" class="col-sm-2 col-form-label">지역</label>
                <label id="seoul" class="col-sm-2 col-form-label">서울시</label>
                <div class="col-sm-3 gu-select">
                   <select id="gu" name="gu" class="custom-select"  onchange="dongList();" required>   
                      	<option value="">구 선택</option>
                    	<c:forEach var="gu" items="${gu }">
							<option value="${gu.GU }">${gu.GU }</option>
						</c:forEach>
                   </select>
                </div>
                  <div class="col-sm-3">
                     <select class="custom-select" id="dong" name="dong" required>
						<option value="">동 선택</option>
					</select>
                  </div>
              </div>
			 
			  <!-- 성별 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-2 col-form-label">성별</label>
                  
                  <div class="col-sm-10" id="yesno2">
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="female" name="gender" value="" 
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="female">여성</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="male" name="gender" value=""
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="male">남성</label>
                     </div>
                  </div>
                  
               </div>
			  
			  
			   <!-- 연령대 -->			  
			   <div class="form-group row">
			    <label for="age" class="col-sm-2 col-form-label">연령대</label>
			    <div class="col-sm-3">
			      <select class="custom-select" id="age" required>
					  <option value="">선택</option>
					  <option value="">10대</option>
					  <option value="2">20대</option>
					  <option value="2">30대</option>
					  <option value="2">40대</option>
					  <option value="2">50대 이상</option>
					</select>
			    </div>
			   </div>
			  
			  <!-- 주거형태 -->
			  <div class="form-group row">
			    <label for="residence" class="col-sm-2 col-form-label">주거형태</label>
			    <div class="col-sm-6">
			      <select class="custom-select" id="residence" required>
					  <option value="">선택</option>
					  <option value="1">아파트</option>
					  <option value="2">단독주택</option>
					  <option value="3">다가구주택</option>
					  <option value="4">공동주택</option>
					</select>
			    </div>
			  </div>
			  
			  <!-- 고양이 길러본 경험 -->
			  <div class="form-group row">
			    <label for="cat_exp" class="col-sm-2 col-form-label">고양이<br>길러본 경험</label>
			    
			    <div class="col-sm-10" id="yesno2">
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="yes-exp" name="gender" value="" 
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="yes-exp">있음</label>
                     </div>
                     
                     <div class="custom-control custom-radio custom-control-inline">
                        <input type="radio" id="no-exp" name="gender" value=""
                        class="custom-control-input" required>
                        <label class="custom-control-label" for="no-exp">없음</label>
                     </div>
                </div>
			    
			  </div>		
			   
			 <!-- 직업구분 --> 	
			 <div class="form-group row">
			    <label for="job" class="col-sm-2 col-form-label">직업구분</label>
			    
			    <div class="col-sm-10 m7">
				     <div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADJ2" name="job" value="ADJ2"
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="ADJ2">학생</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADJ3" name="job" value="ADJ4"
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="ADJ3">직장인</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADJ4" name="job" value="ADJ4" 
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="ADJ4">기타</label>
					</div>
			    </div>
			    
			  </div>

			  <!-- 결혼여부 -->
			  <div class="form-group row">
			    <label for="marriage" class="col-sm-2 col-form-label">결혼여부</label>
			    
			    <div class="col-sm-10" id="yesno2">
				    <div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="marry_no" name="marriage" value="RT2"
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="marry_no">미혼</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="marry_yes" name="marriage" value="RT1"
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="marry_yes">기혼</label>
					</div>
			    </div>
			    
			  </div>	
			  
			  
			  <!-- 가족 구성원 수 -->
			  <div class="form-group row">
			  	<label for="family_num" class="col-sm-2 col-form-label">가족<br>구성원 수</label>
			    
			    <div class="col-sm-10" id="yesno">
				    <div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADFN1" name="family_num" value="ADFN1"
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="ADFN1">1명</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADFN2" name="family_num" value="ADFN2"
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="ADFN2">2명</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADFN3" name="family_num" value="ADFN3"
					  class="custom-control-input" required>
					  <label class="custom-control-label" for="ADFN3">3명 이상</label>
					</div>
				 </div>
				 
			  </div>
			  
			  
			  <!-- 가족내 동의여부 -->
			   <div class="form-group row">
			    
			    <label for="agree" class="col-sm-2 col-form-label">가족 내<br>동의 여부</label>
			    
			    <div class="col-sm-10" id="yesno">
				     <div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADC1" name="agree" value="ADC1"
					  class="custom-control-input">
					  <label class="custom-control-label" for="ADC1">동의</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADC2" name="agree" value="ADC2"
					  class="custom-control-input">
					  <label class="custom-control-label" for="ADC2">일부 동의</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="ADC3" name="agree" value="ADC3"
					  class="custom-control-input">
					  <label class="custom-control-label" for="ADC3">비동의</label>
					</div>
			    </div>
			    
			  </div>
			  
			  
			  <!-- 거주지 반려동물 가능여부 -->
			    <div class="form-group row">
			    
			    <label for="adt_allow" class="col-sm-2 col-form-label">거주지<br>반려동물<br>가능여부</label> 
			   
				<div class="col-sm-10" id="yesno1">
				
				     <div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="adt_allow" name="adt_allow"  value="RT1"
					  class="custom-control-input">
					  <label class="custom-control-label" for="adt_allow">가능</label>
					</div>
					<div class="custom-control custom-radio custom-control-inline">
					  <input type="radio" id="adt_allow" name="adt_allow" value="RT2"
					  class="custom-control-input">
					  <label class="custom-control-label" for="adt_allow">불가능</label>
					</div>
			    </div>
			    
			  </div>
			  
			  <!-- 키우고 있는 반려동물 -->
			    <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">키우는(*)<br>반려동물</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline19" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline19">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline20" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline20">1마리</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline21" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline21">2마리</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline22" name="customRadioInline4" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline22">3마리 이상</label>
				</div>
			    </div>
			    
			    
			    <label for="colFormLabel" class="col-sm-10 col-form-label blue">* 키우는 반려동물 종류/나이/성별/중성화여부</label>
			    <br>
			    <div class="col-sm-7">
			      <input type="text" class="form-control" id="colFormLabel" placeholder="ex)강아지/2살/수컷/중성화했어요">
			    </div>
			  	</div>	
			  
			  
			  
			    <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">하루평균<br>돌봄시간</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline23" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline23">1시간 이하</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline24" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline24">1-3시간</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline25" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline25">3-5시간</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline26" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline26">5시간 이상</label>
				</div>
			    </div>
			  </div>
			  
			  
			  
			    <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">알러지<br>유무</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline27" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline27">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline28" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline28">있음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline29" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline29">모름</label>
				</div>
			    </div>
			  </div>		
			  
			  		
			  <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">입양동물<br>파양경험</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline30" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline30">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline31" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline31">있음</label>
				</div>
			    </div>
			  </div>		
			  
			  
			  <div class="form-group row">
			    <label for="colFormLabel" class="col-sm-2 col-form-label">반려동물<br>입양경험</label>
			    <div class="col-sm-10" id="yesno">
			     <div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline32" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline32">없음</label>
				</div>
				<div class="custom-control custom-radio custom-control-inline">
				  <input type="radio" id="customRadioInline33" name="customRadioInline1" class="custom-control-input">
				  <label class="custom-control-label" for="customRadioInline33">있음</label>
				</div>
				</div>
			    </div>
			  </div>
			  
			  
			  <!-- 고양이 길러본 경험 -->
               <div class="form-group row">
                  <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 길러본 경험</label>
                  
                  <div class="col-sm-8">
                  
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
               
               
               
               
		
		<br><br>
		
		<h4>서술형 질문</h4>
		<hr>		
		<div><span class="input-group-text">1. 입양을 원하는 가장 큰 이유는 무엇인가요?</span></div>
		<div class="input-group">		
		  <textarea class="form-control" id="textarea" aria-label="With textarea" placeholder="내용을 입력해주세요.">냥이 사연이 너무 안타깝네요.. 
			제가 평소에 고양이를 키우려고 알아보고 있었는데, 
			돈을 주고 사는 것보다는 입양을 통해서 불쌍한 아이들을 도와주고 싶은 마음에 신청하게 되었습니다. </textarea>
		</div>
		
		<br>
		
		<div><span class="input-group-text">2. 입양을 결정하기까지 얼마나 오랜 시간 고민하셨나요?</span></div>
		<div class="input-group">		
		  <textarea class="form-control" id="textarea" aria-label="With textarea" placeholder="내용을 입력해주세요."></textarea>
		</div>
		
		<br>
		
		<div><span class="input-group-text text-left">3. 현재 다른 반려동물을 양육 중인 경우, 합사는 적어도  2주 정도 시간을 갖고 천천히 진행해야 합니다.
		<br>&nbsp;&nbsp;&nbsp;합사가 필요한 경우 간단한 합사 계획에 대해서 알려주세요. (ex. 2주 간 격리 후 천천히 대면 예정)</span></div>
		<div class="input-group">		
		  <textarea class="form-control" id="textarea" aria-label="With textarea" placeholder="내용을 입력해주세요."></textarea>
		</div>
		
		
		 <!-- ★★★★ 임시저장 / 작성완료 버튼 ★★★★  -->
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