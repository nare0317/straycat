$(document).ready(function()
{
	// 비밀번호 찾기 버튼을 클릭하면 입력하지 않은 항목이 있는지 확인함
	$("#submitBtn").click(function()
	{
		var id = $("#userId").val();
		var email = $("#email").val();
		
		if (id == "" || id == null || email == "" || email == null)
		{
			$("#err1").css("display", "inline");
			return;
		};
		
		$("#findForm").submit();
	});
	
	
});