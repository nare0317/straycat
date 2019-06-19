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
<title>List.jsp</title>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Font Awesome 5 -->
<link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style type="text/css">
   
   dt
   {
      display: inline;
      text-align: center;
      font-size: small;
   }
   
   dd
   {
      display: inline;
      text-align: center;
   }
   dd.title
   {
      text-align: left;
   }
   
   .page-item.active .page-link 
   {
 
     z-index: 1;
     color: #fff;
     background-color: #c7c9d7 ;
     border-color: #c7c9d7 ;
   }
   
</style>


</head>
<body>
<form>
<div class="container form-group">
   <div class="">
      <div>
         <h1>자 유 게 시 판 </h1> 
      </div>
      
      <div class="input-group mb-3 d-flex justify-content-end row align-items-start">
         <div class="input-group-prepend">   
            <select name="searchKey" class="selectFiled custom-select">
               <option selected>선택</option>
               <option value="subject">제목</option>
               <option value="name">작성자</option>
               <option value="content">내용</option>
            </select>
         <input type="text" name="searchValue" class="textFiled" class="form-control">
         </div>
         
         <div class="input-group-append">
             <button class="btn btn-secondary" type="button" id="button-addon2">검색</button>
          </div>
      </div>
      
   </div>
   
   
   <div id="bbsList_list" class="">
   
      <div>
         <dl class="list-head list-group list-group-horizontal">
            <dt class="list-group-item  list-group-item-secondary" Style="width: 8%;" >No</dt>
            <dt class="list-group-item  list-group-item-secondary " Style="width: 36%;">제목</dt>
            <dt class="list-group-item  list-group-item-secondary " Style="width: 12%;">작성자</dt>
            <dt class="list-group-item  list-group-item-secondary " Style="width: 20%;">작성일</dt>
            <dt class="list-group-item  list-group-item-secondary " Style="width: 12%;">조회수</dt>
            <dt class="list-group-item  list-group-item-secondary "Style="width: 12%;" >추천수</dt>

         </dl>
      </div><!-- close title -->
      
      <div>
         <dl class="list-group list-group-horizontal">
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1">1</dd>
            <dd class="list-group-item col-sm-4 col-md-4 col-lg-4 title"><a href="#" class="text-dark">안녕하세요~~ </a><i class='far fa-comment'>3</i></dd>
            <dd class="list-group-item col-sm-2 col-md-2 col-lg-2" >유진석</dd>
            <dd class="list-group-item col-sm-3 col-md-3 col-lg-3">2019-05-21</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >3</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >0</dd>
         </dl>
      </div>
      

      <div>
         <dl class="list-group list-group-horizontal">
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1">2</dd>
            <dd class="list-group-item col-sm-4 col-md-4 col-lg-4 title" ><a href="#" class="text-dark">안녕하세요,진석이에요. </a><i class='far fa-comment'>0</i></dd>
            <dd class="list-group-item col-sm-2 col-md-2 col-lg-2" >무진석</dd>
            <dd class="list-group-item col-sm-3 col-md-3 col-lg-3">2019-06-21</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >5</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >1</dd>
         </dl>
      </div>
      
      <div>
         <dl class="list-group list-group-horizontal">
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1">3</dd>
            <dd class="list-group-item col-sm-4 col-md-4 col-lg-4 title" ><a href="#" class="text-dark">오늘 길냥이 봤는데.. </a><i class='far fa-comment'>0</i></dd>
            <dd class="list-group-item col-sm-2 col-md-2 col-lg-2" >최진석</dd>
            <dd class="list-group-item col-sm-3 col-md-3 col-lg-3">2019-06-21</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >3</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >1</dd>
         </dl>
      </div>
      
      <div>
         <dl class="list-group list-group-horizontal">
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1">4</dd>
            <dd class="list-group-item col-sm-4 col-md-4 col-lg-4 title" ><a href="#" class="text-dark">진석이 닮은 고양이 봤어요~! </a><i class='far fa-comment'>1</i></dd>
            <dd class="list-group-item col-sm-2 col-md-2 col-lg-2" >이진석</dd>
            <dd class="list-group-item col-sm-3 col-md-3 col-lg-3">2019-06-11</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >5</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >4</dd>
         </dl>
      </div>
      
      <div>
         <dl class="list-group list-group-horizontal">
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1">5</dd>
            <dd class="list-group-item col-sm-4 col-md-4 col-lg-4 title" ><a href="#" class="text-dark">안녕하세요, 가입인사에요. </a><i class='far fa-comment'>4</i></dd>
            <dd class="list-group-item col-sm-2 col-md-2 col-lg-2" >김진석</dd>
            <dd class="list-group-item col-sm-3 col-md-3 col-lg-3">2019-06-2</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >1</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >1</dd>
         </dl>
      </div>
      
      <div>
         <dl class="list-group list-group-horizontal">
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1">6</dd>
            <dd class="list-group-item col-sm-4 col-md-4 col-lg-4 title" ><a href="#" class="text-dark">길냥이들 어디있죠? </a><i class='far fa-comment'>2</i></dd>
            <dd class="list-group-item col-sm-2 col-md-2 col-lg-2" >오진석</dd>
            <dd class="list-group-item col-sm-3 col-md-3 col-lg-3">2019-06-22</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >9</dd>
            <dd class="list-group-item col-sm-1 col-md-1 col-lg-1" >0</dd>
         </dl>
      </div>
      
      <br><br>
      
      <ul class="pagination pagination-sm justify-content-center">
        <li class="page-item disabled"><a class="page-link text-dark" href="#">Previous</a></li>
        <li class="page-item active"><a class="page-link text-dark" href="#">1</a></li>
        <li class="page-item"><a class="page-link text-dark" href="#">2</a></li>
        <li class="page-item"><a class="page-link text-dark" href="#">3</a></li>
        <li class="page-item"><a class="page-link text-dark" href="#">Next</a></li>
      </ul>
      
      <div id="rightHeader" class="row align-items-end justify-content-end">
         <button class="btn btn-secondary pull-right" onclick="javascript:location.href='<%=cp%>/Created.jsp'">
         <i class="fa fa-pencil-square-o"></i>글쓰기</button>
      </div>
      
   </div>
   
</div>
</form>

</body>
</html>

