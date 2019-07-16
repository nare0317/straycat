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
	<title>회원정보 수정</title>
	<c:import url="Head.jsp"></c:import>
	
	<!-- 페이지 CSS, 자바스크립트 -->
	<link rel="stylesheet" href="<%=cp %>/css/view/member_update.css">
		<script	src="<%=cp%>/js/view/memberupdate.js"></script>
</head>
<body>


<c:import url="Menu.jsp"></c:import>

<div class="container">
	<div class="card">
	  <div class="card-body">
	    <h1>회원정보 수정</h1>
	    <div>
	    	<form id="updateForm" action="updateComplete" method="post">
		    	<table class="table">
		    		<tr>
				      <th>닉네임</th>
				      <td><input type="text" id="nickName" name="nickName" value=""><input type="hidden" id="updateNickName" value="${memberInfo.NICKNAME }">
				      <button type="button"  id="checkNickName" class="btn btn-outline-primary btn-sm" >중복 조회</button></td>
				    </tr>
				    <tr>
				      <th>이메일</th>
				      <td><input type="text" id="email" name="updateEmail" readonly="readonly" value=""><input type="hidden" id="updateEmail1" value="${memberInfo.EMAIL }">
				      <button type="button"  id="checkEmail" class="btn btn-outline-primary btn-sm" data-toggle="modal"
										data-target="#exampleModal">이메일 변경</button></td>
				    </tr>
				    <tr>
				      <th>비밀번호 변경</th>
				      <td><small class="small">영문+숫자+특수기호를 모두 포함하여 8자리 이상으로 구성하여야 합니다.</small>
							<div class="input-group w50">
								<div class="input-group-prepend">
									<span class="input-group-text">신규 비밀번호</span>
								</div>
									<input type="password" id="nPwd1" name="nPwd1" class="form-control">
							</div><br>
							<div class="input-group w50">
								<div class="input-group-prepend">
									<span class="input-group-text">비밀번호 다시 입력</span>
								</div>
									<input type="password" id="nPwd2" name="nPwd2" class="form-control">
							</div><br>
					  </td>
				    </tr>
					<tr>
					<th>주소<span class="required">*</span></th>
					<td colspan="3">
						<input type="text" id="sample6_address"	name="address" class="form-control inputbox local" placeholder="주소" readonly="readonly">
						<input type="hidden" id="memAddress" name="memAddress" value="${memberInfo.ADDRESS_CODE }">
						<button type="button" class="btn btn-outline-primary btn-sm" onclick="sample6_execDaumPostcode()">주소 검색</button>
					</td>
					</tr>
			</table>
				<div class="alignRight">탈퇴를 원하시면 우측의 회원탈퇴 버튼을 눌러주세요. 
				<button type="button" id="memberLeaveBtn" class="btn btn-secondary btn-sm" onclick="location.href='<%=cp%>/leaveAgree'">회원탈퇴</button></div><br><br>
				<div class="mButton gCenter">
					<button type="button" id="memberUpdateBtn" name="memberUpdateBtn" class="btn btn-secondary">변경하기</button>
				</div>
			</form>
	    </div>
	  </div>
	</div>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">이메일 변경</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<table>
						<tr>
							<th>새 이메일<span class="required">*</span></th>
							<td colspan="2"><input type="text" id="newEmail" class="form-control" ></td>
						</tr>

					</table>
					<div class="errDiv">
						<span class="err1"></span>
					</div>
				</div>
				<div class="modal-footer">
					<button id="emailCheck2" type="button" class="btn btn-primary" >중복 확인</button>
					<button type="button" class="btn btn-primary"
						data-dismiss="modal">확인 완료</button>
					
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
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=35831b6d578cf29259f031b43458c225&libraries=services"></script>
<script type="text/javascript">
	
	
	
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {

            	var addr = data.jibunAddress;
            	$("#sample6_address").val(addr);// 사용자가 입력한 상세주소(지번)출력
				return;
                
            }
        }).open();
    }
</script>

</body>
</html>