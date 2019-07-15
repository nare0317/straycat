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
<title>길고양이 등록</title>

<!-- Head.jsp  -->
<c:import url="Head.jsp"></c:import>

<!-- CSS 파일 -->
<link rel="stylesheet" href="<%=cp%>/css/view/miss_write.css">

<!-- JS 파일 -->
<script src="<%=cp%>/js/view/miss_write.js"></script>

<script type="text/javascript">
	$(document).ready(function()
	{
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

   <!-- ★★★★★메뉴바★★★★★ -->
   <c:import url="Menu.jsp"></c:import>
      
   <!-- ★★★★★헤더 + breadcrumbs★★★★★ -->

   <section id="header" class="container ">
   
      <div id="header-title">
         <h2 id="title">등록<span id="sub-title">길냥이 등록 신청</span></h2>
      </div>
      
      <div id="breadcrumbs">
         <ul>
            <li class="list-inline-item">
               <a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <a class="text-dark" href="#">등록</a>
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
      
      <form class="needs-validation" novalidate action="registration" method="GET">
      
         <!-- ★★★★ 고양이 정보 입력 ★★★★  -->
         <div class="cat-info row">
         
            <!------------------ 왼쪽 등록 폼 이름 ----------------->
            <div class="col-2 text-right">
               <h1>고양이<br>정보</h1>
            </div>
            
            <!---------------- 고양이 대표 이미지 첨부 --------------->
            <div class="col-3 text-center">
               <img id="catPicture" src="img/straycat.jpg" style="width: 200px;"><br> <br>
               <label class="btn btn-primary"> 사진첨부<input type="file"
                  class="form-control-file" id="uploadPicture"
                  style="display: none;" name="file"></label>
            </div>
            
            <!------------------ 고양이정보 등록 폼 ----------------->
            <div class="col-7">
               
               <!-- 고양이 이름 -->
               <div class="form-group row">
                  <label for="cat-name" class="col-sm-2 col-form-label">이름</label>
                  <div class="col-sm-4">
                     <input type="text" class="form-control" id="cat_name" name="cat_name" placeholder="ex.야옹이"  maxlength="10" required>
                    </div>
                </div>
                
               <!-- 실종 지역 -->
               <div class="form-group row">
                  <label for="location" class="col-sm-2 col-form-label">지역</label>
                  <label id="seoul" class="col-sm-2 col-form-label">서울시</label>
                  <div class="col-sm-3 gu-select">
                    <select id="gu" name="gu" class="custom-select" required>   
                        <option value="">구 선택</option>
                        <c:forEach var="gu" items="${gu }">
							<option value="${gu.GU }">${gu.GU }</option>
						</c:forEach>
                     </select>
                  </div>
                  <div class="col-sm-3">
                     <select id="dong" name="dong" class="custom-select" required>
                        <option value="">동 선택</option>
                        <option value="연희동">연희동</option>
                        <option value="연남동">연남동</option>
                        <option value="서교동">서교동</option>
                     </select>
                  </div>
               </div>
               
               <!-- 구조일시 -->
               <div class="form-group row">
                  <label for="rsq-date" class="col-sm-2 col-form-label">구조일시</label>
                  <div class="col-sm-4">
                     <input type="text" class="form-control" id="cat_date" name="cat_date" 
                     placeholder="날짜를 선택하세요." required>
                  </div>
               </div>
               
               <!-- 고양이 종류 -->
               <div class="form-group row">
                  <label for="cat-species" class="col-sm-2 col-form-label">종류</label>
                  <div class="col-sm-4">
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
                     <!-- 코숏고등어 -->
                     <div class="col-xs-10 col-sm-8 col-md-4 col-lg-4 nopad text-center custom-control custom-radio custom-control-inline">
                         <label class="image-radio">
                           <img class="img-responsive" src="img/코숏고등어.png"/>
                           <input type="radio" id="SP2" name="cat_species" value="SP2" class="custom-control-input" required>
                        </label>
                     </div>
                     <!-- 코숏치즈 -->
                     <div class="col-xs-10 col-sm-8 col-md-4 col-lg-4 nopad text-center custom-control custom-radio custom-control-inline">
                         <label class="image-radio">
                           <img class="img-responsive" src="img/코숏치즈.png"/>
                           <input type="radio" id="SP1" name="cat_species" value="SP1"class="custom-control-input" required>
                        </label>
                     </div>
                  </div>
                  <div class="col-sm-12 offset-sm-2">
                     <!-- 코숏카오스-->
                     <div class="col-xs-10 col-sm-8 col-md-4 col-lg-4 nopad text-center custom-control custom-radio custom-control-inline">
                         <label class="image-radio">
                           <img class="img-responsive" src="img/코숏카오스.png"/>
                           <input type="radio" id="SP3" name="cat_species" value="SP3" class="custom-control-input" required>
                        </label>
                     </div>
                     <!-- 코숏삼색이 -->
                     <div class="col-xs-10 col-sm-8 col-md-4 col-lg-4 nopad text-center custom-control custom-radio custom-control-inline">
                         <label class="image-radio">
                           <img class="img-responsive" src="img/코숏삼색이.png"/>
                           <input type="radio" id="SP4" name="cat_species" value="SP4" class="custom-control-input" required>
                        </label>
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
         
                     
         <!-- ★★★★ 임시저장 / 작성완료 버튼 ★★★★  -->
         <div id="button-section" class="text-center">
            <button id="save-btn" type="button" class="btn btn-secondary">임시저장</button>
            <button id="submit-btn" type="submit" class="btn btn-primary">작성완료</button>
         </div>
         
      </form>

   </section>
   
   <!-- ★★★★★ 푸터 ★★★★★ -->
   <c:import url="Footer.jsp"></c:import>

<script type="text/javascript">

/* $(document).ready(function()
{
	$("#submit-btn").attr("href", "cat?gu=" + ${gu} + "&dong=" + ${dong});
}); */

</script>

</body>
</html>