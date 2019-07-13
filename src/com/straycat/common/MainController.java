package com.straycat.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	
	// 실종 리스트 페이지로 이동
	@RequestMapping("/missing")
	public String missing()
	{
		return "MissingCatList";
	}
	
	@RequestMapping("/mypage") 
	public String mypage(HttpServletRequest request, HttpSession session) 
	{ 
		
		String user_id = (String) session.getAttribute("user_id");
		session.setAttribute("user_id", user_id);
		System.out.println(user_id);
		return "Mypage_Main"; 
	}
	
}
