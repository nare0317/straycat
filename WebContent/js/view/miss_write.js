// ★★★★ jQuery 달력 ui ★★★★	

 $(document).ready(function()		
{	
	$("#date").datepicker(	
	{	
		dateFormat : "yy-mm-dd",	
		changeMonth : true,	
		changeYear : true	
	});	// 달력	

 });	


 //★★★★ 고양이종류사진 radio 버튼 ★★★★	
$(document).ready(function(){	
    // add/remove checked class	
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
});	


//------------------------- 이미지 첨부 ---------------------------
$(document).ready(function()
{
	$("#uploadPicture").on("change",function(){readURL(this);});

	function readURL(input) { 
		if (input.files && input.files[0]) 
		{ 
			var reader = new FileReader(); //파일을 읽기 위한 FileReader객체 생성 
	        
			// 파일 읽어들이기를 성공했을때 호출되는 이벤트 핸들러
			reader.onload = function (e) { 
			// 이미지 Tag의 SRC속성에 읽어들인 File내용(아래 코드에서 읽어들인 dataURL형식)을 지정 
			$('#catPicture').attr('src', e.target.result); 
	        }                    
			reader.readAsDataURL(input.files[0]);
			//File내용을 읽어 dataURL형식의 문자열로 저장 
		}
	}
});



// ★★★★ 부트스트랩 form validation check ★★★★	
(function() {
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