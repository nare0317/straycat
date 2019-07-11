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
      
      
      // 선택형 질문 라디오 버튼
      $(".image-radio").each(function(){	
          if($(this).find('input[type="radio"]').first().attr("checked")){	
              $(this).addClass('image-radio-checked');	
          }else{	
              $(this).removeClass('image-radio-checked');	
          }	
      });	

      // sync the input state	
      $(".image-radio").on("click", function(e){	
          $(".image-radio").removeClass('image-radio-checked');	
          $(this).addClass('image-radio-checked');	
          var $radio = $(this).find('input[type="radio"]');	
          $radio.prop("checked",!$radio.prop("checked"));	

           e.preventDefault();	
      });
      
      // 부트스트랩 form validation check	
      (function() 	
      {	
        'use strict';	
        window.addEventListener('load', function() {	
          // Fetch all the forms we want to apply custom Bootstrap validation styles to	
          var forms = document.getElementsByClassName('needs-validation');	
          // Loop over them and prevent submission	
          var validation = Array.prototype.filter.call(forms, function(form) {	
            form.addEventListener('submit', function(event) {	
              if (form.checkValidity() === false) {	
                event.preventDefault();	
                event.stopPropagation();	
              }	
              form.classList.add('was-validated');	
            }, false);	
          });	
        }, false);	
      })();
      
});