package com.straycat.adopt;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.straycat.service.AdoptService;

@Controller
public class AdoptController
{
	@Autowired
	private AdoptService service;

	// 입양게시판 리스트 조회 
	@RequestMapping(value="/adopt")
	public String selectList(Model model)
	{
		List<Map<String, Object>> list = service.listAdopt();

		model.addAttribute("list", list);

		return "Adopt_List";
	}

	
	// 입양등록 버튼 클릭시 입양게시글 등록페이지로 이동
	@RequestMapping(value="/adopt_form")
	public String adoptForm(Model model)
	{
		return "Adopt_Write";
	}

	
	// 입양 게시글 등록 
	/*
	  , @RequestParam(name = "gu", defaultValue = "") String gu
	  , @RequestParam(name = "dong", defaultValue = "") String dong
	 */
	@RequestMapping(value="/adopt_write", method=RequestMethod.GET)
	public String adoptWrite(@RequestParam Map<String,Object> param)
	{

		service.addAdopt(param);
		/*
		int result = service.addAdopt(param);

		if (result != 1)
		{
			return null; // -- 등록중에 오류 발생했을 시, 이동할 페이지 넣어줘야함.
		}
		*/
		return "redirect:/adopt";
	}

	@RequestMapping(value="/adopt_read", method=RequestMethod.GET)
	public String adoptRead(@RequestParam String adt_code)
	{
		
		
		
		return "/adopt_detail";
	}
	
	
}
