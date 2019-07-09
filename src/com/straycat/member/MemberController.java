package com.straycat.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController
{
	// 회원가입 페이지로 이동
	@RequestMapping("/join")
	public String join()
	{
		return "Join_Form";
	}

	
	// 약관동의 페이지로 이동
	@RequestMapping("/acceptterms")
	public String acceptTerm()
	{
		return "Join_AcceptTerms";
	}
	
	
	// 회원가입 페이지로 이동
	@RequestMapping("/signup")
	public String signUp()
	{
		return "Join_Form";
	}
	
	
}
