$(document).ready(function()
{
	// 이름 입력 수 제한(7자)
	// 입력창 밑에 span태그를 diplay none으로 지정.
	// 7 글자 넘으면 빨간 글씨로 경고문구 출력 및 7 글자 초과 입력 방지
	$("#nameCount").css("display", "none");
	$("#inputName").keyup(function() {
		
		
		
		if ($("#inputName").val().length > 7)
		{
			$("#nameCount").css("display", "inline");
			$("#nameCount").css("color", "red");
			var str = $("#inputName").val();
			str = str.substring(0, 7);
			$("#inputName").val(str);
			
		}
		else
		{
			$("#nameCount").css("display", "none");
			var textCnt = $("#inputName").val().length;
		};
	});
	
	
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
			
		
			
		$(".err").css("display", "none");
		// 필수 입력사항 확인
		$("#catRegistBtn").click(function()
		{
			if ( $("#inputName").val() == "" || $("#catRepImg").val()== null || ( $("#catGu option").index($("#catGu option:selected")) == 0 || $("#catDong option").index($("#catDong option:selected")) == 0 ) || ($("#catType option").index($("#catType option:selected")) == 0  && ($(':radio[name="customRadioInline1"]:checked').val() == null)))
			{
				$(".err").css("display", "block");
				$(".err").css("color", "red");
				return;		
			}
			
			else if ( $("#catGu option").index($("#catGu option:selected")) == 0 || $("#catDong option").index($("#catDong option:selected")) == 0 ) 
			{
				$(".err").css("display", "block");
				$(".err").css("color", "red");
				return;	
			}
			
			else if  ( $("#inptName").val() == "" )
			{
				$(".err").css("display", "block");
				$(".err").css("color", "red");
				return;
			}
			
			else if ( $("#catRepImg").val() == "" )
			{
				$(".err").css("display", "block");
				$(".err").css("color", "red");
				return;
			}
			
			else if ( $("#catType option").index($("#catType option:selected")) == 0  && ($(':radio[name="customRadioInline1"]:checked').val() == null) )
			{
				$(".err").css("display", "block");
				$(".err").css("color", "red");
				return;
			}
			else
			{
				$("#catRegForm").submit();
			}
			
		});
		
		
		
			
			
			
	
});