function dongList()
{
	var selectedGu = $("#gu").val(); 				// id가 gu인 요소의 값을 불러옴
	var selectedDong = $("#selectedDong").val();	// id가 selectedDong 인 요소의 값 ==> 지역 검색 시 선택한 동 값
	
	//alert(selectedDong);
	
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
		type : "post"				//-- POST 방식으로 데이터 전송
		,
		url : 'adopt_gu'			//-- 호출할 URL (AdoptController에 @RequestMapping으로 등록된 URL)
		,
		data : {"selectedGu" : selectedGu}	//-- ajax를 이용하여 서버에 요청을 할 때 서버로 전달할 인자(Parameter)
		,
		success : function(result)
		{
			var str = {};
			
			//alert(result.length);
			
			$("#dong option").each(function()
			{ // id가 dong인 option요소에 적용할 반복문

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
				
				
				if (result[i].DONG == selectedDong)
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
				// append : 셀렉터로 선택된 놈의(여기서는 id가 dong인 놈) 자식에게 계속 내용을 붙여준다. 
				//기존 자식이 있다면 그 뒤에 붙여줌.
			}
			
		}
		,
		error : function(e)
		{
			alert(e.responseText);
		}

	});

}