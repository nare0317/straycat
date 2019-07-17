$(document).ready(function()
{
	// 쪽지 내용을 최대 9,000 자까지 입력할 수 있도록 제한하는 function
	// 9,000 자를 초과 입력하면 9,000 번째 글자까지 입력됨
	$("#noteContent").keyup(function() {
		if ($("#noteContent").val().length >= 9000)
		{
			$("#textCounter").css("color", "red");
			var str = $("#noteContent").val();
			str = str.substring(0, 9000);
			$("#noteContent").val(str);
		}
		else
		{
			$("#textCounter").css("color", "black");
			var textCnt = $("#noteContent").val().length;
			$("#counter").text(textCnt);
		}
	});

	// 필수 입력 사항 확인
	$("#sendBtn").click(function() 
	{
		$("#err").css("display", "none");
		if ($("#receive").val()=="" || $("#receive").val()==null || $("#tile").val()=="" || $("#tile").val()==null || $("#noteContent").val()=="" || $("#noteContent").val()==null)
		{
			$("#err").css("display", "block");
			return;
		}
		
		$("#messageForm").submit();
	});
	
});