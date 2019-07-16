package com.straycat.adopt;

import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	@RequestMapping(value = "/adopt_form", method = RequestMethod.GET)
	public String adoptForm(Model model
						  , HttpServletRequest request
							)
	{
		Map<String, Object> user = null;
		
		try
		{
			HttpSession session = request.getSession();
			String user_id = (String)session.getAttribute("user_id");
			
			// 사용자 id로 찾아낸 정보(이름,전화번호,이메일) 넘기기
			user = service.searchUserInfo(user_id);
			model.addAttribute("user", user);

			// 구 셀렉트박스 값 넘기기
			List<Map<String, Object>> gu = service.listGu();
			model.addAttribute("gu", gu);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return "Adopt_Write";
	}

	// 입양 게시글 등록
	@RequestMapping(value = "/adopt_write", method = RequestMethod.GET)
	public String adoptWrite(@RequestParam Map<String, Object> param)
	{
		try
		{
			service.addAdopt(param);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/adopt";
	}

	// 입양게시글 열람
	@RequestMapping(value = "/adopt_read", method = RequestMethod.GET)
	public String adoptRead(@RequestParam String adt_code
							, HttpServletRequest request
							, Model model)
	{
		Map<String, Object> post = null;
		
		try
		{
			adt_code = request.getParameter("adt_code");
			
			post = service.readAdopt(adt_code);
			model.addAttribute("post", post);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		

		return "Adopt_Read";
	}

	 // 셀렉트박스 구 선택하면 동 리스트 출력
	 @RequestMapping(value="/adopt_gu", method=RequestMethod.POST)
	 @ResponseBody
	 public ResponseEntity<List<Map<String, Object>>> dongList(String selectedGu) throws Exception 
	 {
		ResponseEntity<List<Map<String, Object>>> entity =null;
		try
		{
			List<Map<String, Object>> list = service.listDong(selectedGu);
			entity = new ResponseEntity<List<Map<String, Object>>>(list, HttpStatus.OK);
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return entity;
	}
	 
	// 입양 상태 변경 
	@RequestMapping(value = "/adopt_proc", method = RequestMethod.GET) 
	public String changeStatus(@RequestParam String adt_proc
							 , @RequestParam String adt_code
							 , HttpServletRequest request) 
	{
		try
		{
			adt_proc = request.getParameter("adt_proc");
			adt_code = request.getParameter("adt_code");
			
			service.changeStatus(adt_proc, adt_code);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		 
		return "redirect:/adopt_read?adt_code="+adt_code;
	} 
	
	// 게시글 수정 버튼 클릭시 입양게시글 수정페이지로 이동
	@RequestMapping(value = "/adopt_update_form", method = RequestMethod.GET)
	public String updateForm(Model model
							, HttpServletRequest request
							, @RequestParam String adt_code)
	{
		Map<String, Object> post = null;
		try
		{
			// 게시글 코드 값 받기 
			adt_code = request.getParameter("adt_code");
			
			// 해당 게시글 정보 얻어내기
			post = service.readAdopt(adt_code);
			
			// 게시글 정보 넘기기 
			model.addAttribute("post", post);
			
			// 구 셀렉트박스 값 넘기기
			List<Map<String, Object>> gu = service.listGu();
			model.addAttribute("gu", gu);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return "Adopt_Update";
	}
	
	
	// 입양 게시글 수정
	@RequestMapping(value = "/adopt_update", method = RequestMethod.POST)
	public String adoptUpdate(@RequestParam Map<String, Object> param
							, @RequestParam String adt_code
							, HttpServletRequest request)
	{
		adt_code = request.getParameter("adt_code");
		
		try
		{
			service.updateAdopt(param);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/adopt_read?adt_code="+adt_code;
	}

	// 입양 신청 버튼 클릭 시 입양 신청폼 페이지로 이동
	@RequestMapping(value="/adopt/apply_form", method = RequestMethod.GET)
	public String applyForm(@RequestParam String adt_code
							, HttpServletRequest request
							, Model model)
	{
		Map<String, Object> user = null;
		
		try
		{
			HttpSession session = request.getSession();
			String user_id = (String)session.getAttribute("user_id");
			
			// 사용자 id로 찾아낸 정보(이름,전화번호,이메일) 넘기기
			user = service.searchUserInfo(user_id);
			model.addAttribute("user", user);
			
			adt_code = request.getParameter("adt_code");
			model.addAttribute("adt_code", adt_code);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "Apply_Form";
	}
	
	
	


}
