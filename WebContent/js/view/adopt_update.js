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
	
	
	// 고양이종류 라디오버튼 세팅 (안됨 ㅠㅠ 사진때문에 추가로 작업해줘야할듯..)
	console.log($("#cat_species_selected").val());
	var cat_species_selected = $("#cat_species_selected").val()
	 $("input:radio[name='cat_age_type'][value='"+cat_species_selected+"']").prop('checked', true);
	
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
    $("input:radio[name='cat_exp'][value='"+cat_exp_selected+"']").prop('checked', true);
	
	// 설문(직업)
	var job_selected = $("#job_selected").val()
    $("input:radio[name='job'][value='"+job_selected+"']").prop('checked', true);
	
	// 설문(결혼여부)
	var marriage_selected = $("#marriage_selected").val()
    $("input:radio[name='marriage'][value='"+marriage_selected+"']").prop('checked', true);
	
	// 설문(가족 구성원 수)
	var family_num_selected = $("#family_num_selected").val()
    $("input:radio[name='family_num'][value='"+family_num_selected+"']").prop('checked', true);
});



//--------------------------------------------------------------------------------

// ★★★ 구/동 리스트 불러오는 함수 ★★★
$(document).ready(function()
{
	dongList();
	
});


//★★★ 구/동 리스트 불러오는 함수 ★★★
function dongList()
{
	var selectedGu = $("#gu").val(); // ID가 gu인 요소의 값을 불러옴

	if (selectedGu == "")
	{ // selectedGu에 ""가 선택되어있다면

		$("#dong option").each(function()
		{ // ID가 dong이며 option인 요소를

			$("#dong option:eq(1)").remove(); // dong option의 1번째를 계속 삭제
											  //(0번째만 남기고 모두 지우게 된다) , eq : 지정된
											  // index 번째의 엘리먼트 선택

		});
		
		//$("#dong").append("<option value=''>동 선택</option>"); // 동 선택을 붙인다.

		return;
	}

   
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
			
			/*
			//방법1
			for (var i = 0; i < result.length; i++) {
				str += '<option value="' + result[i].DONG + '">' + result[i].DONG + '</option>';
				console.log(result[i].dong);
			}
			
			$('#dong').html(str);
			*/
			
			// 방법2
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

}
