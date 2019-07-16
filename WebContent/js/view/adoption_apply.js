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
      
	
	// 서술형 질문 답변 최대 300자까지 입력할 수 있도록 제한하는 function
	// 300 자를 초과 입력하면 300 번째 글자까지 입력됨
	$("#exampleFormControlTextarea").keyup(function() {
		if ($("#exampleFormControlTextarea").val().length >= 300) {
			$("#counter").css("color", "red");
			var str = $("#exampleFormControlTextarea").val();
			str = str.substring(0, 300);
			$("#exampleFormControlTextarea").val(str);
		} else {
			$("#counter").css("color", "black");
			var textCnt = $("#exampleFormControlTextarea").val().length;
			$("#counter").text(textCnt);
		}
	});

	$("#exampleFormControlTextarea1").keyup(function() {
		if ($("#exampleFormControlTextarea1").val().length >= 300) {
			$("#counter1").css("color", "red");
			var str = $("#exampleFormControlTextarea1").val();
			str = str.substring(0, 300);
			$("#exampleFormControlTextarea1").val(str);
		} else {
			$("#counter1").css("color", "black");
			var textCnt = $("#exampleFormControlTextarea1").val().length;
			$("#counter1").text(textCnt);
		}
	});

	$("#exampleFormControlTextarea2").keyup(function() {
		if ($("#exampleFormControlTextarea2").val().length >= 300) {
			$("#counter2").css("color", "red");
			var str = $("#exampleFormControlTextarea2").val();
			str = str.substring(0, 300);
			$("#exampleFormControlTextarea2").val(str);
		} else {
			$("#counter2").css("color", "black");
			var textCnt = $("#exampleFormControlTextarea2").val().length;
			$("#counter2").text(textCnt);
		}
	});

      
});