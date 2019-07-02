<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>

<nav class="navbar navbar-expand-lg navbar-light bg-light rounded site-header sticky-top py-1">
    <a class="navbar-brand" href="Main.jsp"><img src="<%=cp%>/img/cat_main.jpg" style="width: 60px; margin-left: 30px;"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExample09" style="margin: 30px;">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="Introduce.jsp">소개<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">길냥이관리<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown09" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">입양&실종</a>
          <div class="dropdown-menu" aria-labelledby="dropdown09">
            <a class="dropdown-item" href="#">입양</a>
            <a class="dropdown-item" href="#">실종</a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">자유게시판<span class="sr-only">(current)</span></a>
        </li>
      </ul>
      <form class="form-inline my-2 my-md-0">
        <button type="button" class="btn btn-primary" onclick="#'">등록</button>&nbsp;&nbsp;
        <!-- if 로그인 X -->
        <button type="button" class="btn btn-outline-primary" onclick="location.href='Login.jsp'">로그인</button>&nbsp;&nbsp;
        <button type="button" class="btn btn-outline-primary" onclick="location.href='Join.jsp'">회원가입</button>
        <!-- else if 로그인 O -->
      <!--   
        <span>jyb7488님</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <button type="button" class="btn btn-outline-primary" onclick="location.href='#'">마이페이지</button>&nbsp;&nbsp;
        <button type="button" class="btn btn-outline-primary" onclick="location.href='#'">로그아웃</button>
       -->
      </form>
    </div>
  </nav>
</body>
</html>