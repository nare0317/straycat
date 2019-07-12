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

		// $("#city").append("<option value=''>::도시선ㅋ::</option>"); // 위의 반복문으로
		// 모두 삭제되어 있으므로 추가해준다.
		// 위의 명령문은 바로의 위의 엘리먼트가 1이아닌 0이었을 때 사용하면 됨.

		return;
	}

	//var url = "/adopt";

	var params = selectedGu;

	$.ajax(
	{
		type : "post"
		,
		url : 'adopt_gu'
		,
		data : { "dong" : params }
		,
		dataType : "json"
		,
		success : function(args)
		{
			//alert("success!");
			$("#dong option").each(function()
			{ // id가 city인 option요소에 적용할 반복문

				$("#dong option:eq(0)").remove(); // city option의 0번째 항목이
													// 없을때까지 0번쨰 항목을 지운다. (기존에
													// 있는거 모두 지운다.)

			});

			$("#dong").append("<option value=''>::동 선택::</option>"); // 동 선택을 붙인다.
			
			console.log(args.data);
			
			for (var idx = 0; idx < args.data.length; idx++)
			{ // 새로 가져온 데이터를 데이터 갯수만큼 반복해서 붙여준다.

				$("#dong").append(
						"<option value='" + args.data[idx].dong + "'>"
								+ args.data[idx].dong + "</option>");

				// append : 셀렉터로 선택된 놈의(여기서는 id가 city인 놈) 자식에게 계속 내용을 붙여준다. 기존
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

// 확인 버튼을 누르면 실행될 함수
	
function result()
{

	var gu = $("#gu").val();

	var dong = $("#dong").val();

	var selectedGu = $("#gu :selected").text();

	var selectedDong = $("#dong :selected").text();

	if (gu == "" || dong == "")
		return;

	var s = selectedGu + ":" + gu + ", " + selectedDong + ":" + dong;

	alert(s);

}
