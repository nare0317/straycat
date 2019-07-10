$(document).ready(function()
{
	// 약관 전체 동의 클릭 시 모든 약관 체크/체크해제
	$("#allCheck").click(function()
	{
		if($("#allCheck").is(":checked"))
		{
			$("#termCheck1").prop("checked", true);
			$("#termCheck2").prop("checked", true);
		}
		else
		{
			$("#termCheck1").prop("checked", false);
			$("#termCheck2").prop("checked", false);
		}
	});
	
	// 모두 체크 되었는지 확인하고 경고 표시
	$("#agreeBtn").click(function()
	{
		if ($("#termCheck1").prop("checked") == false || $("#termCheck2").prop("checked") == false)
		{
			
			$("#errorDiv").css("display", "inline");
			$("#errorMsg").css("display", "inline");
			var termCheck1 = $('input:checkbox[id="termCheck1"]').is(':checked') + $('input:checkbox[id="termCheck2"]').is(':checked');
			var termCheck2 = $('input:checkbox[id="termCheck2"]').is(':checked');
			alert( termCheck1 );
		}
		else
		{
			var termCheck1 = $('input:checkbox[id="termCheck1"]').is(':checked');
			var termCheck2 = $('input:checkbox[id="termCheck2"]').is(':checked');
			
			window.location.href='join?termCheck='+ $('input:checkbox[id="termCheck1"]').is(':checked') + $('input:checkbox[id="termCheck2"]').is(':checked');
			
		}
	});
});