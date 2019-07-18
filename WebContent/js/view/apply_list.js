$(document).ready(function()
{
	
	$(".send-message").click(function()
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
		
	});
	
	
	// "후보자최종선택" 버튼 클릭 시 
	$("#myBtn").click(function()
	{
		// 최종 선택한 사용자 ID값 
		var selectedUser = $("input[name='applicant-select']:checked").val();
		console.log(selectedUser);	//-- user5
		
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
	
	
	
});





