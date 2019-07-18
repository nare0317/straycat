$(document).ready(function()
{
	var updateNickName = $("#updateNickName").val();
	
	var updateEmail1 = $("#updateEmail1").val();
	
	var memAddress = $("#memAddress").val();
	
	$("#sample6_address").val(memAddress);
	
	$("#email").val(updateEmail1);
	
	$("#nickName").val(updateNickName);
	
	$("#emailCheck2").click(function()
	{
		var email1 = $("#updateEmail1").val();
		// alert(email);

		if (email1 == $("#newEmail").val())
		{
			alert("현재 사용중인 이메일입니다.");
			return;
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
		var updateNickName = $("#updateNickName").val();

		if ( $("#nickName").val() == null || $("#nickName").val() == "" )
		{
			alert("닉네임을 입력해주세요.");
			return;
		}
		
		if ( $("#nickName").val() == updateNickName )
		{
			alert("현재 사용중인 닉네임입니다.");
			return;
		}
		var nickName = $("#nickName").val();
		
		$.ajax({
			url:"checkNickName",
			type:"post",
			data:{'nickName':nickName},
			success:function(count){
				if(count==0)
				{
					alert("사용가능한 닉네임입니다.");
					return;
				}
				else
				{
					alert("중복된 닉네임입니다.");
					return;
				}
			}			
	});

	});

	$("#memberUpdateBtn").click(function()
	{
		var nPwd1 = $("#nPwd1").val();
		
		var pattern1 = /[0-9]/;

        var pattern2 = /[a-zA-Z]/;

        var pattern3 = /[~!@\#$%<>^&*]/;
        
        
		
		if ( $("#nickName").val() == null || $("#nickName").val() == "" )
		{
			alert("닉네임을 입력해주세요.");
			$("#nickName").focus();
			return;
		}
		
		if ( $("#nPwd1").val() == null || $("#nPwd1").val() == "" || $("#nPwd2").val() == null || $("#nPwd2").val() == "" )
		{
			alert("비밀번호를 입력해주세요.");
			$("#nPwd1").focus();
			return;
		}
		
		if ($("#nPwd1").val() != $("#nPwd2").val() )
		{
			alert("비밀번호를 다시 한번 확인해주세요.");
			$("#nPwd1").focus();
			$("#nPwd1").val("");
			$("#nPwd2").val("");
			return;
		}
		
		if ( $("#sample6_address").val() == null || $("#sample6_address").val() == "" )
		{
			alert("주소를 입력해주세요.");
			return;
		}
		
		if(!pattern1.test(nPwd1)||!pattern2.test(nPwd1)||!pattern3.test(nPwd1)|| nPwd1.length < 8 || nPwd1.lenghth >nPwd1)
        {

            
            alert("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
            $("#nPwd1").focus();
			$("#nPwd1").val("");
			$("#nPwd2").val("");
			return;


        }

		alert("확인");
		$("#updateForm").submit();
	});
	
	$("#updateBtn1").click(function()
	{
		if ( $("#userPwd").val() == null || $("#userPwd").val() == "" )
		{
			alert("비밀번호를 입력해주세요.");
			return;
		}
		
		var userId = $("#userId").val();
		var userPwd1 = $("#userPwd1").val();
		var userPwd = $("#userPwd").val();

		$.ajax({
			type : "POST",
			url : "login_check_ajax",
			data : {'user_id' : userId , 'user_pwd' : userPwd},
			success : function(data)
			{
				//console.log(data);
				
				if(data==1)
				{
					location.href='memberupdate';
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