$(document).ready(function() {

	// 슬라이드메뉴 시작 위치 설정
	$(".slidemenu").css("top", "400px");
	
	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($(".slidemenu").css('top'));
	// 여기서 숫자만 가져온다. parseInt( 값 ); → 400
	
	// 슬라이드메뉴 끝 위치 값
	var bottomPosition = parseInt($("#content").css('height'));
	
	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition;
		
		if (newPosition > bottomPosition)
		{
			newPosition = bottomPosition - 100;
		};
		
		var newPosition = newPosition + "px";
		
		$(".slidemenu").stop().animate({
			"top" : newPosition
		}, 1000);
		
	}).scroll();
	
	// 신고내역 글자수 세기 
	 $('#comment_input').keyup(function (e){
	     var content = $(this).val();
	     $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
	     $('#current-word').html(content.length);
	 });
	 $('#comment_input').keyup();
	
});