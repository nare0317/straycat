$(document).ready(function()
{
	// 회원가입 버튼을 클릭하고 필수 입력 항목을 확인함
	$("#joinBtn").click(function()
	{
		// 아이디를 입력하지 않았을 때
		if ($("#idInput").val()=="" || $("#idInput").val()==null)
		{
			
			return;
		}
		// 비밀번호를 입력하지 않았을 때
		else if ($("#pwd").val()=="" || $("#pwd").val()==null)
		{
			
			return;
		}
		// 비밀번호 확인을 입력하지 않았을 때
		else if ($("#pwdConfirm").val()=="" || $("#pwdConfirm").val()==null)
		{
			
			return;
		}
		// 닉네임을 입력하지 않았을 때
		else if ($("#nickname").val()=="" || $("#nickname").val()==null)
		{
			
			return;
		}
		// 이메일을 입력하지 않았을 때
		else if ($("#email").val()=="" || $("#email").val()==null)
		{
			
			return;
		}
		// 이름을 입력하지 않았을 때
		else if ($("#name").val()=="" || $("#name").val()==null)
		{
			
			return;
		}
		// 전화번호를 입력하지 않았을 때
		else if ($("#tel1").val()=="" || $("#tel1").val()==null || $("#tel2").val()=="" || $("#tel2").val()==null || $("#tel3").val()=="" || $("#tel3").val()==null)
		{
			
			return;
		}
		// 주소를 입력하지 않았을 때
		else if ($("#address").val()=="" || $("#address").val()==null)
		{
			
			return;
		}
		// 관심지역을 어느 하나라도 입력하지 않았을 때
		else if (($("#favorite1").val()=="" || $("#favorite1").val()==null) && ($("#favorite2").val()=="" || $("#favorite2").val()==null) && ($("#favorite3").val()=="" || $("#favorite3").val()==null))
		{
			
			return;
		}
		
		$("#joinForm").submit();
	});
});