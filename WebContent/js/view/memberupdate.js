$(document).ready(function()
{

	$("#emailCheck2").click(function()
	{
		var email1 = $("#updateEmail1").val();
		// alert(email);

		if (email1 == $("#newEmail").val())
		{
			alert("현재 사용중인 이메일입니다.");
		}

		var email = $("#newEmail").val();

		$.ajax(
		{
			url : "checkEmail",
			type : "post",
			data :
			{
				'email' : email
			},
			success : function(count)
			{
				if (count == 0)
				{
					alert("사용가능한 이메일입니다.");
					$("#email").val(email);
					$("#updateEmail1").val(email)
					email1 = $("#updateEmail1").val();
					alert(email1);
					return;
				} else
				{
					alert("중복된 이메일입니다.");
					return;
				}
			}
		});

	});
	$("#checkNickName").click(function()
	{
		var nickname = $("#updateNickName").val();

		alert(nickname);

	});

	$("#memberUpdateBtn").click(function()
	{
		if ($("#pwd1").val() == nul || $("#pwd1").val() == "")
		{
			alert("현재 비밀번호를 입력해주세요.");
		}
		if ($("#nPwd1").val() == $("#nPwd2"))
		{
			alert("비밀번호를 다시 한번 확인해주세요.");
			$("#nPwd1").val("");
			$("#nPwd2").val("");
		}

		$("#updateForm").submit();
	});

});