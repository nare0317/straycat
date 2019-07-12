package com.straycat.adopt;

import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.straycat.service.AdoptService;

@Controller
public class AdoptController
{
	@Autowired
	private AdoptService service;

	
	// 입양게시판 리스트 조회
	@RequestMapping(value = "/adopt")
	public String selectList(Model model)
	{
		List<Map<String, Object>> list = service.listAdopt();
		List<Map<String, Object>> gu = service.listGu();

		model.addAttribute("list", list);
		model.addAttribute("gu", gu);

		return "Adopt_List";
	}
	

	// 입양등록 버튼 클릭시 입양게시글 등록페이지로 이동
	// (→ 로그인 기능 완성되면 이용자 아이디 값 받아서 다시 수정해야함.)
	/*
	 * @RequestMapping(value="/adopt_form", method=RequestMethod.GET) public String
	 * adoptForm(Model model, @RequestParam String user_id)
	 */
	@RequestMapping(value = "/adopt_form")
	public String adoptForm(Model model)
	{
		// 사용자 정보(이름,전화번호,이메일) 넘기기
		// Map<String, Object> user = service.searchUserInfo(user_id);
		// model.addAttribute("user", user);

		// 구 셀렉트박스 값 넘기기
		List<Map<String, Object>> gu = service.listGu();
		model.addAttribute("gu", gu);

		return "Adopt_Write";
	}

	// 입양 게시글 등록
	@RequestMapping(value = "/adopt_write", method = RequestMethod.GET)
	public String adoptWrite(@RequestParam Map<String, Object> param)
	{
		service.addAdopt(param);
		/*
		 * int result = service.addAdopt(param);
		 * 
		 * if (result != 1) { return null; // -- 등록중에 오류 발생했을 시, 이동할 페이지 넣어줘야함. }
		 */
		return "redirect:/adopt";
	}

	// 입양게시글 열람
	@RequestMapping(value = "/adopt_read", method = RequestMethod.GET)
	public String adoptRead(@RequestParam String id, Model model)
	{
		Map<String, Object> post = service.readAdopt(id);

		model.addAttribute("post", post);

		return "Adopt_Read";
	}


	  // 동 리스트 출력
	  @RequestMapping(value = "/adopt_gu", method = RequestMethod.POST )
	  public void dongList(HttpServletResponse response, String gu) throws Exception 
	  { 
		  List<Map<String, Object>> dong = service.listDong(gu);
	  
		  JSONArray json = new JSONArray();
		  json.put(dong);
		  
		  response.setContentType("text/html;charset=utf-8");
		  
		  PrintWriter out = response.getWriter();
		  out.print(json.toString()); 
	  }
	 

}
