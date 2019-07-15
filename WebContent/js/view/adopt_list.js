$(document).ready(function() {

	// 슬라이드메뉴 시작 위치 설정
	//var startPosition = parseInt($(".section-1").css('height'));
	//console.log(startPosition);

	$(".slidemenu").css("top", '431px');
	
	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($(".slidemenu").css('top'));
	// 여기서 숫자만 가져온다. parseInt( 값 );
	
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
	
});

// 입양등록 버튼 클릭 시, 
// 로그인 안한 사용자일 경우 로그인 페이지로 이동
function login_need()
{
	alert("로그인이 필요합니다.");
	window.location.href="login";
}

