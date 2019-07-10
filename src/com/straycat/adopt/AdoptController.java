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
		
		String gu = request.getParameter("gu");
		String dong = request.getParameter("dong");
		
		String address = service.searchAddress(gu, dong);
		
		// 테스트
		System.out.println(address);
		
		Map<String, Object> param = new HashMap<>();
		param.put("ADT_PROC", "ADP1");
		param.put("CAT_NAME", request.getParameter("cat_name"));
		param.put("ADDRESS", address);
		param.put("RSQ_DATE", request.getParameter("rsq_date"));
		param.put("CAT_SPECIES", request.getParameter("cat_species"));
		param.put("CAT_AGE_TYPE", request.getParameter("cat_age_type"));
		param.put("CAT_AGE_NUM", request.getParameter("cat_age_num"));
		param.put("CAT_SEX", request.getParameter("cat_sex"));
		param.put("ADT_TYPE", request.getParameter("adt_type"));
		param.put("CAT_ETC1", request.getParameter("cat_etc1"));
		param.put("CAT_ETC2", request.getParameter("cat_etc2"));
		param.put("TEL", request.getParameter("tel"));
		param.put("EMAIL", request.getParameter("email"));
		param.put("ADT_REASON", request.getParameter("adt_reason"));
		
		param.put("ADT_CAT_EXP", request.getParameter("adt_cat_ext"));
		param.put("ADT_JOB", request.getParameter("adt_job"));
		param.put("ADT_MARRIAGE", request.getParameter("adt_marriage"));
		param.put("ADT_FAMILY_NUM", request.getParameter("adt_family_num"));
		
		//http://localhost:8090/straycat/adopt_write?cat_name=%EC%84%A0%EC%95%84&gu=1&dong=3&rsq_date=2019-06-09&cat_type=1&cat_species=sp2&cat_age_type=ADCA1&cat_age_num=1%EB%85%84&cat_sex=&adt_type=ADT1&cat_etc1=%EC%98%88%EC%81%A8&cat_etc2=%EA%B1%B4%EA%B0%95%ED%95%A8&name=&tel=&email=&adt_reason=%EA%B0%80%EB%82%9C%ED%95%A8&adt_cat_ext=RT1&adt_job=ADJ2&adt_marriage=RT2&adt_family_num=ADFN1
		
		
		int result = service.addAdopt(param);
		
		if (result != 1)
		{
			return null;		//-- 등록중에 오류 발생했을 시, 이동할 페이지 넣어줘야함. 
		}
		
		ModelAndView mav = new ModelAndView("redirect:/adopt");
		return mav;
	}
	
}
