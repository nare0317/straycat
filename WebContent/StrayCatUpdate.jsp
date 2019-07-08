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
<title>StrayCatRegistration.jsp</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding:400,700&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Quicksand:400,500,700&display=swap&subset=latin-ext,vietnamese" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script   src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
   div
   {
      font-family: 'Nanum Gothic Coding', monospace;
      font-family: 'Quicksand', sans-serif;
   }
   .card
   {
      margin-top: 30px;
      padding: 30px;
   }
   .dt1
   {
      width: 50%;
      display: inline;
   }
   .dt2
   {
      width: 50%;
      display: inline;
   }
   th
   {
      background-color: #F6F6F6;
      width: 30%;
   }
   .mButton.gCenter 
   { 
      position:relative; text-align:center; 
   }
   .alignRight
   {
      margin: 10px 0;
       padding: 0 4px 0 0;
       text-align: right;
   }
   .card
   {
      margin-top: 100px;
   }
   span
   {
      font-size: small;
   }
</style>
</head>
<body>


<div>
   <c:import url="Menu.jsp"></c:import>

   <div class="container" style="margin-top: 30px;">
      <h1>수정<span>길냥이 정보 수정</span></h1>
      <span>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Numquam dolor reiciendis aliquid rem atque accusamus ab voluptate quam aspernatur magnam maxime nisi voluptas unde nesciunt dicta aliquam quas quasi quaerat!
      </span>
      <hr><br><br>
      
      
      <div class="row">
          <div class="col-5 text-center">
         <img src="img/straycat.jpg" style="width: 200px;"><br><br>

         <label class="btn btn-primary"> 사진첨부<input type="file" class="form-control-file" id="exampleFormControlFile1" style="display: none;"></label>

         </div>
          <div class="col-7">
          <div class="form-group row">
             <label for="colFormLabel" class="col-sm-2 col-form-label">이름</label>
             <div class="col-sm-10">
               <label for="colFormLabel" class="col-sm-2 col-form-label">야옹이</label>
             </div>
           </div><br>
          <div class="form-group row">
             <label for="colFormLabel" class="col-sm-2 col-form-label">지역</label>
             <div class="col-sm-2">
               <label for="colFormLabel" class="col-form-label">서울시</label>
             </div>
             <div class="col-sm-3">
               <label for="colFormLabel" class="col-form-label">마포구</label>
             </div>
             <div class="col-sm-5">
               <label for="colFormLabel" class="col-form-label">서교동</label>
             </div>
           </div><br>
          <div class="form-group row">
             <label for="colFormLabel" class="col-sm-2 col-form-label">종류</label>
             <div class="col-sm-10">
               <label for="colFormLabel" class="col-form-label">코리안숏헤어(치즈태비)</label>
             </div>
           </div><br>
          <br>
          <div class="form-group row">
             <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 특이사항</label>
             <div class="col-sm-8">
               <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
             </div>
           </div><br>
          <div class="form-group row">
             <label for="colFormLabel" class="col-sm-4 col-form-label">고양이 건강상태</label>
             <div class="col-sm-8">
               <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"></textarea>
             </div>
           </div><br>
          <br>
         <button type="button" class="btn btn-primary">수정하기</button>
         </div>
      </div>
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


</body>
</html>