$(document).ready(function()
{
	$("#firstDatepicker").datepicker(
	{
		showOn : "button",
		buttonImage : "./img/small-calendar.png",
		buttonImageOnly : true,
		dateFormat : "yy.m.d.",
		changeMonth : true,
		changeYear : true
	});
	
	$("#secondDatepicker").datepicker(
	{
		showOn : "button",
		buttonImage : "./img/small-calendar.png",
		buttonImageOnly : true,
		dateFormat : "yy.m.d.",
		changeMonth : true,
		changeYear : true
	});
	
	$('#firstDatepicker').datepicker('setDate', 'today');
	$('#secondDatepicker').datepicker('setDate', 'today');
});