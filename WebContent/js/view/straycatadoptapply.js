$(document).ready(function()
{
	
	// 활동 내용을 최대 400 자까지 입력할 수 있도록 제한하는 function
	// 400 자를 초과 입력하면 400 번째 글자까지 입력됨
	$("#writtenQuestion").keyup(function()
	{
		if($("#writtenQuestion").val().length >= 400)
		{
			alert(400 +  "자를 초과 입력할 수 없습니다.");
			$("#textCounter").css("color", "red");
			var str = $("#writtenQuestion").val();
			str = str.substring(0, 400);
			$("#writtenQuestion").val(str);
		}
		else
		{
			$("#textCounter").css("color", "black");
			var textCnt = $("#writtenQuestion").val().length;
			$("#counter").text(textCnt);
		}
	});
	
	// 필수 입력 사항 확인
	$("#completeBtn").click(function()
	{
		$(".err1").css("display", "none");
		$(".err2").css("display", "none");
		
		// 필수입력사항 / select 둘다 안했을때
		if (($("#textarea").val()=="" || $("#textarea").val()==null) && ($("#declarationSelect option").index($("#declarationSelect option:selected")) == 0))
		{
			$(".err1").css("display", "block");
			$(".err2").css("display", "block");
			return;
		}
		
		// 필수입력사항만 안했을때
		else if($("#textarea").val()=="" || $("#textarea").val()==null)
		{
			$(".err1").css("display", "block");
			return;						
		}
		
		// select만 안했을때
		else if($("#doSelect option").index($("#declarationSelect option:selected")) == 0)
		{
			$(".err2").css("display", "block");
			return;		
		}
		
		// 둘다 입력했을때 submit
		else
		{
			$("#modalForm").submit();
		}
	});
	
	
	// 활동 필수 입력 사항 확인
	$("#completeBtn").click(function()
	{
		$(".err1").css("display", "none");
		if($("#activityContent").val() == "" || $("#activityContent").val()==null || $(':radio[name="activityRadio"]:checked').val() == null)
		{
			$(".err1").css("display", "block");
			return;
		}
			$("#activityForm").submit();
	});
});