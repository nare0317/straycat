$(document).ready(function()
{
	$("#changePwdBtn").click(function()
	{
		// 비밀번호 입력란 어느 하나라도 입력이 안된 경우
		if ($("#oldPwd").val()=="" || $("#oldPwd").val()==null || $("#newPwd").val()=="" || $("#newPwd").val()==null || $("#newPwdConfirm").val()=="" || $("#newPwdConfirm").val()==null)
		{
			$(".err").text("비밀번호가 입력되지 않았습니다.");
			$(".err").css("display", "block");
			return;
		};
		
		// 비밀번호와 새 비밀번호가 똑같은 경우
		if ($("#oldPwd").val()==$("#newPwd").val())
		{
			$(".err").text("변경할 비밀번호가 현재 비밀번호와 같습니다.");
			$(".err").css("display", "block");
			return;
		};
		
		// 새 비밀번호와 새 비밀번호 확인이 다른 경우
		if ($("#newPwd").val()!=$("#newPwdConfirm").val())
		{
			$(".err").text("새 비밀번호와 새 비밀번호 확인이 다릅니다.");
			$(".err").css("display", "block");
			return;
		};
		
		$("#changeForm").submit();
	});
	
	$("#emailModifyBtn").click(function()
	{
		$("#emailModifyBtn").css("display", "none");
		
		var newEmail = $('<br><br><div class="input-group" style="width: 50%;"><div class="input-group-prepend"><span class="input-group-text">변경할 이메일</span></div><input id="newEmail" type="text" class="form-control"></div>');
		var newEmailConfirm = $('<br><div class="input-group" style="width: 50%;"><div class="input-group-prepend"><span class="input-group-text">변경할 이메일 확인</span></div><input id="newEmailConfirm" type="text" class="form-control"></div>');
		var newEmailBtn = $('<br><button id="changeEmailBtn" type="button" class="btn btn-outline-primary btn-sm">이메일 변경</button>');
		$("#emailContent").append(newEmail);
		$("#emailContent").append(newEmailConfirm);
		$("#emailContent").append(newEmailBtn);
	});
	
	$("#changeEmailBtn").click(function()
	{
		// 현재 이메일과 변경할 이메일이 같은지 확인
		
	});
});