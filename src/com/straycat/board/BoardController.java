package com.straycat.board;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.support.StandardServletEnvironment;

@Controller
public class BoardController
{
	@RequestMapping("/bbs/list")
	public String list(Model model)
	{
		return "BoardList";
	};
	
}
