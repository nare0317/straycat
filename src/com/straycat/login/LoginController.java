package com.straycat.login;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.straycat.service.LoginService;

@Controller
public class LoginController
{
	@Autowired
	private LoginService service;
	
	@RequestMapping(value="/login/check")
	public String loginCheck(
			@RequestParam(name="id") String id
			, @RequestParam(name="pwd") String pwd
			, HttpServletRequest request
			, HttpSession session
			, Model model
			)
	{
		if (session.getAttribute("id") != null )
		{
            // 기존 세션에 다른 id 값이 존재하면 기존 값 제거
            session.removeAttribute("id");
        }
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("pwd", pwd);
		
		Map<String, Object> checkResult = service.loginCheck(map);
		
		// 로그인 체크 결과가 null일 경우(올바른 id 또는 비밀번호가 아닐 경우)
		if (checkResult==null)
		{
			model.addAttribute("message","fail");
			return "Login";
		}
		
		// 로그인을 성공한 경우 loginCheck 결과에서 "id" 값을 넣는다
		session.setAttribute("id", checkResult.get(id));
		
		return "Main";
	}
}
