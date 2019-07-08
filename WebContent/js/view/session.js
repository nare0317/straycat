$(document).ready(function()
	{
		$("#clickBtn").click(function(){
			if($("#defaultCheck1").is(":checked") == false)
			{
				alert("동의버튼을 눌러주세요");
				return;
			}
			$("#formCheck").submit();			
		});
});