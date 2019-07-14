package com.straycat.mypage;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.straycat.service.MypageService;

@Controller
public class MypageController
{
	  @Autowired private MypageService service;
	 
	@RequestMapping(value="/memberupdate")
	public String memberUpdate(HttpSession session, Model model, HttpServletResponse response )
	{
		String id = (String)session.getAttribute("user_id");
		Map<String, Object>memberInfo = service.memberInfo(id);
		
		model.addAttribute("memberInfo", memberInfo);
		
				
		System.out.println(id);
		return "Member_Update(form)";
	}
	
	/*
	 * @RequestMapping(value="/userEmail") public String selectUser(Model
	 * model, @RequestParam String id, @RequestParam(name="user_code",
	 * defaultValue="") String user_code) {
	 * 
	 * }
	 * 
	 */
}
