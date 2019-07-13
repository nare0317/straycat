
// 댓글 글자수 세기
$(function() {
    $('#comment_input').keyup(function (e){
        var content = $(this).val();
        $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
        $('#current-word').html(content.length);
    });
    $('#comment_input').keyup();
});

$(document).ready(function(){
	$("#comment_submit").click(function(){
		if ($("#comment_input").val().length<0)
		{
			alert("댓글 내용을 입력해주세요.");
			return;
		}
		
		$.ajax({
			type : "POST",
			url : "",
			sucess : function()
			{
				
			}
		})
	})
});