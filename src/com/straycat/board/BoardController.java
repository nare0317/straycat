package com.straycat.board;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.straycat.common.Util;
import com.straycat.service.BoardService;

@Controller
public class BoardController
{
	@Autowired
	private BoardService service;
	
	@Autowired
	private Util util;
	
	// 게시물 목록 불러오기
	// RequestParam으로 현재 페이지, 검색구분, 검색어, Request 객체를 인자로 받음.
	@RequestMapping(value="/board", method = RequestMethod.GET)
	public String selectList(@RequestParam(name="page", defaultValue="1") int currentPage
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
		
		int perPageList = 10;	// 페이지 당 게시물 수
		int dataCount = 0;		// 게시물 수(쿼리문 수행 결과)
		int total_page = 0;		// 총 페이지 수
		
		// 검색기준, 검색어를 인수로 넘기기 위해 Map 자료구조 선언
		Map<String, Object> searchMap = new HashMap<>();
		
		// 검색기준과 검색어를 Map 자료구조에 넣음
		searchMap.put("searchKey", searchKey);
		searchMap.put("searchValue", searchValue);
		
		// 검색기준과 검색어로 검색된 데이터가 몇 개인지 계산
		dataCount = service.dataCount(searchMap);
		
		if (dataCount > 0 && dataCount % perPageList != 0)
		{
			total_page = dataCount / perPageList + 1;
		}
		else if (dataCount > 0 && dataCount % perPageList == 0)
		{
			total_page = dataCount / perPageList;
		}
		else
			return "Board_List";
			
		/*
		if (dataCount != 0)
			total_page = util.pageCount(perPageList, dataCount);
		*/
		
		// 페이지 Request에서 요청하는 페이지가 전체 페이지보다 클 경우 마지막 페이지를 보여줌
		if (currentPage > total_page)
			currentPage = total_page;
		
		// 페이지 블럭 설정(한 페이지에 들어갈 페이지 목록 설정)
		int start = (total_page - currentPage) * perPageList + 1;
		int end = start+perPageList-1;
		searchMap.put("start", start);
		searchMap.put("end", end);
		
		// 페이지 블럭, searchKey, searchValue를 기반으로 게시판 목록을 불러옴
		List<Map<String, Object>> list = service.listBoard(searchMap);
		
		String query = "";
		String listUrl, articleUrl;
		try 
		{
			if (searchValue.length() != 0)
			{
				query = "searchKey=" + searchKey + "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}

		String cp = request.getContextPath();
		listUrl = cp + "/board";	// 
		articleUrl = cp + "/board/article?page=" + currentPage;
		String pagenation = listUrl + "?page=";
		if (query.length() != 0)
		{
			listUrl += "?" + query;
			articleUrl += "&" + query;
			pagenation += "?" + query;
		}
		
		/* String paging = util.paging(currentPage, total_page, listUrl); */
		
		model.addAttribute("pagenation", pagenation);
		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		/* model.addAttribute("paging", paging); */
		model.addAttribute("page", currentPage);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);
		
		return "Board_List";
	}
	
	// 게시물 조회
	@RequestMapping(value="/board/article", method = RequestMethod.GET)
	public String articleLoad(@RequestParam(name="articleNum") String articleNum
			, Model model)
	{
		Map<String, Object> map = new HashMap<>();
		map.put("articleNum", articleNum);
		
		Map<String, Object> article = service.articleLoad(map);
		
		model.addAttribute("article", article);
		
		return "Board_Read";
	}
	
	
}
