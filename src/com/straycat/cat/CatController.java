package com.straycat.cat;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.straycat.service.CatService;

@Controller
public class CatController
{
	
	 @Autowired private CatService service;
	
	 @RequestMapping("/catdetail")
	 public String selectList(Model model)
	 {
		Map<String, Object> catInfo = service.catInfo();
		List<String> catLocation = service.catLocation();
		
		model.addAttribute("catInfo",catInfo);
		model.addAttribute("catLocation",catLocation);
		
		return "Cat_Detail";
	 }
	 
	 
	
}
