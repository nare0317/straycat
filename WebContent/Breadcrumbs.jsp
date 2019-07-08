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
<title>상단 게시판 제목 + 브레드크럼 부분</title>
<c:import url="Head.jsp"></c:import>

<style type="text/css">
   
   #header
   {
      margin-bottom: 40px;
      font-family: 맑은 고딕;
   }
   
   #header-title
   {
      padding-top: 1rem;
      border-color: #ddd;
      border-bottom: solid 1px #000000e0;
   }
   
   #header-title  #title
   {
      font-weight: bold;
      letter-spacing: 5px;
      margin-top:40px;
   }
   #header-title  #sub-title
   {
      font-size: medium;
      letter-spacing: 0px;
   }
   
   #breadcrumbs ul
   {
      padding-top: 10px;
      padding-left: 0px;
   }
   
   #breadcrumbs span a
   {
      font-size: 13px;
   }

</style>

</head>
<body>

<div>

   <c:import url="Menu.jsp"></c:import>
      
   <!-- ★★★★★헤더 + breadcrumbs ★★★★★ -->

   <section id="header" class="container ">
   
      <div id="header-title">
         <h2 id="title">게시판제목<span id="sub-title">게시판소제목</span></h2>
      </div>
      
      <div id="breadcrumbs">
         <ul>
            <li class="list-inline-item">
               <a class="text-dark" href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <a class="text-dark" href="#">메뉴1</a>
               <span class="breadcrumb-divider">></span>
            </li>
            <li class="list-inline-item">
               <span>메뉴2</span>
            </li>
         </ul>
      </div>
      
   </section>
   
   
   <!-- 이 부분부터 각자 작성할 내용 작성하면됨.  -->
   
   
      
</div>
</body>
</html>