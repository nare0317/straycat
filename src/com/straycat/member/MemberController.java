package com.straycat.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.straycat.service.MemberService;

@Controller
public class MemberController
{

	@Autowired
	private MemberService service;

	// 회원가입 페이지로 이동
	@RequestMapping("/join")
	public String join(HttpServletRequest requset)
	{
		String termCheck = requset.getParameter("termCheck");
		
		if (termCheck == null )
			return "redirect:acceptterms";	
		else
			return "Join_Form";
			
	}

	// 약관동의 페이지로 이동
	@RequestMapping("/acceptterms")
	public String acceptTerm()
	{
		return "Join_AcceptTerms";
	}

	
	@RequestMapping(value="/checkJoin", method = RequestMethod.GET)
	public int joinCheck(@RequestParam("id") String id)
	{
		return service.checkId(id);
		
		
	}
}
