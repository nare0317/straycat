$(document).ready(function()
{
	
	// 텍스트 에어리어 글자 수 제한(500자)-------------------
		$("#catEtc1").keyup(function() {				
			
			if ($("#catEtc1").val().length >= 500)
			{
				$("#counter1").css("color", "red");
				var str = $("#catEtc1").val();
				str = str.substring(0, 500);
				$("#catEtc1").val(str);
				
			}
			else
			{
				$("#counter1").css("color", "black");
				var textCnt = $("#catEtc1").val().length;
				$("#counter1").text(textCnt);
				
			};
		});
	
	
			$("#catEtc2").keyup(function() {				
			
			if ($("#catEtc2").val().length >= 500)
			{
				$("#counter2").css("color", "red");
				var str = $("#catEtc2").val();
				str = str.substring(0, 500);
				$("#catEtc2").val(str);
				
			}
			else
			{
				$("#counter2").css("color", "black");
				var textCnt = $("#catEtc2").val().length;
				$("#counter2").text(textCnt);
				
			};
		});
		// ------------------- 텍스트 에어리어 글자 수 제한(500자)

		
			

			
			
	
});