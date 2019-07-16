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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.straycat.service.MypageService;

@Controller
public class MypageController
{
	  @Autowired private MypageService service;
	 
	@RequestMapping(value="/memberupdate")
	public String memberUpdate(HttpSession session, Model model )
	{
		String id = (String)session.getAttribute("user_id");
		Map<String, Object>memberInfo = service.memberInfo(id);
		
		model.addAttribute("memberInfo", memberInfo);
		
		return "Member_Update(form)";
	}
	
	@RequestMapping(value="/updateComplete", method = RequestMethod.POST)
	public String updateComplete(Map<String, Object> map, HttpSession session, HttpServletRequest request)
	{
		String id = (String)session.getAttribute("user_id");
		
		
		String nickname = request.getParameter("nickName");
		String email = request.getParameter("updateEmail");	
		String pwd = request.getParameter("nPwd1");
		String address = request.getParameter("address");
		
		map.put("nickname", nickname);
		map.put("email", email);
		map.put("pwd", pwd);
		map.put("address", address);
		map.put("id", id);
		
		service.updateMember(map);
		
		return "Mypage_Main";
	}
	
	
	@RequestMapping(value="/memberupdatepw")
	public String updatePw(HttpSession session, Model model)
	{
		String id = (String)session.getAttribute("user_id");
		Map<String, Object>memberInfo = service.memberInfo(id);
		
		model.addAttribute("memberInfo", memberInfo);
		
		
		return "Member_Update(pw)";
	}
	
	
	@RequestMapping(value="/leaveAgree")
	public String leaveAgree()
	{
		return "Member_Leave(agree)";
	}
	
	
	
	@RequestMapping(value="/memberLeave")
	public ModelAndView leaveMember(HttpSession session, Map<String, Object> map, ModelAndView mav)
	{
		String id = (String)session.getAttribute("user_id");
		
		map.put("id", id);
		
		service.leaveMember(map);
		service.logout(session);
		
		mav.setViewName("redirect:main");
		
		return mav;
	}
	
	
	@RequestMapping(value="/mypagemain")
	public String userInfo()
	{
		return "mypage_main";
	}
	
	
	
}
