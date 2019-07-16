package com.straycat.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.straycat.service.AdoptService;
import com.straycat.service.CatService;
import com.straycat.service.MemberService;
import com.straycat.service.MypageService;

@Controller
public class MainController
{
	
	@Autowired
	private AdoptService adoptService;
	
	@Autowired
	private CatService catService;
	
	@Autowired
	private MypageService mypageService;
	
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
		List<Map<String, Object>> list = null;
		List<Map<String, Object>> guList = null;
		
		try
		{
			list = adoptService.listAdopt();	
			guList = catService.listGu();
		} catch (Exception e)
		{
			// TODO: handle exception
		}
		
		model.addAttribute("list", list);
		model.addAttribute("guList", guList);
		
		return "Main";
	};

	// 소개 페이지로 이동
	@RequestMapping("/introduce")
	public String introduce()
	{
		return "Intro";
	}

	/*
	// 길냥이 관리 페이지로 이동
	@RequestMapping("/cat")
	public String catList()
	{
		return "Cat_List";
	}
	*/
	
	// 실종 리스트 페이지로 이동
	@RequestMapping("/missing")
	public String missing()
	{
		return "MissingCatList";
	}
	
	// 마이페이지로 이동
	@RequestMapping("/mypage") 
	public String mypage(HttpSession session, Model model) 
	{ 
		String id = (String)session.getAttribute("user_id");
		Map<String, Object> map = new HashMap<>();
		
		map.put("id", id);
		
		mypageService.myInfo(id);	// 로그인 유저 정보
		mypageService.followList(id);	// 로그인 유저 팔로우한 고양이 정보
		
		model.addAttribute("followList", mypageService.followList(id));
		model.addAttribute("myInfo", mypageService.myInfo(id));
		
		return "Mypage_Main"; 
	}
	
}
