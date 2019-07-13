<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath(); 
%>	
	<!-- 댓글 리스트  -->
	<div class="comment-list-area">
		
		<div class="comment-head">
			<h5>댓글 <span class="comment-number" 
			id="comment-number">${commentCount }</span></h5>
		</div>
		
		<!-- 댓글 1 -->
		<c:forEach var="commentList" items="${commentList }">
		<div id="comment-wrapper">

			<div class="comment" data-id="16312" data-login="false">
				<div class="comment-content">
					<div class="comment-writer-date">
							<h6 class="comment-writer">${commentList.NICKNAME }
							<span class="comment-date">${commentList.BBS_CMT_DATE }</span>
							</h6>
					</div>
					<p>${commentList.CONTENT }</p>
				</div>
			</div><!-- end comment -->

			<hr class="comment-hr">

		</div><!-- end comment-wrapper -->
		</c:forEach>
	</div><!-- end comment-list area -->