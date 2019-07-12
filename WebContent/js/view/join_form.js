$(document).ready(function()
{
	// 회원가입 버튼을 클릭하고 필수 입력 항목을 확인함
	$("#joinBtn").click(function()
	{
		// 아이디를 입력하지 않았을 때 
		if ($("#idInput").val()=="" || $("#idInput").val()==null)
		{
			$(".err").text("아이디를 입력해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 비밀번호를 입력하지 않았을 때
		if ($("#pwd").val()=="" || $("#pwd").val()==null)
		{
			$(".err").text("비밀번호를 입력해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 비밀번호 확인을 입력하지 않았을 때
		if ($("#pwdConfirm").val()=="" || $("#pwdConfirm").val()==null)
		{
			$(".err").text("비밀번호 확인을 입력해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 닉네임을 입력하지 않았을 때
		if ($("#nickname").val()=="" || $("#nickname").val()==null)
		{
			$(".err").text("닉네임을 입력해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 이메일을 입력하지 않았을 때
		if ($("#email").val()=="" || $("#email").val()==null)
		{
			$(".err").text("이메일을 입력해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 이름을 입력하지 않았을 때
		if ($("#name").val()=="" || $("#name").val()==null)
		{
			$(".err").text("실명인증을 진행해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 전화번호를 입력하지 않았을 때
		if ($("#tel1").val()=="" || $("#tel1").val()==null || $("#tel2").val()=="" || $("#tel2").val()==null || $("#tel3").val()=="" || $("#tel3").val()==null)
		{
			$(".err").text("실명인증을 진행해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		// 주소를 입력하지 않았을 때
		if ($("#sample6_address").val()=="" || $("#sample6_address").val()==null)
		{
			$(".err").text("주소를 입력해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}

		// 아이디가 15자를 초과했을 때
		if ($("#idInput").val().length > 15)
		{
			$(".err").text("아이디는 최대 15자까지 입력할 수 있습니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 비밀번호가 20자를 초과했을 때
		if ($("#pwd").val().length > 20)
		{
			$(".err").text("비밀번호는 최대 20자까지 입력할 수 있습니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 닉네임이 10자 초과했을 때
		if ($("#nickname").val().length > 10)
		{
			$(".err").text("닉네임은 최대 10자까지 입력할 수 있습니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 이름이 10자를 초과했을 때
		if ($("#name").val().length > 10)
		{
			$(".err").text("이름은 최대 10자까지 입력할 수 있습니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 주소가 100자를 초과했을 때
		if ($("#sample6_address").val().length > 100)
		{
			$(".err").text("주소는 최대 100자까지 입력할 수 있습니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		if ($("#pwd").val() != $("#pwdConfirm").val())
		{
			$(".err").text("비밀번호와 비밀번호 확인이 일치하지 않습니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		var pw = $("#pwd").val();
		
		var pattern1 = /[0-9]/;

        var pattern2 = /[a-zA-Z]/;

        var pattern3 = /[~!@\#$%<>^&*]/; 

		// 비밀번호 패턴 확인
        if(!pattern1.test(pw)||!pattern2.test(pw)||!pattern3.test(pw)|| pw.length < 8 || pw.lenghth >20)
        {

            
            $(".err").text("영문+숫자+특수기호 8자리 이상으로 구성하여야 합니다.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return false;


        }
        
        if($("#check1").val()!="1" || $("#check2").val()!="1" || $("#check3").val()!="1" || $("#check4").val()!="1")
        {
        	$(".err").text("중복확인 또는 실명인증을 확인해주세요.");
        	$("#pwd").val("");
			$("#pwdConfirm").val("");
        	return;
        }
		
		$("#joinForm").submit();
	});
	
	$("#idCheck").click(function()
	{
		
		var id = $("#idInput").val();
		
		//alert(id);
		if (id == "")
		{
			$(".err").text("아이디를 입력해주세요.");
			return;
		}
		
		$.ajax({
				url:"checkId",
				type:"post",
				data:{'id':id},
				success:function(count){
					if(count==0)
					{
						alert("사용가능한 아이디입니다.");
						$("#check1").val("1");
						return;
					}
					else
					{
						alert("중복된 아이디입니다.");
						return;
					}
				}			
		});
	});
	
	
	$("#nickNameCheck").click(function()
	{
		var nickName = $("#nickname").val();
		
		//alert(nickName);
		if (nickName == "")
		{
			$(".err").text("닉네임을 입력해주세요.");
			return;
		}
		
		$.ajax({
				url:"checkNickName",
				type:"post",
				data:{'nickName':nickName},
				success:function(count){
					if(count==0)
					{
						alert("사용가능한 닉네임입니다.");
						$("#check2").val("1");
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
	
	$("#emailCheck").click(function()
			{
				var email = $("#email").val();

				if (email == "")
				{
					$(".err").text("이메일을 입력해주세요.");
					return;
				}
				
				$.ajax({
						url:"checkEmail",
						type:"post",
						data:{'email':email},
						success:function(count){
							if(count==0)
							{
								alert("사용가능한 이메일입니다.");
								$("#check3").val("1");
								return;
							}
							else
							{
								alert("중복된 이메일입니다.");
								return;
							}
						}			
				});
			});
	
	
	
	$("#nameCheck2").click(function()
	{
			var name = $("#cname").val();
			var tel1 = $("#ctel1").val();
			var tel2 = $("#ctel2").val();
			var tel3 = $("#ctel3").val();
			var tel = tel1 + "-" + tel2 + "-" + tel3; 
			
			if (name == "")
			{
				$(".err1").text("입력 정보가 누락되었습니다.");
				return;
			}
	
			$.ajax(
			{
				url : "checkName",
				type : "post",
				data :
				{
					'name' : name,
					'tel' : tel
					
				},
				success : function(count)
				{
					if (count == 0)
					{
						$(".err1").text("실명인증이 완료되었습니다. 확인 완료버튼을 눌러주세요.");
						$("#name").val(name);
						$("#tel1").val(tel1);
						$("#tel2").val(tel2);
						$("#tel3").val(tel3);
						$("#check4").val("1");
						return;
					} else
					{
						$(".err1").text("이미 가입된 정보입니다.");
						return;
					}
				}
			});
	});
	
	
	
	
	
	
});













