package com.straycat.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController
{
	@Autowired
	private BoardService service;
	
	@RequestMapping("/board")
	public String selectList(Model model)
	{
		List<Map<String, Object>> list = service.listBoard();
		
		model.addAttribute("list", list);
		
		return "BoardList";
	}
	
	
}
