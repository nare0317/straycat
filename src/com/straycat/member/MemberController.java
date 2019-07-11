package com.straycat.member;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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

	@RequestMapping(value="/checkId", method = RequestMethod.POST)
	public void joinCheck1(String id, HttpServletResponse response) throws IOException
	{
		int result = 0;
		
		result = service.checkId(id);
		response.getWriter().print(result);

	}
	
	
	@RequestMapping(value="/checkNickName", method = RequestMethod.POST)
	public void joinCheck2(String nickName, HttpServletResponse response) throws IOException
	{
		int result = 0;
		
		result = service.checkNickName(nickName);
		response.getWriter().print(result);

	}
	
	@RequestMapping(value="/checkEmail", method = RequestMethod.POST)
	public void joinCheck3(String email, HttpServletResponse response) throws IOException
	{
		int result = 0;
		
		result = service.checkEmail(email);
		response.getWriter().print(result);

	}
	
	
	
	@RequestMapping(value="/checkName", method = RequestMethod.POST)
	public void joinCheck4(String name, String tel, HttpServletResponse response, Map<String, Object> map) throws IOException
	{
		int result = 0;

		map.put("name", name);
		map.put("tel", tel);

		result = service.checkName(map);

		response.getWriter().print(result);

	}
}







