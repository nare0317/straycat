$(document).ready(function()
{
	$("#loginBtn").click(function()
	{
		// 아이디나 비밀번호가 입력되었는지 확인
		if ($("#inputId").val()=="" || $("#inputId").val()==null || $("#inputPwd").val()=="" || $("#inputPwd").val()==null)
		{
			$("#inputError").css("display", "inline");
			return;
		};
		
/*		$("#loginForm").submit();
*/	});
	
	$(document).ready(function()
			{
				$("#loginBtn").click(function()
				{
					//console.log($("#inputId").val() , $("#inputPwd").val());
					$.ajax({
						type : "POST",
						url : "login_check_ajax",
						data : {'user_id' : $("#inputId").val() , 'user_pwd' : $("#inputPwd").val()},
						success : function(data)
						{
							console.log(data);
							if(data==1)
							{
								location.href='main';
							}
							else if(data==2)
							{
								alert("탈퇴한 회원의 정보입니다.");
								return;
							}
							else
							{
								alert("아이디 또는 패스워드가 일치하지 않습니다");
								return;
							}
						}					
					});
				});
			});
});