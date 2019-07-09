package com.straycat.board;

import java.net.URLDecoder;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.straycat.service.BoardService;

@Controller
public class BoardController
{
	@Autowired
	private BoardService service;
	
	// RequestParam으로 현재 페이지, 검색구분, 검색어, Request 객체를 인자로 받음.
	@RequestMapping(value="/board", method = RequestMethod.GET)
	public String selectList(@RequestParam(name="currentPage", defaultValue="1") int currentPage
			, @RequestParam(name="searchKey", defaultValue = "") String searchKey
			, @RequestParam(name="searchValue", defaultValue = "") String searchValue
			, HttpServletRequest request
			, Model model)
	{
		// 들어온 검색 Request가 GET 방식이라면 검색어를 UTF-8로 인코딩하고 searchValue에 대입한다
		try
		{
			if (request.getMethod().equalsIgnoreCase("GET"))
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		// 게시판 목록을 불러옴
		List<Map<String, Object>> list = service.listBoard();
		
		// 게시물 마지막 페이지를 가져옴
		int lastPage = service.getLastPage();
		
		
		model.addAttribute("list", list);
		model.addAttribute("lastPage", lastPage);
		
		return "Board_List";
	}
	
	
	
	
}
