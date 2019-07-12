$(function() {
	
	  /*// 서술형 질문1 300자 제한
      $('#textarea').keyup(function (e){
          var content = $(this).val();
          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
          $('#counter').html(content.length + '/300');
      });
      $('#textarea').keyup();
      
      // 서술형 질문2 300자 제한
      $('#textarea1').keyup(function (e){
          var content = $(this).val();
          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
          $('#counter1').html(content.length + '/300');
      });
      $('#textarea1').keyup();
      
      // 서술형 질문3 300자 제한
      $('#textarea2').keyup(function (e){
          var content = $(this).val();
          $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
          $('#counter2').html(content.length + '/300');
      });
      $('#textarea2').keyup();*/
      
	
	// 신고 내용을 최대 1000 자까지 입력할 수 있도록 제한하는 function
	// 1000 자를 초과 입력하면 1000 번째 글자까지 입력됨
	$("#exampleFormControlTextarea").keyup(function()
	{
		if($("#exampleFormControlTextarea").val().length >= 1000)
		{
			$("#counter").css("color", "red");
			var str = $("#exampleFormControlTextarea").val();
			str = str.substring(0, 1000);
			$("#exampleFormControlTextarea").val(str);
		}
		else
		{
			$("#counter").css("color", "black");
			var textCnt = $("#exampleFormControlTextarea").val().length;
			$("#counter").text(textCnt);
		}
	});
      

      
});