$(document).ready(function()
{
	
	// 게시물 링크에 마우스를 올리면 밑줄과 색 바뀜
	$(".contentLink").css("color", "black");
	
	$(".contentLink").mouseover(function()
	{
		$(this).css("color", "skyblue");
		$(this).css("text-decoration","underline");
		$(this).css("cursor", "pointer");
	});
	
	$(".contentLink").mouseout(function()
	{
		$(this).css("color", "black");
		$(this).css("text-decoration","");
	});
	
	$("#searchBtn").click(function()
	{
		if ($("#searchValue").val()=="" || $("#searchValue").val()==null)
		{
			alert("검색어를 입력해주세요.");
			return;
		}
		
		if ($("#searchKey").val()=="" || $("#searchKey").val()==null)
		{
			alert("검색기준을 선택해주세요.");
			return;
		}
		$("#searchForm").submit();
	});
});