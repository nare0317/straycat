$(document).ready(function()
{
	// 아이디 밑에 쪽지보내기 링크 클릭 시 
/*	$(".send-message").click(function()
	{
		// 최종 선택한 사용자 ID값 
		//var selectedUser = $("input[name='applicant-select']:checked").val();
		
		alert("함수호출");
		
		// #sendMessage 로 이동
		$(this).attr("data-toggle", "modal");
		$(this).attr("data-target", "#sendMessage");
		
		// 최종 선택한 사용자 ID값 
		var selectedUser = $("input[name='applicant-select']:checked").val();
		$("#recipient-name").val(selectedUser);
		
	});*/
	
	
	//---------------------- 최종선택 모달 ----------------------------
	
	// "후보자최종선택" 버튼 클릭 시 
	$("#myBtn").click(function()
	{
		// 최종 선택한 사용자 ID값 
		var selectedUser = $("input[name='applicant-select']:checked").val();
		//console.log(selectedUser);	//-- user5
		
		// 후보자를 선택하지 않고 버튼을 눌렀을 경우
		if (selectedUser == undefined)
		{
			// #impossible 로 이동
			$(this).attr("data-target", "#impossible");
		}
		// 후보자를 선택하고 버튼을 눌렀을 경우
		else 
		{
			// #confirm 로 이동
			$(this).attr("data-target", "#confirm");
		}
	});
	
	// "최종선택을 하시겠습니까?" 팝업 창에서 
	// "최종선택하기"클릭했을 경우
	$("#finalSelect-btn").click(function()
	{
		
		// 상태값변경 (링크이동)
		var adt_code = $("#adt_code").val();
		var adt_proc = 'ADP5';
		//alert(adt_code + "/" + adt_proc);
		
		//$(location).attr("href","/adopt_proc?adt_proc='"+adt_proc+"'&adt_code='"+adt_code+"'");		
		//$(location).attr("href","<%=cp%>/adopt_proc?adt_proc=ADP5" + "&adt_code=" + $("#adt_code").val())
		// #myModal 로 이동
		$(this).attr("data-toggle", "modal");
		$(this).attr("data-target", "#myModal");
		
		// 최종 선택한 사용자 ID값 
		var selectedUser = $("input[name='applicant-select']:checked").val();
		$(".selectedUser").html(selectedUser);
	});
	
	// "매칭자와 바로 연락하기" 버튼 클릭 시 쪽지 보내는 팝업 
	$("#contact-btn").click(function()
	{
		$(this).attr("data-toggle", "modal");
		$(this).attr("data-target", "#sendMessage");
		
		// 최종 선택한 사용자 ID값 
		var selectedUser = $("input[name='applicant-select']:checked").val();
		$("#recipient-name").val(selectedUser);
	
	});
	
	
	//---------------------- 매칭률 계산 -------------------------------
	/*
	var ar_a1 = $("#ar_A1").val();
	var ar_a2 = $("#ar_A2").val();
	var ar_a3 = $("#ar_A3").val();
	var ar_a4 = $("#ar_A4").val();
	
	//console.log(ar_a1 + "/" + ar_a2 + "/" + ar_a3 + "/" + ar_a4);
	//RT3/ADJ2/RT3/ADFN2
	
	var ap1 = $("#A1").get(0).val();
	console.log(ap1);	
	
	var ap_a1 = $("#A1").val();
	var ap_a2 = $("#A2").val();
	var ap_a3 = $("#A3").val();
	var ap_a4 = $("#A4").val();
	
	console.log(ap_a1 + "/" + ap_a2 + "/" + ap_a3 + "/" + ap_a4);
	
	
	$('.applicant_answer li').each(function (index, item) 
	{ // 인덱스는 말 그대로 인덱스 
		// item 은 해당 선택자인 객체를 나타냅니다. 
		$(item).val();
		console.log($(item).val());
		// item 과 this는 같아서 일반적으로 this를 많이 사용합니다. 
		// $(this).addClass('li_0' + index); });
	});
*/
	
});





