package com.straycat.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardController
{
	@Autowired
	private BoardService service;
	
	@RequestMapping(value="/board", method = RequestMethod.GET)
	public String selectList(Model model)
	{
		List<Map<String, Object>> list = service.listBoard();
		int lastPage = service.getLastPage();
		
		
		model.addAttribute("list", list);
		model.addAttribute("lastPage", lastPage);
		
		return "BoardList";
	}
	
	
	
	
}
