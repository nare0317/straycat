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



//★★★ 게시글 등록 시 선택값으로 세팅 ★★★
$(document).ready(function()
{	
	//alert($("#cat_type_selected").val());
	
	// 고양이종류 (코숏/품종) 선택값 세팅
	$("#cat_type option").each(function()
	{
		if($(this).val()== $("#cat_type_selected").val())
	    {
	      $(this).attr("selected","selected");  
	    };
	});
	
	// 구 선택값 세팅
	$("#gu option").each(function()
	{
		if($(this).val()== $("#gu_selected").val())
	    {
	      $(this).attr("selected","selected");  
	    };
	});
	
	// 동 선택값 세팅
	$("#dong option").each(function()
	{
		if($(this).val()== $("#dong_selected").val())
	    {
	      $(this).attr("selected","selected");  
	    };
	});
	
	
	// 고양이종류 라디오버튼 세팅 (안됨 ㅠㅠ 왜지ㅠㅠ)
	//console.log($("#cat_species_selected").val());
    //$('input[name="cat_species"]').val(['SP2']); 

    // 고양이나이(성묘/아기묘) 라디오버튼 세팅
	console.log($("#cat_age_type_selected").val());
	//var cat_age_type_selected = $("#cat_age_type_selected").val()
    //$('input[name="cat_age_type"]').html(["'"+$("#cat_age_type_selected").val()+"'"]);
	
	
});



//--------------------------------------------------------------------------------

// ★★★ 구/동 리스트 불러오는 함수 ★★★
$(document).ready(function()
{
	
	var selectedGu = $("#gu").val(); // ID가 gu인 요소의 값을 불러옴
	
	//alert(selectedGu);

	$.ajax(
	{
		type : "post"
		,
		url : 'adopt_gu'
		,
		data : {"selectedGu" : selectedGu}
		,
		success : function(result)
		{
			//alert("success!");
			//alert(selectedGu);
			
			var str = {};
			
			//alert(result.length);
			
			$("#dong option").each(function()
			{ // id가 city인 option요소에 적용할 반복문

				$("#dong option:eq(0)").remove();   // 동 option의 0번째 항목이
													// 없을때까지 0번쨰 항목을 지운다. 
													// (기존에 있는거 모두 지운다.)
			});
			
			$("#dong").append("<option value=''>동 선택</option>"); // 동 선택을 붙인다.
			
			
			for (var i = 0; i < result.length; i++)
			{ 
				// 등록 시 선택한 동과 같은 값이라면 selected 속성을 추가
				if($("#dong_selected").val() == result[i].DONG)
			    {
					$("#dong").append(
							"<option value='" + result[i].DONG + "' selected>"
									+ result[i].DONG + "</option>");
			    }
			    else 
			    {
			    	$("#dong").append(
							"<option value='" + result[i].DONG + "'>"
									+ result[i].DONG + "</option>");
				}
			}
		}
		,
		error : function(e)
		{
			alert(e.responseText);
		}

	});

});
