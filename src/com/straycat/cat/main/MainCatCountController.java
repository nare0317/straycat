package com.straycat.cat.main;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.straycat.service.MainCatCountService;

@Controller
public class MainCatCountController
{
	@Resource(name="MainCatCountService")
	private MainCatCountService service;
	
	@RequestMapping("/checkCount")
	public void catCount(HttpServletResponse response, HttpServletRequest request, Model model) throws IOException
	{
		Map<String, Object> map = new HashMap<>();
		
		map.put("gu", request.getParameter("gu"));
		map.put("dong", request.getParameter("dong"));
		
		int catCount = service.checkCount(map);
		response.getWriter().print(service.checkCount(map));
		
		model.addAttribute("catCount",catCount);
		
	}
		
}
