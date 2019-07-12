$(document).ready(function()
{
	$("#loginBtn").click(function()
	{
		// 아이디나 비밀번호가 입력되었는지 확인
		if ($("#inputId").val()=="" || $("#inputId").val()==null || $("#inputPwd").val()=="" || $("#inputPwd").val()==null)
		{
			$("#inputError").css("display", "inline");
			return;
		};
		
/*		$("#loginForm").submit();
*/	});
});