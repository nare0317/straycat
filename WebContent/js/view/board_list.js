$(document).ready(function()
{
	
	// 게시물 링크에 마우스를 올리면 밑줄과 색 바뀜
	$(".contentLink").css("color", "black");
	
	$(".contentLink").mouseover(function()
	{
		$(this).css("color", "skyblue");
		$(this).css("text-decoration","underline");
	});
	
	$(".contentLink").mouseout(function()
	{
		$(this).css("color", "black");
		$(this).css("text-decoration","");
	});
});