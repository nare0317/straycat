$(document).ready(function()
{
	// 비밀번호 변경 버튼을 클릭하면 입력란의 상태에 따라 경고 출력 
	$("#submitBtn").click(function()
	{
		// 새 비밀번호 또는 새 비밀번호 확인에 입력이 없다면 경고 표시
		if ($("#newPwd").val() == "" || $("#newPwd").val() == null || $("#newPwdConfirm").val()=="" || $("#newPwdConfirm").val()==null)
		{
			$("#err2").css("display","inline");
			return;
		};
		
		// 새 비밀번호와 새 비밀번호 확인이 일치하지 않는다면 경고 표시
		if ($("#newPwd").val() != $("#newPwdConfirm").val())
		{
			$("#err").css("display","inline");
			return;
		};
		
		$("#newPwdForm").submit();
	});
});