package com.straycat.common;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController
{
	// 루트로 접속하면 메인 페이지로 리다이렉트
	@RequestMapping("/")
	public String mainRedirect()
	{
		return "redirect:main";
	}
	
	// 메인 페이지로 이동
	@RequestMapping("/main")
	public String list(Model model)
	{
		return "Main";
	};

	// 소개 페이지로 이동
	@RequestMapping("/introduce")
	public String introduce()
	{
		return "Introduce";
	}

	// 길냥이 관리 페이지로 이동
	@RequestMapping("/cat")
	public String catList()
	{
		return "StrayCatManage";
	}
	
	// 입양 리스트 페이지로 이동
	@RequestMapping("/adopt")
	public String adoptList()
	{
		return "StrayCatAdoptList";
	}
	
	// 실종 리스트 페이지로 이동
	@RequestMapping("/missing")
	public String missing()
	{
		return "MissingCatList";
	}
	/*
	// 자유게시판으로 이동
	@RequestMapping("/board")
	public String board()
	{
		return "BoardList";
	}
	*/
	// 등록 페이지로 이동
	@RequestMapping("/catregistration")
	public String catRegistration()
	{
		return "StrayCatRegistration";
	}
	
	// 로그인 페이지로 이동
	@RequestMapping("/login")
	public String login()
	{
		return "Login";
	}
	
	// 약관동의 페이지로 이동
	@RequestMapping("/acceptterms")
	public String acceptTerm()
	{
		return "AcceptTerms";
	}
	
	// 회원가입 페이지로 이동
	@RequestMapping("/signup")
	public String signUp()
	{
		return "Join";
	}
}
