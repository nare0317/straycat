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


// ★★★★ 부트스트랩 form validation check ★★★★	
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