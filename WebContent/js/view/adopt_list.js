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
	
	
	
	
	/*//---------------------- 고양이사진 크기조절  -------------------------------- 
	 $('.img-thumbnail img').each(function() 
	 {
	   //alert("함수호출");
       var maxWidth = 200; // Max width for the image
       var maxHeight = 200;    // Max height for the image
       var ratio = 0;  // Used for aspect ratio
       var width = $(".img_resize").width();    // Current image width
       var height = $(".img_resize").height();  // Current image height

       // Check if the current width is larger than the max
       if(width > maxWidth){
           ratio = maxWidth / width;   // get ratio for scaling image
           $(".img_resize").css("width", maxWidth); // Set new width
           $(".img_resize").css("height", height * ratio);  // Scale height based on ratio
           height = height * ratio;    // Reset height to match scaled image
           width = width * ratio;    // Reset width to match scaled image
       }

       // Check if current height is larger than max
       if(height > maxHeight){
           ratio = maxHeight / height; // get ratio for scaling image
           $(".img_resize").css("height", maxHeight);   // Set new height
           $(".img_resize").css("width", width * ratio);    // Scale width based on ratio
           width = width * ratio;    // Reset width to match scaled image
       }*/
  /* });*/
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
});

// 입양등록 버튼 클릭 시, 
// 로그인 안한 사용자일 경우 로그인 페이지로 이동
function login_need()
{
	alert("로그인이 필요합니다.");
	window.location.href="login";
}


function write_func()
{
	window.location.href="catregistration";
}
