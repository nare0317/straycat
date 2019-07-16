package com.straycat.login;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.straycat.service.LoginService;

@Controller
public class LoginController
{
	@Resource(name="LoginService")
	private LoginService loginService;

	
	@RequestMapping(value="/login_check_ajax")
	public void loginCheck(HttpServletResponse response, HttpServletRequest request, HttpSession session) throws IOException
	{
		Map<String, Object> map = new HashMap<>();
		Map<String, Object> param = new HashMap<>();
		
		map.put("user_id", request.getParameter("user_id"));
		map.put("user_pwd", request.getParameter("user_pwd"));
		
		param.put("user_id", request.getParameter("user_id"));
		
		
		// 서비스로 id,pwd 를 맵에 담아서 보내
		int result = loginService.loginCheck(map);
		int result1 = loginService.leaveCheck(param);
		int leaveCheck = result+result1;
	
		if(result ==1 && result1 == 0)
		{
			response.getWriter().print("1");
			session.setAttribute("user_id", request.getParameter("user_id"));
			return;
		}
		if(leaveCheck > 1)
		{
			response.getWriter().print("2");
			return;
		}
		else
		{
			response.getWriter().print("0");
			return;
		}
	}
	
	
	@RequestMapping("/login") 
	public String login() 
	{ 
		return "Login"; 
	}
	
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpSession session, ModelAndView mav)
	{
		loginService.logout(session);
		mav.setViewName("redirect:main");
		
		return mav;
	}
	
	
}
