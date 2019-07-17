package com.sp.bbs;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sp.common.MyUtil;

@Controller("bbs.boardController")
public class BoardController
{
	@Autowired
	private BoardService service;
	@Autowired
	private MyUtil myUtil;

	@RequestMapping("/bbs/list")
	public String list(@RequestParam(name = "page", defaultValue = "1") int current_page
			, @RequestParam(name = "searchKey", defaultValue = "subject") String searchKey
			, @RequestParam(name = "searchValue", defaultValue = "") String searchValue, HttpServletRequest req
			, Model model) throws Exception
	{
		if (req.getMethod().equalsIgnoreCase("GET"))
			searchValue = URLDecoder.decode(searchValue, "UTF-8");

		int rows = 10;
		int total_page = 0;
		int dataCount = 0;

		Map<String, Object> map = new HashMap<>();
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);

		dataCount = service.dataCount(map);
		if (dataCount != 0)
			total_page = myUtil.pageCount(rows, dataCount);

		if (current_page > total_page)
			current_page = total_page;

		int start = (current_page - 1) * rows + 1;
		int end = current_page * rows;
		map.put("start", start);
		map.put("end", end);

		List<Board> list = service.listBoard(map);

		int listNum, n = 0;
		Iterator<Board> it = list.iterator();
		while (it.hasNext())
		{
			Board dto = it.next();
			listNum = dataCount - (start + n - 1);
			dto.setListNum(listNum);
			n++;
		}

		String query = "";
		String listUrl, articleUrl;
		if (searchValue.length() != 0)
		{
			query = "searchKey=" + searchKey + "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
		}

		String cp = req.getContextPath();
		listUrl = cp + "/bbs/list";
		articleUrl = cp + "/bbs/article?page=" + current_page;
		if (query.length() != 0)
		{
			listUrl += "?" + query;
			articleUrl += "&" + query;
		}

		String paging = myUtil.paging(current_page, total_page, listUrl);

		model.addAttribute("list", list);
		model.addAttribute("articleUrl", articleUrl);
		model.addAttribute("paging", paging);
		model.addAttribute("page", current_page);
		model.addAttribute("dataCount", dataCount);
		model.addAttribute("total_page", total_page);

		return "bbs/list";
	}

	@RequestMapping(value = "/bbs/created", method = RequestMethod.GET)
	public String createdForm(Model model) throws Exception
	{
		model.addAttribute("mode", "created");
		return "bbs/created";
	}

	@RequestMapping(value = "/bbs/created", method = RequestMethod.POST)
	public String createdSubmit(Board dto, HttpServletRequest req) throws Exception
	{
		dto.setIpAddr(req.getRemoteAddr());
		service.insertBoard(dto);

		return "redirect:/bbs/list";
	}

	@RequestMapping(value = "/bbs/article")
	public String article(@RequestParam int num
						, @RequestParam int page
						, @RequestParam(value = "searchKey", defaultValue = "subject") String searchKey
						, @RequestParam(value = "searchValue", defaultValue = "") String searchValue
						, Model model) throws Exception
	{
		searchValue = URLDecoder.decode(searchValue, "utf-8");

		String query = "page=" + page;
		if (searchValue.length() != 0)
			query += "&searchKey=" + searchKey + "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");

		service.updateHitCount(num);

		Board dto = service.readBoard(num);
		if (dto == null)
			return "redirect:/bbs/list?" + query;

		// dto.setContent(myUtil.htmlSymbols(dto.getContent()));

		Map<String, Object> map = new HashMap<>();
		map.put("num", num);
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);

		Board preReadDto = service.preReadBoard(map);
		Board nextReadDto = service.nextReadBoard(map);

		model.addAttribute("dto", dto);
		model.addAttribute("page", page);
		model.addAttribute("query", query);
		model.addAttribute("preReadDto", preReadDto);
		model.addAttribute("nextReadDto", nextReadDto);

		return "bbs/article";
	}

	@RequestMapping(value = "/bbs/update", method = RequestMethod.GET)
	public String updateForm(@RequestParam int num
							, @RequestParam String page, Model model) throws Exception
	{
		Board dto = service.readBoard(num);
		if (dto == null)
			return "redirect:/bbs/list?page=" + page;

		model.addAttribute("mode", "update");
		model.addAttribute("page", page);
		model.addAttribute("dto", dto);

		return "bbs/created";
	}

	@RequestMapping(value = "/bbs/update", method = RequestMethod.POST)
	public String updateSubmit(Board dto, @RequestParam(value = "page") String page) throws Exception
	{
		service.updateBoard(dto);

		return "redirect:/bbs/list?page=" + page;
	}

	@RequestMapping(value = "/bbs/delete")
	public String delete(@RequestParam(value = "num") int num
						, @RequestParam(value = "page") String page) throws Exception
	{
		// 자료 삭제
		service.deleteBoard(num);

		return "redirect:/bbs/list?page=" + page;
	}
	
	@RequestMapping("/bbs/aaaa")
	public String aaaa()
	{
		
		return "bbs/aaaa";
	}
}






