<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath(); 
%>
<hr>
<div id="footer" style="margin-top: 20px; margin-left: 50px; margin-right: 50px;">
	<p class="float-right">
      <a href="#">Back to top</a>
    </p>
    <p><a href="<%=cp %>/termsofservice" style="padding-right: 40px;">이용약관</a><a href="<%=cp %>/privacy" style="padding-right: 40px;">개인정보 처리방침</a><a href="<%=cp %>/emailqna">이메일 문의</a></p>
    <div class="row">
    	<div class="col-4">
    		<p>개발자</p>
    		<p>팀장: 김경환</p>
    		<p>팀원: 남상현, 임나래, 조수연, 진윤비</p>
    	</div>
    	<div class="col-8">
			<p>개발 기간</p>
    		<p>2019년 6월 1일 ~ 2019년 7월 19일</p>   
    	</div>
    </div>
</div>
