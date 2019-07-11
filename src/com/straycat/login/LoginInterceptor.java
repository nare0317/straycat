package com.straycat.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter
{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception
	{
		boolean result = false;
		
		// 로그인이 필요한 기능에 접근할 때, 컨트롤러를 호출하기 이전에 로그인 되었는지 체크
		HttpSession session = request.getSession();
		
		// 세션에서 id 값이 있을 경우(로그인된 상태일 경우)
		if (session.getAttribute("id") != null)
		{
			result = true;
		}
		
		String cp = request.getContextPath();
		cp += "/login";
		
		// boolean 값이 true일 경우 컨트롤러 실행, false면 실행하지 않음
		response.sendRedirect(cp);
		return result;
	}
	
	// Ajax 콜이면 세션id가 null이기 때문에 별도의 메소드가 필요하지만 추후 작성
}
