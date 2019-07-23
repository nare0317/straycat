package com.straycat.cat;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.straycat.service.BoardService;
import com.straycat.service.CatService;
import com.straycat.service.ImageService;

@Controller
public class CatController
{

	@Autowired
	private CatService service;
	
	@Autowired
	private ImageService imageService;
	
	@Autowired
	private BoardService boardService;

	
	////////////////////////////////// 고양이 리스트 부분 ////////////////////////////////////////////////////////////////////////////////////////
	
	// 길냥이관리 게시판 리스트 조회
	@RequestMapping(value="/cat") 
	public String selectList(Model model
			, @RequestParam(name="searchGu", defaultValue = "") String searchGu
			, @RequestParam(name="searchDong", defaultValue = "") String searchDong
			, HttpServletRequest request) 
	{
		List<Map<String, Object>> location = null;
		Map<String, Object> map = new HashMap<>();
		int dataCount = 0;
		
		try
		{
			map.put("gu", request.getParameter("gu"));
			map.put("dong", request.getParameter("dong"));
			
			location = service.listCat(map);
			
			dataCount = service.dataCount(searchGu, searchDong);
			
			List<Map<String, Object>> gu = service.listGu();

			model.addAttribute("list", location);
			model.addAttribute("gu", gu);
			model.addAttribute("dataCount", dataCount);
			model.addAttribute("guString", request.getParameter("gu"));
			model.addAttribute("dongString", request.getParameter("dong"));
			
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "Cat_List"; 
	}
	
	
	
	
	////////////////////////////////// 고양이 리스트 부분 ////////////////////////////////////////////////////////////////////////////////////////

	
	////////////////////////////////// 고상페 페이지부분 ////////////////////////////////////////////////////////////////////////////////////////
	@RequestMapping("/catdetail")
	public String selectList(Model model, @RequestParam String id, HttpSession session,Map<String, Object> map)
	{
		int result = 0;
		Map<String, Object> catInfo = service.catInfo(id);
		List<Map<String, Object>> catLocation = service.catLocation(id);
		List<Map<String, Object>> catActReg = service.catActReg(id);
		List<Map<String, Object>> actGalList = service.actGalList(id);	
		List<Map<String, Object>> representationCat = service.representationCat(id);
		
		Map<String, String> catCode = new HashMap<String, String>();
		catCode.put("cat_code", id);
		Map<String, Object> avgLoc = service.avgLoc(catCode);
		
		
		
		// 사용자 id로 user_code를 알아냄
		Map<String, String> map2 = new HashMap<String, String>();
		map2.put("id", (String)session.getAttribute("user_id"));
		Map<String, Object> selectResult = boardService.selectUserId(map2);
		String user_code = (String)selectResult.get("USER_CODE");
		 
		map.put("cat_id",id);
		map.put("user_code",user_code);
		 
		result = service.followCheck(map);

		model.addAttribute("catInfo", catInfo);
		model.addAttribute("catActReg", catActReg);
		model.addAttribute("catLocation", catLocation);
		model.addAttribute("avgLoc", avgLoc);
		model.addAttribute("result",result);
		model.addAttribute("actGalList",actGalList);
		model.addAttribute("representationCat", representationCat);

		return "Cat_Detail";
	}
		
	
	

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value = "/catLocation_ajax")
	@ResponseBody
	public ResponseEntity catLocation(@RequestParam(name = "cat_id") String cat_id)
	{
		HttpHeaders headers = new HttpHeaders();
		ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

		List<Map<String, Object>> commList = service.catLocation(cat_id);

		if (commList.size() > 0)
		{
			for (int i = 0; i < commList.size(); i++)
			{
				HashMap hm = new HashMap();

				hm.put("LATITUDE", commList.get(i).get("LATITUDE"));
				hm.put("LONGITUDE", commList.get(i).get("LONGITUDE"));
				

				hmlist.add(hm);
			}
		}

		JSONArray json = new JSONArray(hmlist);

		return new ResponseEntity(json.toString(), headers, HttpStatus.CREATED);
	}
	
	//////////////////////////////////고상페 페이지부분 ////////////////////////////////////////////////////////////////////////////////////////
	
	
	  // 길고양이 등록 컨트롤러
	  
	  @RequestMapping(value="/catregistration", method = RequestMethod.POST) 
	  public String catregistration(@RequestParam Map<String,Object> param
			  , HttpServletRequest request
			  , HttpSession session
			  , MultipartFile file
			  , Model model) 
	  {
		  // 이미지를 저장하고 저장된 이미지 경로를 반환함
		  // 이미지 경로를 자료구조(고양이 등록정보)에 넣음: /resource/img.jpg
		  String path = session.getServletContext().getRealPath("/");
		  String imageUrl = imageService.saveImage(file, path);
		  param.put("CAT_REP_IMG", imageUrl);
		  		  
		  service.addCat(param);
		  
		  model.addAttribute("gu", request.getParameter("gu"));
		  model.addAttribute("dong", request.getParameter("dong"));
		  
		  return "redirect:cat";
	  }
	  
	  
	  // 길고양이 등록 폼 컨트롤러
	  @RequestMapping(value="/catregistrationform") 
	  public String catregistrationForm(Model model) 
	  {
		// 구 셀렉트박스 값 넘기기
			List<Map<String, Object>> gu = service.listGu();
			model.addAttribute("gu", gu);

			return "Cat_Registration";
	  }
	  
	  // 고양이 등록 페이지 지역(동)을 가져오는 메소드
	  @RequestMapping("/catgetdong")
	  @ResponseBody
	  public List<Map<String,String>> getDong(@RequestParam(name="gu") String gu)
	  {
		  // 리턴 변수 설정
		  List<Map<String, String>> result = new ArrayList<>();
		  
		  // 모델에 필요한 구 매개변수 설정
		  Map<String, String> guMap = new HashMap<>();
		  guMap.put("gu", gu);
		  
		  result = service.getCatDong(guMap);
		  
		  return result;
	  }
	  
