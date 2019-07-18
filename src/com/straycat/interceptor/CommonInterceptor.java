package com.straycat.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class CommonInterceptor extends HandlerInterceptorAdapter
{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
	{
		boolean result = false;
		
		// 세션에서 user_id 값을 구함.
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		
		// 세션의 user_id 가 null 이 아니라면
		if (user_id == null)
		{
			String cp = request.getContextPath();
			String url = cp + "/login";
			
			session.setAttribute("alert", "로그인이 필요한 기능입니다.");
			
			// 로그인 페이지로 이동함
			response.sendRedirect(url);
		}
		else
		{
			result = true;
		}
		
		return result;
	}
	
}
