package com.straycat.mypage;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	
	// 마이페이지로 이동
	@RequestMapping("/mypage") 
	public String mypage(HttpSession session, Model model, HttpServletRequest request) 
	{ 
		String id = (String)session.getAttribute("user_id");
		Map<String, Object> map = new HashMap<>();
		
		
		map.put("id", id);
		
		
		service.myInfo(id);	// 로그인 유저 정보
		service.followList(id);	// 로그인 유저 팔로우한 고양이 정보
		service.manageCat(id);	// 로그인 유저가 관리하는 고양이 정보
		service.myBoardList(id);	// 로그인 유저가 쓴 자유게시판 글
		service.myBoardComment(id);	// 로그인 유저가 쓴 자유게시판 댓글
		service.myActComment(id);	// 로그인 유저가 쓴 고양이 활동 댓글
		service.myAdoptComment(id);	// 로그인 유저가 쓴 입양모집글 댓글 
		service.myMissComment(id);	// 로그인 유저가 쓴 실종글 댓글
		service.reMessageList(id);		// 로그인 유저가 받은 쪽지 리스트
		service.seMessageList(id);	// 로그인 유저가 보낸 쪽지 리스트
		
		
		model.addAttribute("myBoardList", service.myBoardList(id));
		model.addAttribute("followList", service.followList(id));
		model.addAttribute("manageCat", service.manageCat(id));
		model.addAttribute("myInfo", service.myInfo(id));
		model.addAttribute("myBoardComment", service.myBoardComment(id));
		model.addAttribute("myActComment", service.myActComment(id));
		model.addAttribute("myAdoptComment", service.myAdoptComment(id));
		model.addAttribute("myMissComment", service.myMissComment(id));
		model.addAttribute("reMessageList", service.reMessageList(id));
		model.addAttribute("seMessageList", service.seMessageList(id));
		
		
		return "Mypage_Main"; 
	}
	
	
	
	/*
	@RequestMapping(value="/myBoard")
	public String myBoardRead(HttpSession session, HttpServletRequest request, Map<String, Object> map)
	{
		String id = (String)session.getAttribute("user_id");
		String bbs_code = request.getParameter("bbs_code");
		
		map.put("id", id);
		map.put("bbs_code", bbs_code);
		System.out.println(bbs_code);
		
		service.myBoardRead(map);
		
		String result = "/Board_Read?/article/bbs_code=" +bbs_code;
		
		return result;
		//return "Board_Read";
	}
	*/
	@RequestMapping(value="/messagewrite")
	public String messageWrite(HttpSession session)
	{
		String id = (String)session.getAttribute("user_id");
		
		return "Message_Write";
	}
	
	
	@RequestMapping(value="/sendMessage", method = RequestMethod.POST)
	public String sendMessage(HttpSession session, HttpServletRequest requset, Map<String, Object> map)
	{
		String id = (String)session.getAttribute("user_id");
		
		String re_id = requset.getParameter("receive");
		String title = requset.getParameter("title");
		String content = requset.getParameter("noteContent");
		
		map.put("id", id);
		map.put("re_id", re_id);
		map.put("title", title);
		map.put("content", content);
		
		service.sendMessage(map);
		
		return "redirect:/mypage";
	}
	
	@RequestMapping(value = "semessageread", method = RequestMethod.GET)
	public String readSendMessages(HttpSession session, @RequestParam(name="mes_code") String mes_code, Map<String, Object> map,Model model)
	{
		String id = (String)session.getAttribute("user_id");
		
		map.put("id", id);
		map.put("mes_code", mes_code);
		service.seMessage(map);
		
		model.addAttribute("seMessage",service.seMessage(map));
		
		return "Message_Read(Sended)";

	}
	
	@RequestMapping(value = "remessageread", method = RequestMethod.GET)
	public String readReceiveMessages(HttpSession session, @RequestParam(name="mes_code") String mes_code, Map<String, Object> map,Model model)
	{
		String id = (String)session.getAttribute("user_id");
		
		map.put("id", id);
		map.put("mes_code", mes_code);
		service.reMessage(map);
		service.readCheck(map);
		
		model.addAttribute("reMessage",service.reMessage(map));
		model.addAttribute("readCheck", service.readCheck(map));
		
		return "Message_Read(Received)";

	}
	
	@RequestMapping(value="responsemessage",method = RequestMethod.GET)
	public String responseMessage(HttpSession session, HttpServletRequest requset, @RequestParam(name="id2") String id2, Model model)
	{
		String id = (String)session.getAttribute("user_id");
		model.addAttribute("id2", id2);
		
		
		return "Message_Write";
	}
	
	@RequestMapping(value="sedeletemessage", method = RequestMethod.GET)
	public String sedeleteMessage(@RequestParam(name="mes_code") String mes_code, Map<String, Object> map)
	{
		map.put("mes_code", mes_code);
		service.sedeleteMessage(map);
		
		return "redirect:/mypage";
	}
	
	@RequestMapping(value="redeletemessage", method = RequestMethod.GET)
	public String redeleteMessage(@RequestParam(name="mes_code") String mes_code, Map<String, Object> map)
	{
		map.put("mes_code", mes_code);
		service.redeleteMessage(map);
		
		return "redirect:/mypage";
	}
}
