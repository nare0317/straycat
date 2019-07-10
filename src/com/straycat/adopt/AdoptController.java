package com.straycat.adopt;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.straycat.service.AdoptService;

@Controller
public class AdoptController
{
	@Autowired
	private AdoptService service;
	
	@RequestMapping("/adopt")
	public String selectList(Model model)
	{
		List<Map<String, Object>> list = service.listAdopt();
		
		model.addAttribute("list", list);
		
		return "Adopt_List";
	}
	
	@RequestMapping("/adopt_form")
	public String adoptForm(Model model)
	{
		return "Adopt_Write";
	}
	
	@RequestMapping("/adopt_write")
	public ModelAndView adoptWrite(HttpServletRequest request
	/*
	 * ,@RequestParam(name="gu", defaultValue = "") String gu
	 * ,@RequestParam(name="dong", defaultValue = "") String dong
	 */)
	{
		ModelAndView mav = new ModelAndView("redirect:/adopt");
		
		String gu = request.getParameter("gu");
		String dong = request.getParameter("dong");
		
		String address = service.searchAddress(gu, dong);
		
		
		Map<String, Object> param = new HashMap<>();
		param.put("cat_name", request.getParameter("cat_name"));
		param.put("ADDRESS", address);
		

		
		
		
		
		int result = service.addAdopt(param);
		
		if (result != 1)
		{
			return null;		//-- 등록중에 오류 발생했을 시, 이동할 페이지 넣어줘야함. 
		}
		
		
		return mav;
	}
	
}
