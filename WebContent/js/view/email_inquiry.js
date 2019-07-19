$(document).ready(function() {
	
	// 이메일 호스트 선택 관련 function
	$("#mailHost").prop("readonly", true);
	$("#mailHost").val($("#mailHostSelector option:checked").text());
	
	// 이메일 호스트를 변경할 때,
	$("#mailHostSelector").change(function() {
		// 직접 입력일 경우엔 이메일 호스트를 입력하도록 함
		if ($("#mailHostSelector").val() == 4)
		{
			$("#mailHost").val("");
			$("#mailHost").prop("readonly", false);
			return;
		}
		// 그렇지 않으면 이메일 호스트를 직접입력 할 수 없음.
		else
		{
			$("#mailHost").prop("readonly", true);
		}
		$("#mailHost").val($("#mailHostSelector option:checked").text());
	});
	
	// 문의내용을 최대 20,000 자까지 입력할 수 있도록 제한하는 function
	// 20,000 자를 초과 입력하면 20,000 번째 글자까지 입력됨
	$("#content").keyup(function() {
		if ($("#content").val().length >= 20000)
		{
			$("#textCounter").css("color", "red");
			var str = $("#content").val();
			str = str.substring(0, 20000);
			$("#content").val(str);
		}
		else
		{
			$("#textCounter").css("color", "black");
			var textCnt = $("#content").val().length;
			$("#counter").text(textCnt);
		}
	});

	// 필수 입력 사항 확인
	$("#sendBtn").click(function() {
		$("#err").css("display", "none");
		if ($("#mailId").val()=="" || $("#mailId").val()==null || $("#title").val()=="" || $("#title").val()==null || $("#content").val()=="" || $("#content").val()==null)
		{
			$("#err").css("display", "block");
			return;
		}
		
		$("#emailForm").submit();
	});
	
	$("#uploadPicture").on("change", function()
	{
		var fileString = $(this).val().split("\\");
		var fileName = fileString[fileString.length-1];
		$("#fileName").val(fileName);
	})
});