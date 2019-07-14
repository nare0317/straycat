package com.straycat.adopt;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.straycat.service.AdoptService;

@Controller
public class AdoptController
{
	@Autowired
	private AdoptService service;

	
	// 입양게시판 리스트 조회 
	@RequestMapping(value = "/adopt", method = RequestMethod.GET)
	public String selectList(Model model
			, @RequestParam(name="searchGu", defaultValue = "") String searchGu
			, @RequestParam(name="searchDong", defaultValue = "") String searchDong
			, HttpServletRequest request)
	{
		List<Map<String, Object>> list = null;
		int dataCount = 0;
		
		try
		{
			if (searchDong.equals(""))					//-- searchDong에 들어온 값이 없다면
			{
				//-- 게시글 리스트 전체 목록을 불러옴
				list = service.listAdopt();			
			}
			else
			{
				//선택된 구와 동을 기반으로 게시글 목록을 불러옴
				list = service.listAdopt(searchGu, searchDong);
				
				// 선택된 구와 동으로 검색된 데이터가 몇 개인지 계산
				dataCount = service.dataCount(searchGu, searchDong);
			}
			
			// 셀렉트박스안의 구 리스트를 불러옴
			List<Map<String, Object>> gu = service.listGu();
			
			model.addAttribute("list", list);
			model.addAttribute("gu", gu);
			model.addAttribute("dataCount", dataCount);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "Adopt_List";
	}
			
	
	// 입양등록 버튼 클릭시 입양게시글 등록페이지로 이동
	// (→ 로그인 기능 완성되면 이용자 아이디 값 받아서 다시 수정해야함.)
	/*
	 * @RequestMapping(value="/adopt_form", method=RequestMethod.GET) public String
	 * adoptForm(Model model, @RequestParam String user_id)
	 */
	@RequestMapping(value = "/adopt_form", method = RequestMethod.GET)
	public String adoptForm(Model model
							, HttpServletRequest request
							, @RequestParam String id)
	{
		// 사용자 id로 찾아낸 정보(이름,전화번호,이메일) 넘기기
		Map<String, Object> user = service.searchUserInfo(id);
		model.addAttribute("user", user);

		// 구 셀렉트박스 값 넘기기
		List<Map<String, Object>> gu = service.listGu();
		model.addAttribute("gu", gu);

		return "Adopt_Write";
	}

	// 입양 게시글 등록
	@RequestMapping(value = "/adopt_write", method = RequestMethod.GET)
	public String adoptWrite(@RequestParam Map<String, Object> param)
	{
		service.addAdopt(param);
		/*
		 * int result = service.addAdopt(param);
		 * 
		 * if (result != 1) { return null; // -- 등록중에 오류 발생했을 시, 이동할 페이지 넣어줘야함. }
		 */
		return "redirect:/adopt";
	}

	// 입양게시글 열람
	@RequestMapping(value = "/adopt_read", method = RequestMethod.GET)
	public String adoptRead(@RequestParam String id, Model model)
	{
		Map<String, Object> post = service.readAdopt(id);

		model.addAttribute("post", post);

		return "Adopt_Read";
	}

	 // 셀렉트박스 구 선택하면 동 리스트 출력
	 @RequestMapping(value="/adopt_gu", method=RequestMethod.POST)
	 @ResponseBody
	 public ResponseEntity<List<Map<String, Object>>> dongList(String selectedGu) throws Exception 
	 {
		ResponseEntity<List<Map<String, Object>>> entity =null;
		try{
			
			List<Map<String, Object>> list = service.listDong(selectedGu);
			entity = new ResponseEntity<List<Map<String, Object>>>(list, HttpStatus.OK);
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return entity;
	}
	  
	    
	 
}
