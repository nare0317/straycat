$(document).ready(function()
{
	// 필수 입력 사항 확인
	$("#sendBtn").click(function() 
	{
		$("#err").css("display", "none");
		if ($("#title").val()=="" || $("#title").val()==null || $("#boardContent").val()=="" || $("#boardContent").val()==null || $("#categorySelect option").index($("#categorySelect option:selected")) == 0)
		{
			$("#err").css("display", "block");
			return;
		}
		$("#boardForm").submit();
	});
	
});