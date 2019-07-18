$(document).ready(function() {

	//---------------------- 우측 슬라이드 바 이동 --------------------------------
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
	
	//---------------------- 신고내역 글자수 세기 --------------------------------
	 $('#comment_input').keyup(function (e){
	     var content = $(this).val();
	     $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
	     $('#current-word').html(content.length);
	 });
	 $('#comment_input').keyup();
	
	 
	 
	//---------------------- 마감일자 카운트  --------------------------------
 	 // 첫번째 인수 => 마감 일자
	 // 두번째 인수 => 남은 시간 표시할 HTML 영역 id 속성값
	 
	 var endDate = $("#endDate").val();
	 //alert(endDate);	//--2019-07-26 15:45:09.0
	 
	 CountDownTimer(endDate, "leftDate");
	 
	 
	 
	 
	//---------------------- 고양이사진 크기조절  -------------------------------- 
	 /*$('.img-thumbnail img').each(function() 
	 {*/
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
        }
   /* });*/
});

// 날짜 카운트다운 함수
 function CountDownTimer(dt, id)
 {
     var end = new Date(dt);

     var _second = 1000;
     var _minute = _second * 60;
     var _hour = _minute * 60;
     var _day = _hour * 24;
     var timer;

     function showRemaining() {
         var now = new Date();
         var distance = end - now;
         if (distance < 0) {

             clearInterval(timer);
             document.getElementById(id).innerHTML = 'EXPIRED!';

         return;
     }
     var days = Math.floor(distance / _day);
     var hours = Math.floor((distance % _day) / _hour);
     var minutes = Math.floor((distance % _hour) / _minute);
     var seconds = Math.floor((distance % _minute) / _second);
     
     document.getElementById(id).innerHTML = days + '일 ';
     document.getElementById(id).innerHTML += hours + '시간 ';
     document.getElementById(id).innerHTML += minutes + '분 ';
     document.getElementById(id).innerHTML += seconds + '초';
     }

     timer = setInterval(showRemaining, 1000);
 }

