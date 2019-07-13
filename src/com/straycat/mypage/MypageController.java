package com.straycat.mypage;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MypageController
{
	@RequestMapping(value="/memberupdate")
	public String memberUpdate(HttpSession session)
	{
		String user_id = (String)session.getAttribute("user_id");
		session.setAttribute("user_id", user_id);
		
		System.out.println(user_id);
		return "Member_Update(form)";
	}
}
