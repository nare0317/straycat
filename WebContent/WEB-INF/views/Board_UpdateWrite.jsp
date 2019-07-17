<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>자유게시판 게시글 수정페이지</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/board_write.css">
	<script type="text/javascript" src="<%=cp%>/js/view/board_write.js"></script>
	
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="container marTop">
	<div><h1>게시물 수정</h1></div><br>
	<form action="<%=cp %>/articleupdate" id="boardForm" method="post">
		<div class="row">
			<div class="col-2">제목<span class="required">*</span></div>
			<div class="col-10">
				<input type="text" class="form-control" id="tile" name="title" value="${articleUpdateValue.TITLE}">
			</div>
			<input type="hidden" class="form-control" id="bbs_code" name="bbs_code" value="${articleUpdateValue.BBS_CODE}">
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">구분<span class="required">*</span></div>
			<div class="col-10">
				<select class="form-control category" id="categorySelect" name="categorySelect">
					<option selected="selected">구분 선택</option>
					<c:forEach var="category" items="${bbsWriteCat }">
						<%-- <c:choose>
							<c:when test="${articleUpdateValue.TYPE_CODE eq ${category.BBS_TYPE_CODE }"></c:when>
						
						</c:choose> --%>
						<option value="${category.BBS_TYPE_CODE }">${category.BBS_TYPE }</option>
						
						
						
				</c:forEach>
				</select>
				
				${articleUpdateValue.BBS_TYPE}
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">내용<span class="required">*</span></div>
			<div class="col-10">
				<textarea name="content" id="ir1" rows="10" cols="100">${articleUpdateValue.CONTENTS}</textarea>
			</div>
		</div>
		<div class="row text-left">
			<div class="col-10"></div>
			<div class="col-2">
				<div id="textCounter"><span id="counter">0</span> / 9000</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-10">
				<span class="err1">필수 항목이 입력되지 않았습니다.</span>
				<span class="err2">구분을 선택해 주세요.</span>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-2"></div>
			<div class="col-10">
					<button type="button" class="btn btn-primary" id="sendBtn" onclick="submitContents()">수정완료</button>
					<button type="button" class="btn btn-secondary">작성취소</button>
			</div>
		</div>
	</form>
	</div>




<div>
	<c:import url="Footer.jsp"></c:import>
</div>


</body>
<script type="text/javascript" src="<%=cp %>/resource/se/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
		oAppRef: oEditors,
		elPlaceHolder: "ir1",
		sSkinURI: "<%=cp%>/resource/se/SmartEditor2Skin.html",
		fCreator: "createSEditor2",
		htParams : {
			bUseToolbar : true,
			bUseModeChanger : false	
		}
	});

	function pasteHTML() {
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
		oEditor.exec("PASTE_HTML", [sHTML]);
	}
	
	function showHTML() {
		var sHTML = oEditor.getIR();
		alert(sHTML);
	}
	
	function submitContents() {
		oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []);	// 에디터의 내용이 textarea에 적용됩니다.
		
		// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
		var contents = $.trim(oEditors[0].getContents());
		if (contents == '<p>&bnsp;</p>' || contents == '' || contents == '<p><br></p>')
		{
			alert("내용을 입력해주세요.");
			return;
		}
		$("#boardForm").submit();
	}
	
	function setDefaultFont() {
		var sDefaultFont = '궁서';
		var nFontSize = 24;
		oEditor.setDefaultFont(sDefaultFont, nFontSize);
	}
</script>
</html>