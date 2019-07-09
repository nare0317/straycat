$(document).ready(function()
{
	// 아이디 찾기 버튼을 클릭하면 입력란이 공백인지 확인함.
	$("#findIdBtn").click(function()
	{
		if ($("#userId").val()=="" || $("#userId").val()==null)
		{
			$(".err").css("display", "inline");
			return;
		};
		
		$("#findForm").submit();
	});
});