	  // 고상페 활동 날짜 변경 
	 @RequestMapping(value="/act_date")
	 @ResponseBody
	 public void actDate(@RequestParam(name="id") String id,
			 			 @RequestParam(name="act_date") String act_date, 
			 			 HttpServletResponse response) throws IOException
	 {
		 response.setCharacterEncoding("UTF-8");
		 
		 Map<String, String> map = new HashMap<String, String>();
		 map.put("cat_code", id);
		 map.put("act_date", act_date);
		 
		 JSONArray json = new JSONArray(service.actDate(map));
		 
		 response.getWriter().print(json.toString());	
	 }
	 
	 
	 // 고양이 활동 등록하는 부분
	 @RequestMapping(value="/actregistration", method = RequestMethod.POST)
	 public String actRegistration(Map<String, Object> param, Model model, HttpServletRequest request, HttpSession session, MultipartFile file)
	 {		 
		 // 사용자 id로 user_code를 알아냄
		 Map<String, String> map = new HashMap<String, String>();
		 map.put("id", (String)session.getAttribute("user_id"));
		 Map<String, Object> selectResult = boardService.selectUserId(map);
		 String user_code = (String)selectResult.get("USER_CODE");
		 
		 // 이미지를 저장하고 저장된 이미지 경로를 반환함
		 // 이미지 경로를 자료구조(고양이 등록정보)에 넣음: /resource/img.jpg
		 String path = session.getServletContext().getRealPath("/");
		 String imageUrl = imageService.saveImage(file, path);
		 
		 
		 
		 // insert 할 자료들 매핑
		 param.put("cat_code", request.getParameter("cat_id"));
		 param.put("user_code", user_code);
		 param.put("act_type", request.getParameter("activityRadio"));
		 param.put("content", request.getParameter("activityContent"));
		 param.put("latitude", request.getParameter("latitude"));
		 param.put("longitude", request.getParameter("longitude"));
		 param.put("act_location", request.getParameter("gu")+" "+request.getParameter("dong"));
		 param.put("act_date", request.getParameter("firstDatepicker"));
		 param.put("CAT_REP_IMG", imageUrl);
		 
		 // 활동 추가 메소드 실행
		 service.addAct(param);
		 
		 // 리다이렉트를 위해 url 작성
		 String redirect = "redirect:/catdetail?id="+request.getParameter("cat_id");
		 
		 return redirect;
		 
	 }
	 
	  
	 // 팔로우 체크하는 구문
	 @RequestMapping("/followCheck")
	 public void followCheck(String cat_id,HttpSession session, Map<String, Object> map, HttpServletResponse response, Model model) throws IOException
	 {
		 int result = 0;
		 
		 // 사용자 id로 user_code를 알아냄
		 Map<String, String> map2 = new HashMap<String, String>();
		 map2.put("id", (String)session.getAttribute("user_id"));
		 Map<String, Object> selectResult = boardService.selectUserId(map2);
		 String user_code = (String)selectResult.get("USER_CODE");
		 
		 map.put("cat_id",cat_id);
		 map.put("user_code",user_code);
		 
		 result = service.followCheck(map);
		 
		 response.getWriter().print(result);
	 }
	 
	 // 팔로우 insert
	 @RequestMapping(value="/follow")
	 public String follow(String cat_id,HttpSession session, Map<String, Object> map, HttpServletResponse response) throws IOException
	 {
		 String result = null;
		 
		 // 사용자 id로 user_code를 알아냄
		 Map<String, String> map2 = new HashMap<String, String>();
		 map2.put("id", (String)session.getAttribute("user_id"));
		 Map<String, Object> selectResult = boardService.selectUserId(map2);
		 String user_code = (String)selectResult.get("USER_CODE");
		 
		 map.put("cat_id",cat_id);
		 map.put("user_code",user_code);
		 
		 service.follow(map);
		 
		 result = "redirect:/catdetail?id=" + cat_id;
		 
		 return result;
	 }
	 
	 
	 // 언팔로우 delete
	 @RequestMapping(value="/unfollow")
	 public String unfollow(String cat_id,HttpSession session, Map<String, Object> map, HttpServletResponse response) throws IOException
	 {
		 String result = null;
		 
		 // 사용자 id로 user_code를 알아냄
		 Map<String, String> map2 = new HashMap<String, String>();
		 map2.put("id", (String)session.getAttribute("user_id"));
		 Map<String, Object> selectResult = boardService.selectUserId(map2);
		 String user_code = (String)selectResult.get("USER_CODE");
		 
		 map.put("cat_id",cat_id);
		 map.put("user_code",user_code);
		 
		 service.unfollow(map);
		 
		 result = "redirect:/catdetail?id=" + cat_id;
		 
		 return result;
	 }
	 
	 // 신고 INSERT
	 
	 @RequestMapping("/declaration")
	 public String declaration(HttpServletRequest request)
	 {
		 Map<String, Object> map = new HashMap<String, Object>();
		 map.put("declarationSelect",request.getParameter("declarationSelect"));
		 map.put("declarationContent",request.getParameter("declarationContent"));
		 
		 System.out.println("★★★★★★★★★★★★★★"+request.getParameter("declarationSelect"));
		 System.out.println("★★★★★★★★★★★★★★"+request.getParameter("declarationContent"));
		 
		 service.declarationInsert(map);
		 
		 return "redirect:/catdetail?id=" + request.getParameter("cat_id");
	 }
	 
}

