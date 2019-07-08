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
	<title>게시물 작성페이지</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/posting.css">
</head>
<body>



<c:import url="Menu.jsp"></c:import>
<form action="">

   <div class="container m60">
   <div><h1>새 게시물 작성</h1></div><br>
      <div class="row">
         <div class="col-2">제목</div>
         <div class="col-3">
            <input type="text" class="form-control">
         </div>
      </div>
      <br>
      <br>
      <div class="row">
         <div class="col-2">구분</div>
         <div class="col-3">
            <select class="custom-select">
              <option selected>잡담</option>
              <option value="1">일기</option>
              <option value="2">질문</option>
            </select>
         </div>
      </div>
      <br>
      <br>
      <div class="row">
         <div class="col-2">첨부파일</div>
         <div class="col-8">
            <input type="text" class="form-control">
         </div>
         <div>
            <button type="button" class="btn btn-primary">첨부하기</button>
         </div>
      </div>
      <br><br>
      <div class="row">
         <div class="col-2">내용</div>
         <div class="col-10">
               <textarea class="form-control" id="exampleFormControlTextarea1" rows="10"></textarea>
         </div>
      </div><br>
      <div class="row">
         <div class="col-2"></div>
         <div class="col-10">
               <button type="submit" class="btn btn-primary">작성 완료</button>
               <button type="button" class='btn btn-secondary'>작성 취소</button>
         </div>
      </div>
   </div>
</form>





<div>
   <c:import url="Footer.jsp"></c:import>
</div>


</body>
</html>