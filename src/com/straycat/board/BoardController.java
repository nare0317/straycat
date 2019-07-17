package com.straycat.board;

import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.straycat.service.BoardService;

@Controller
public class BoardController
{
	@Autowired
	private BoardService service;
	
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
			total_page = dataCount / perPageList + 1;
		else if (dataCount > 0 && dataCount % perPageList == 0)
			total_page = dataCount / perPageList;
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
		//int start = (total_page - currentPage) * perPageList + 1;
		int end = dataCount-(currentPage-1)*perPageList;
		int start = dataCount - currentPage * perPageList + 1;
		
		if (start < 1)
			start = 1;
		//int end = start+perPageList-1;
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
	public String articleLoad(@RequestParam(name="page", defaultValue="1") int currentPage
			, @RequestParam(name="searchKey", defaultValue = "") String searchKey
			, @RequestParam(name="searchValue", defaultValue = "") String searchValue
			,@RequestParam(name="articleNum") int articleNum
			, Model model)
	{
		// 게시판 리스트에서 가져온 articleNum, searchKey, searchValue 정보로 본문 내용을 가져옴
		Map<String, Object> map = new HashMap<>();
		map.put("articleNum", articleNum);
		map.put("searchKey", searchKey);
		map.put("searchValue", searchValue);
		Map<String, Object> article = service.articleLoad(map);
		
		// 데이터 수 세기(다음 글 가져오기에서 사용할 변수)
		int dataCount = service.dataCount(map);
		
		// 이전글, 다음글 변수 선언
		Map<String,Object> prevArticle = new HashMap<String, Object>();
		Map<String,Object> nextArticle = new HashMap<String, Object>();
		
		// 이전 글 가져오기
		// 이전 글이 있다면(articleNum-1이 1보다 크거나 같으면)
		if (articleNum-1 >= 1)
		{
			map.put("articleNum", articleNum-1);
			prevArticle = service.articleLoad(map);
		}
		else
		{
			prevArticle.put("TITLE", "이전 게시글이 없습니다.");
		}
		
		// 다음 글 가져오기
		// 다음 글이 있다면(articleNum+1이 전체 데이터 수보다 작으면)
		if (articleNum+1 <= dataCount)
		{
			map.put("articleNum", articleNum+1);
			nextArticle = service.articleLoad(map);
		}
		else
		{
			nextArticle.put("TITLE", "다음 게시글이 없습니다.");
		}
		
		// 게시판 리스트에서 가져온 articleNum, searchKey, searchValue 정보를 가져옴
		Map<String, Object> commentMap = new HashMap<>();
		commentMap.put("bbs_code", article.get("CODE"));
		
		// 댓글 가져오기
		List<Map<String, Object>> commentList = service.commentLoad(commentMap);
		
		// 조회수 증가 처리를 위해 게시물 코드 값을 받음
		Map<String, String> updateMap = new HashMap<String, String>();
		updateMap.put("CODE", (String)article.get("CODE"));
		service.viewCountUpdate(updateMap);
		
		model.addAttribute("article", article);
		model.addAttribute("prevArticle", prevArticle);
		model.addAttribute("nextArticle", nextArticle);
		model.addAttribute("commentList", commentList);
		
		return "Board_Read";
	}
	
	// 댓글 업데이트 메소드
	@RequestMapping("/commentupdate")
	@ResponseBody
	public int commentUpdate(HttpServletRequest request)
	{
		Map <String, String> map = new HashMap<>();
		map.put("bbs_cmt_code", request.getParameter("bbs_cmt_code"));
		map.put("content", request.getParameter("content"));
		
		int result = service.commentUpdate(map);
		
		return result;
	}
	
	// 댓글 삭제 메소드
	@RequestMapping("/commentdelete")
	public int commentDelete(@RequestParam(name="bbs_cmt_code") String bbs_cmt_code)
	{
		int result = 0;
		
		Map<String, String> map = new HashMap<>();
		map.put("bbs_cmt_code", bbs_cmt_code);
		
		result = service.commentDelete(map);
		
		return result;
	}
	
	// 댓글 추가 메소드
	@RequestMapping("/commentwrite")
	@ResponseBody
	public int commentInsert(@RequestParam(name="bbs_code") String bbs_code
			, @RequestParam(name="user_id") String user_id
			, @RequestParam(name="content") String content
			)
	{
		// USER의 CODE 알아내기
		Map<String, String> idMap = new HashMap<String, String>();
		idMap.put("id", user_id);
		
		Map<String, Object> selectResult = service.selectUserId(idMap);
		
		content = content.replaceAll("\n", "<br>");
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("bbs_code", bbs_code);
		map.put("user_code", (String)selectResult.get("USER_CODE"));
		map.put("content", content);
		
		// 댓글 insert
		int result = service.commentInsert(map);
		
		return result;
	}
	
	// 글쓰기 폼으로 이동하는 메소드
	@RequestMapping("/board/write")
	public String bbsWriteForm(Model model)
	{
		List<Map<String, String>> bbsWriteCat = new ArrayList<Map<String,String>>();
		bbsWriteCat = service.bbsWriteCat();
		
		model.addAttribute("bbsWriteCat", bbsWriteCat);
		
		return "Board_Write";
	}
	
	@RequestMapping(value="/boardinsert", method = RequestMethod.POST)
	public String bbsWrite(HttpServletRequest request, HttpSession session, Model model)
	{
		Map<String,Object> map = new HashMap<>();
		map.put("title", request.getParameter("title"));
		map.put("type_code", request.getParameter("categorySelect"));
		map.put("contents", request.getParameter("ir1"));
		
		// USER의 CODE 알아내기
		Map<String, String> idMap = new HashMap<String, String>();
		idMap.put("id", (String)session.getAttribute("user_id"));
		Map<String, Object> selectResult = service.selectUserId(idMap);
		
		map.put("user_code", (String)selectResult.get("USER_CODE"));
		
		service.bbsWrite(map);
		
		
		return "redirect:/board";
	}
}
