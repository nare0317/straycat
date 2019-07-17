/*$(document).ready(getCommentList());

//댓글 글자수 세기
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
	// 댓글 내용을 입력하는데 성공하면 댓글 리스트를 다시 호출
	$.ajax({
		type : "GET",
		url : "<c:url value='commentinsert.ajax'/>",
		data : 	{
					"bbs_code" : $("#code").val(), 
					"user_code" : "${sessionScope.user_id}",
					"content" : $("#comment_input").val()
				},
		contentType: "application/x-www-form-urlencoded; charset=UTF-8", 
		success : function() {
			getCommentList();
		}
	});
	
	
});

function getCommentList(){
	console.log(document.getElementById("code").value);
	$.ajax({
     type:'GET',
     url : "<c:url value='/commentload.ajax'/>",
     url : "commentload.ajax",
     data:{"bbs_code" : $("#code").val()},
     success : function(data){
         console.log("success");
         console.log()
         var html = "";
         var commentCount = data.length;
         if(data.length > 0){
             for(i=0; i<data.length; i++)
             {
            	 html += "<div class='comment'>";
                 html += "<div class='comment-content'>";
                 html += "<div class='comment-writer-date'>";
                 html += "<h6 class='comment-writer'>" + data[i].NICKNAME;
                 html += "<span class='comment-date'>" + data[i].BBS_CMT_DATE + "</span>";
                 html += "</h6>";
                 html += "</div>";
                 html += "<p id='commentContent'>" + data[i].CONTENT + "</p>";
                 html += "</div></div>";
                 html += "<hr class='comment-hr'>";
             }
         } 
         else 
         {
        	 html += "<div class='comment'>";
             html += "<div class='comment-content'>";
             html += "<p id='commentContent'><strong>등록된 댓글이 없습니다.</strong></p>";
             html += "</div></div>";
             html += "<hr class='comment-hr'>";
             
         }
         
         $("#comment-number").text(commentCount);
         $("#comment-wrapper").html(html);
         
     },
     error:function(request,status,error){
    }
     
 });
}*/



























