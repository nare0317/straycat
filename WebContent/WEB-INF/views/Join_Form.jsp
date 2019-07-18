<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<title>회원가입</title>
<c:import url="Head.jsp"></c:import>

<!-- 페이지 CSS, 자바스크립트 -->
<link rel="stylesheet" href="<%=cp%>/css/view/join_form.css">
<script type="text/javascript" src="<%=cp%>/js/view/join_form.js"></script>
</head>
<body>

	<c:import url="Menu.jsp"></c:import>

	<div class="container">
		<div class="breadcrumbs">
			<ul>
				<li class="list-inline-item"><a class="text-dark"
					href="<%=cp%>/Main.jsp"><i class="fas fa-home"></i></a></li>
				<li class="list-inline-item">></li>
				<li class="list-inline-item">회원가입</li>
			</ul>
		</div>

		<div class="card">
			<div class="card-body">
				<div class="text-center">
					<h1>회원가입</h1>
					<span class="caution"><span class="required">*</span> 표시는 필수
						입력 항목입니다. 반드시 입력해 주세요.</span>
				</div>
				<br>
				<div>
					<form id="joinForm" action="joincomplete" method="post">
						<table class="table">
							<tr>
								<th>아이디<span class="required">*</span></th>
								<td colspan="2">
									<input id="idInput" type="text" name="idInput"	class="form-control inputbox">
									<button id="idCheck" type="button" class="btn btn-outline-primary btn-sm">중복확인</button>
									<input id="check1" type="hidden">
								</td>
							</tr>
							<tr>
								<th>비밀번호<span class="required">*</span></th>
								<td class="inputbox" colspan="2"><input type="password" name="pwd" id="pwd" class="form-control" class="w300"><br> <span
									class="caution">영문+숫자+특수기호를 모두 포함하여 8자리 이상으로 구성하여야 합니다.</span><br></td>
							</tr>
							<tr>
								<th>비밀번호 확인<span class="required">*</span></th>
								<td class="inputbox" colspan="2"><input type="password" id="pwdConfirm" name="pwdConfirm" class="form-control" class="w300"><br>
									<span class="caution">확인을 위해 한 번 더 입력하세요.</span></td>
							</tr>
							<tr>
								<th>닉네임<span class="required">*</span></th>
								<td colspan="2"><input id="nickname" type="text" name="nickname" class="form-control inputbox">
									<button id="nickNameCheck" type="button" class="btn btn-outline-primary btn-sm">중복확인</button>
									<input id="check2" type="hidden">
								</td>
							</tr>
							<tr>
								<th>이메일<span class="required">*</span></th>
								<td colspan="2"><input id="email" name="email" type="email" class="form-control inputbox">
									<button id="emailCheck" type="button" class="btn btn-outline-primary btn-sm">중복확인</button>
									<input id="check3" type="hidden">
								</td>
							</tr>
							<tr>
								<th rowspan="4">실명확인<span class="required">*</span></th>
							</tr>
							<tr>
								<td colspan="4"><button type="button"
										class="btn btn-outline-primary btn-sm" data-toggle="modal"
										data-target="#exampleModal">실명확인</button>
										<input id="check4" type="hidden"></td>
										
							</tr>
							<tr>
								<th>성명<span class="required">*</span></th>
								<td colspan="2"><input type="text" id="name" name="name" class="form-control" readonly="readonly"></td> 		
							</tr>
							<tr>
								<th>전화번호<span class="required">*</span></th>
								<td colspan="2">
									<div class="form-row">
										<div class="col">
											<input id="tel1" name="tel1" type="text" class="form-control"
												readonly="readonly">
										</div>
										-
										<div class="col">
											<input id="tel2" name="tel2" type="text" class="form-control"
												readonly="readonly">
										</div>
										-
										<div class="col">
											<input id="tel3" name="tel3"  type="text" class="form-control"
												readonly="readonly">
										</div>
									</div>
								</td>
							<tr>
								<th>주소<span class="required">*</span></th>
								<td colspan="3">
									<input type="text" id="sample6_address" name="address" class="form-control inputbox local" placeholder="주소" readonly="readonly">
									<button type="button" class="btn btn-outline-primary btn-sm" onclick="sample6_execDaumPostcode()">주소 검색</button>
								</td>
							</tr>
						</table>
						<br>
						<div class="errDiv">
							<span class="err"></span>
						</div>
						<br>
						<div class="mButton gCenter">
							<button id="joinBtn" type="button" class="btn btn-primary">회원가입</button>
							<button id="cancelBtn" type="button" class="btn btn-secondary"
								onclick="location.href='main'">취소</button>
						</div>
					</form>
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
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">실명 확인</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<table>
						<tr>
							<th>성명<span class="required">*</span></th>
							<td colspan="2"><input type="text" id="cname" 	class="form-control" ></td>
						</tr>
						<tr>
							<th>전화번호<span class="required">*</span></th>
							<td colspan="2">
								<div class="form-row">
									<div class="col">
										<input id="ctel1" type="text" class="form-control">
									</div>
									-
									<div class="col">
										<input id="ctel2" type="text" class="form-control">
									</div>
									-
									<div class="col">
										<input id="ctel3" type="text" class="form-control">
									</div>
								</div>
							</td>
						<tr>
					</table>
					<div class="errDiv">
						<span class="err1"></span>
					</div>
				</div>
				<div class="modal-footer">
					<button id="nameCheck2" type="button" class="btn btn-primary" >실명 확인</button>
					<button type="button" class="btn btn-primary"
						data-dismiss="modal">확인 완료</button>
					
				</div>
			</div>
		</div>
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