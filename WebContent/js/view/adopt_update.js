$(document).ready(function()
{	
	// ★★★★ jQuery 달력 ui ★★★★	
	$(".datepicker").datepicker(
	{
		//showOn : "button",
		//buttonImage : "./img/small-calendar.png",
		//buttonImageOnly : true,
		dateFormat : "yy-mm-dd",
		changeMonth : true,
		changeYear : true
	});

	//---------------------------------------------------------------
	//★★★★ 게시글 등록 시 선택값으로 세팅 ★★★★
	
	// 고양이종류 (코숏/품종) 선택값 세팅
	$("#cat_type option").each(function()
	{
		//console.log($(this).val() +"==" + $("#cat_type_selected").val());
		
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
	
	// 구 선택값이 변경되었을 경우, 동 선택값 초기화
	$("#gu").change(function()
	{
		gudongChange();
	});
	
	// 고양이종류 라디오버튼 세팅 
	
	// 1 - 등록 시 선택한 고양이종류값을 가져와 image-radio-checked 클래스를 추가(테두리효과)
	var cat_species_selected = $("#cat_species_selected").val()
	$("label[for='"+ cat_species_selected +"']").addClass('image-radio-checked');
	
	alert(cat_species_selected);
	alert($("label[for='"+cat_species_selected+"']"));
	//console.log("cat_species_selected : " + cat_species_selected);
	
	
	// 2 - 다른 고양이 종류를 클릭했을 때, 
    $(".image-radio").on("click", function(e){	
        
    	// 원래 선택되어 있던 종류에서 image-radio-checked 클래스를 제거하고(테두리효과 없어짐)
    	$(".image-radio").removeClass('image-radio-checked');	
    	// 클릭한 고양이에게 image-radio-checked 클래스를 부여함(테두리효과)
    	$(this).addClass('image-radio-checked');	
    	// 클릭한 고양이종류의 값을 가져와 
        var cat_species = $(this).val();
        // checked 속성을 부여함. 
        $("input:radio[name='cat_species'][value='"+cat_species+"']").prop('checked', true);
        
        e.preventDefault();	
    });	
	
	
    // 고양이나이(성묘/아기묘) 라디오버튼 세팅
	var cat_age_type_selected = $("#cat_age_type_selected").val()
    $("input:radio[name='cat_age_type'][value='"+cat_age_type_selected+"']").prop('checked', true);
	
	// 고양이성별 라디오버튼 세팅
	var cat_sex_selected = $("#cat_sex_selected").val()
    $("input:radio[name='cat_sex'][value='"+cat_sex_selected+"']").prop('checked', true);
	
	// 입양분류
	var adt_type_selected = $("#adt_type_selected").val()
    $("input:radio[name='adt_type'][value='"+adt_type_selected+"']").prop('checked', true);
	
	// 설문(고양이 길러본 경험)
	var cat_exp_selected = $("#cat_exp_selected").val()
    $("input:radio[name='adt_cat_exp'][value='"+cat_exp_selected+"']").prop('checked', true);
	
	// 설문(직업)
	var job_selected = $("#job_selected").val()
    $("input:radio[name='adt_job'][value='"+job_selected+"']").prop('checked', true);
	
	// 설문(결혼여부)
	var marriage_selected = $("#marriage_selected").val()
    $("input:radio[name='adt_marriage'][value='"+marriage_selected+"']").prop('checked', true);
	
	// 설문(가족 구성원 수)
	var family_num_selected = $("#family_num_selected").val()
    $("input:radio[name='adt_family_num'][value='"+family_num_selected+"']").prop('checked', true);
});



//--------------------------------------------------------------------------------

//★★★★ 구/동 리스트 불러오는 함수 ★★★★
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


function gudongChange()
{
	var selectedGu = $("#gu").val(); // 변경된 구 선택값을 불러옴
	
	$("#dong option").each(function()
	{ // ID가 dong이며 option인 요소를

		$("#dong option:eq(1)").remove(); // dong option의 1번째를 계속 삭제
										  //(0번째만 남기고 모두 지우게 된다) , eq : 지정된
										  // index 번째의 엘리먼트 선택
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
				{ // 새로 가져온 데이터를 데이터 갯수만큼 반복해서 붙여준다.

					$("#dong").append(
							"<option value='" + result[i].DONG + "'>"
									+ result[i].DONG + "</option>");

					// append : 셀렉터로 선택된 놈의(여기서는 id가 dong인 놈) 자식에게 계속 내용을 붙여준다. 기존
					// 자식이 있다면 그 뒤에 붙여줌.
				}
			}
			,
			error : function(e)
			{
				alert(e.responseText);
			}

		});
	});
}

//★★★★ 부트스트랩 form validation check ★★★★	
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

//--------------------------------------------------------------------------------