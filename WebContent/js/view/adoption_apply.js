$(function() {
	
	  // 서술형 질문1 300자 제한
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
      $('#textarea2').keyup();
});