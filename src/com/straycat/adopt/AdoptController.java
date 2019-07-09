package com.straycat.adopt;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		return "AdoptCatList";
	}
}
