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
		if ($("#address").val()=="" || $("#address").val()==null)
		{
			$(".err").text("주소를 입력해주세요.");
			
			// 가입 에러가 나면 비밀번호를 초기화 함
			$("#pwd").val("");
			$("#pwdConfirm").val("");
			return;
		}
		
		// 관심지역을 어느 하나라도 입력하지 않았을 때
		if (($("#favorite1").val()=="" || $("#favorite1").val()==null) && ($("#favorite2").val()=="" || $("#favorite2").val()==null) && ($("#favorite3").val()=="" || $("#favorite3").val()==null))
		{
			$(".err").text("관심지역을 적어도 하나 입력해주세요.");
			
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
		
		// 닉네임이 20자 초과했을 때
		if ($("#nickname").val().length > 20)
		{
			$(".err").text("닉네임은 최대 20자까지 입력할 수 있습니다.");
			
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
		if ($("#address").val().length > 100)
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
		
		$("#joinForm").submit();
	});
});