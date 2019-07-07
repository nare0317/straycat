$(document).ready(function()
{
	$(".requestUrl").text($(location).attr("href"));
	$(".requestUrl").css("font-weight", "bold");
});