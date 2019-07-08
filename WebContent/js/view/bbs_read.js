
// 댓글 글자수 세기
$(function() {
    $('#comment_input').keyup(function (e){
        var content = $(this).val();
        $(this).height(((content.split('\n').length + 1) * 1.5) + 'em');
        $('#current-word').html(content.length);
    });
    $('#comment_input').keyup();
});