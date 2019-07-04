$(document).ready(function()
{
	$("#loginBtn").click(function()
	{
		if ($("#inputId").val()=="" || $("#inputId").val()==null || $("#inputPwd").val()=="" || $("#inputPwd").val()==null)
		{
			$("#inputError").css("display", "inline");
			return;
		};
		
		$("#loginForm").submit();
	});
});