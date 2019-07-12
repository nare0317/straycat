<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<title>자유게시판 게시글 작성페이지</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/board_write.css">
	<script type="text/javascript" src="<%=cp%>/js/view/board_write.js"></script>
	<script type="text/javascript" src="<%=cp%>/resource/se/js/HuskyEZCreator.js" charset="utf-8"></script>
</head>
<body>

<c:import url="Menu.jsp"></c:import>

	<div class="container marTop">
	<div><h1>새 게시물 작성</h1></div><br>
	<form action="BoardList.jsp" id="boardForm" method="post">
		<div class="row">
			<div class="col-2">제목<span class="required">*</span></div>
			<div class="col-10">
				<input type="text" class="form-control" id="tile">
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">구분<span class="required">*</span></div>
			<div class="col-10">
				<select class="form-control category" id="categorySelect">
			      <option selected="selected">구분 선택</option>
			      <option>잡담</option>
			      <option>질문</option>
			      <option>일기</option>
				</select>
			</div>
		</div>
		<br>
		<br>
		<div class="row">
			<div class="col-2">내용<span class="required">*</span></div>
			<div class="col-10">
					<textarea class="form-control resize" id="content" rows="10"></textarea>
			</div>
		</div>
		<div class="row text-right">
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
					<button type="button" class="btn btn-primary" id="sendBtn">작성완료</button>
					<button type="button" class="btn btn-secondary">작성취소</button>
			</div>
		</div>
	</form>
	</div>




<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<br />
<div>
	<c:import url="Footer.jsp"></c:import>
</div>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame(
	{
		oAppRef: oEditors
		, elPlaceHolder: "content"
		, sSkinURI: "<%=cp%>/resource/se/SmartEditor2Skin.html"
		, htParams : 
		  {
			bUseToolbar : true
			, fOnBeforeUnload : function()
			  {
				//alert("아싸!");
			  }
		  }
		, //boolean
		  fOnAppLoad : function()
		  {
			  // 예제 코드
			  // oEditors.getById["content"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text."]);
		  }
		, fCreator : "createSEditor2"
	});

	function pasteHTML()
	{
		var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입한다.<\/span>";
		oEditors.getById["content"].exec("PASTE_HTML", [ sHTML ]);
	}

	function showHTML()
	{
		var sHTML = oEditors.getById["content"].getIR();
		alert(sHTML);
	}
	
	function submitContents(elClickedObj)
	{
		oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용된다.
		
		// 에디터의 내용에 대한 값 검증은 
		// 이곳에서 document.getElementById("content").value를 이용해서 처리하면 된다.
		
		try
		{
			// elClickedObj.form.submit();
			return check();
		} 
		catch (e)
		{
			
		}
	}

	function setDefaultFont()
	{
		var sDefaultFont = '돋움';
		var nFontSize = 24;
		oEditors.getById["content"].setDefaultFont(sDefaultFont, nFontSize);
	}
	</script>

</body>
</html>