package com.straycat.cat;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CatController
{
	
	 @Autowired private CatService service;
	
	 @RequestMapping("/catdetail")
	 public String selectList(Model model)
	 {
		Map<String, Object> catInfo = service.catInfo();
		
		model.addAttribute("catInfo",catInfo);
		
		return "Cat_Detail";
	 }
	 
	 
	
}
