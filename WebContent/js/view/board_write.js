$(document).ready(function()
{
	// 필수 입력 사항 확인
	$("#sendBtn").click(function() 
	{
		// 다 안넣을때
		$(".err1").css("display", "none");
		$(".err2").css("display", "none");
		if(($("#boardContent").val()=="" || $("#boardContent").val()==null) && ($("#title").val()=="" || $("#title").val()==null) && ($("#categorySelect option").index($("#categorySelect option:selected")) == 0))
		{
			$(".err1").css("display", "block");
			$(".err2").css("display", "block");
			return;
		}
		// 필수입력사항만 안했을때
		else if(($("#boardContent").val()=="" || $("#boardContent").val()==null) && ($("#title").val()=="" || $("#title").val()==null))
		{
			$(".err1").css("display", "block");
			return;						
		}
		
		// select만 안했을때
		else if($("#categorySelect option").index($("#categorySelect option:selected")) == 0)
		{
			$(".err2").css("display", "block");
			return;		
		}
		
		// 둘다 입력했을때 submit
		else
		{
			$("#boardForm").submit();
		}
	});
	
});



