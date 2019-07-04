$(document).ready(function()
{
	$("#newDatepicker").datepicker(
	{
		showOn : "button",
		buttonImage : "./img/small-calendar.png",
		buttonImageOnly : true,
		dateFormat : "yy.m.d.",
		changeMonth : true,
		changeYear : true
	});
	
	
});