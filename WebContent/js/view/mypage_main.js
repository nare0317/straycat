$(document).ready(function()
{
	$("#allCheck").click(function()
	{
		if($("#allCheck").prop("checked"))
		{
			// 해당화면에 모든 checkbox들의 체크를선택시킨다.
			$("input[name='allCheck1']").prop("checked",true);
		}
		else 
		{ 
			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
			$("input[name='allCheck1']").prop("checked",false);
		}
	});
	$("#allCheck2").click(function()
	{
		if($("#allCheck2").prop("checked"))
		{
			// 해당화면에 모든 checkbox들의 체크를선택시킨다.
			$("input[name='allCheck2']").prop("checked",true);
		}
		else 
		{ 
			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
			$("input[name='allCheck2']").prop("checked",false);
		}
	});
});