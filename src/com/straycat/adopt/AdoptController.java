package com.straycat.adopt;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.straycat.service.AdoptService;
import com.straycat.service.ImageService;

@Controller
public class AdoptController
{
	@Autowired
	private AdoptService service;
	
	@Autowired
	private ImageService imageService;

	
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
	
	
	// 입양게시판 리스트 조회
	@RequestMapping(value = "/adopt_search", method = RequestMethod.GET)
	public String searchList(Model model, @RequestParam(name = "searchKey", defaultValue = "") String searchKey,
			@RequestParam(name = "searchValue", defaultValue = "") String searchValue, HttpServletRequest request)
	{
		List<Map<String, Object>> list = null;
		int dataCount = 0;

		try
		{
			// 검색 결과 리스트
			list = service.searchAdopt(searchKey, searchValue);
			model.addAttribute("list", list);
			
			// 선택된 키워드로 검색된 데이터가 몇 개인지 계산
			dataCount = service.dataCount(searchKey, searchValue);
			model.addAttribute("dataCount", dataCount);
			
			// 셀렉트박스안의 구 리스트를 불러옴
			List<Map<String, Object>> gu = service.listGu();
			model.addAttribute("gu", gu);
			

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
						  , HttpSession session)
	{
		Map<String, Object> user = null;
		
		try
		{
			//HttpSession session = request.getSession();
			String user_id = (String)session.getAttribute("user_id");
			
			// 사용자 id로 찾아낸 정보(이름,전화번호,이메일) 넘기기
			user = service.searchUserInfo(user_id);
			model.addAttribute("user", user);

			// 구 셀렉트박스 값 넘기기
			List<Map<String, Object>> gu = service.listGu();
			model.addAttribute("gu", gu);
			
			// 고양이 종류 이미지 파일 값 넘기기 
			List<Map<String,Object>> catList = service.listCatType();
			model.addAttribute("catList", catList);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return "Adopt_Write";
	}

	// 입양 게시글 등록
	@RequestMapping(value = "/adopt_write", method = RequestMethod.POST)
	public String adoptWrite(@RequestParam Map<String, Object> param
			, HttpSession session
			, MultipartFile file)
	{
		try
		{
			// 이미지를 저장하고 저장된 이미지 경로를 반환함
			// 이미지 경로를 자료구조(고양이 등록정보)에 넣음
			String path = session.getServletContext().getRealPath("/");
			String imageUrl = imageService.saveImage(file, path);
			param.put("CAT_REP_IMG", imageUrl);
			
			service.addAdopt(param);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/adopt";
	}

	// 입양게시글 열람
	@RequestMapping(value = "/adopt_read", method = RequestMethod.GET)
	public String adoptRead(@RequestParam(name="adt_code") String adt_code
							, @RequestParam(name="articleNum") int articleNum
							, HttpServletRequest request
							, Model model)
	{
		Map<String, Object> post = null;
		
		try
		{	
			adt_code = request.getParameter("adt_code");
			articleNum = Integer.parseInt(request.getParameter("articleNum"));
			
			// 게시글 내용 넘기기
			post = service.readAdopt(articleNum, adt_code);
			model.addAttribute("post", post);
			
			
			//---------------------------------------------------------------------
			// 이전글, 다음글 변수 선언
			Map<String,Object> prevArticle = new HashMap<String, Object>();
			Map<String,Object> nextArticle = new HashMap<String, Object>();
			
			// 이전 글 가져오기
			// 이전 글이 있다면(articleNum-1이 1보다 크거나 같으면)
			if (articleNum-1 >= 1)
			{
				prevArticle = service.readAdopt(articleNum-1, adt_code);
			}
			else
			{
				prevArticle.put("CAT_NAME", "이전 게시글이 없습니다.");
			}

			// 다음 글 가져오기
			// 다음 글이 있다면(articleNum+1이 전체 데이터 수보다 작으면)
			if (articleNum+1 <= 16)
			{
				nextArticle = service.readAdopt(articleNum+1, adt_code);
			}
			else
			{
				nextArticle.put("CAT_NAME", "다음 게시글이 없습니다.");
			}
			
			// 이전글/다음글 내용 넘기기 
			model.addAttribute("prevArticle", prevArticle);
			model.addAttribute("nextArticle", nextArticle);
			
			//---------------------------------------------------------------------
			
			// 입양신청자 리스트 넘기기
			List<Map<String, Object>> applicantList = service.listApplicant(adt_code);
			model.addAttribute("applicantList", applicantList);
			
			// 입양신청폼 내용 넘기기(열람페이지 완성 후에 열람하는 메소드를 넘겨야..)
			

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
	 
	// 입양 상태 변경 (게시글 열람페이지 내)
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
		
		//return "redirect:/adopt/apply_list?adt_code="+adt_code;		//-- 입양신청후보자 리스트 페이지로 이동
		return "redirect:/adopt_read?adt_code="+adt_code;
	} 
	
	
	// 게시글 수정 버튼 클릭시 입양게시글 수정페이지로 이동
	@RequestMapping(value = "/adopt_update_form", method = RequestMethod.GET)
	public String updateForm(Model model
							, HttpServletRequest request
							, @RequestParam String adt_code
							, @RequestParam(name="articleNum") int articleNum)
	{
		Map<String, Object> post = null;
		try
		{
			// 게시글 코드 값 받기 
			adt_code = request.getParameter("adt_code");
			
			// 해당 게시글 정보 얻어내기
			post = service.readAdopt(articleNum,adt_code);
			
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
							, HttpServletRequest request
							, HttpSession session
							, MultipartFile file)
	{
		adt_code = request.getParameter("adt_code");
		
		try
		{
			// 수정 시 첨부파일 변경했을 때 
			if (file.getSize()!=0)									//-- file의 사이즈가 0이 아닐때
			{
				// 이미지를 저장하고 저장된 이미지 경로를 반환함
				// 이미지 경로를 자료구조(고양이 등록정보)에 넣음
				String path = session.getServletContext().getRealPath("/");
				String imageUrl = imageService.saveImage(file, path);
				param.put("CAT_REP_IMG", imageUrl);
			}
			// 수정 시 첨부파일 변경안했을 때(원래 이미지 파일값으로 들어감)
			else
			{
				param.put("CAT_REP_IMG", (String)param.get("originalFile"));
			}

			service.updateAdopt(param);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/adopt_read?adt_code="+adt_code;
	}

	// 입양 신청 버튼 클릭 시 입양 신청폼 페이지로 이동
	@RequestMapping(value="/adopt/apply_form", method = RequestMethod.GET)
	public String applyForm(HttpServletRequest request
							, Model model)
	{
		Map<String, Object> user = null;
		String adt_code = ""; 
		
		try
		{
			// 로그인한 사용자 id값 세션에서 가져오기
			HttpSession session = request.getSession();
			String user_id = (String)session.getAttribute("user_id");
			
			// 사용자 id로 찾아낸 정보(이름,전화번호,이메일) 넘기기
			user = service.searchUserInfo(user_id);
			model.addAttribute("user", user);
			
			// 입양모집글 코드 값 받아서 넘기기 
			adt_code = request.getParameter("adt_code");
			model.addAttribute("adt_code", adt_code);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "Apply_Form";
	}
	
	
	// 입양 신청 등록
	@RequestMapping(value = "/adopt/apply", method = RequestMethod.GET)
	public String applyWrite(HttpServletRequest request
							, @RequestParam Map<String, Object> apply
							, Model model)
	{
		String adt_code = ""; 
		
		try
		{
			// 로그인한 사용자 id값 세션에서 가져오기
			//HttpSession session = request.getSession();
			//String user_id = (String)session.getAttribute("user_id");
			
			// 세션에서 가져온 사용자 id값 넘기기 
			//model.addAttribute("applicant_id", user_id);
			
			// 입양모집글 코드 값 받아서 넘기기
			adt_code = request.getParameter("adt_code");
			model.addAttribute("adt_code", adt_code);
			
			//System.out.println("★★★★★★★★★★★★★★★★★★★★★★★");
			//System.out.println(param.values());
			//System.out.println("★★★★★★★★★★★★★★★★★★★★★★★");
			
			// 입양신청폼 넘기기
			service.applyAdopt(apply);
			model.addAttribute("apply", apply);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/adopt_read";
	}

	// 입양 매칭 후보자 리스트 조회
	@RequestMapping(value = "/adopt/apply_list", method = RequestMethod.GET)
	public String applyList(HttpServletRequest request
						  , @RequestParam(name="articleNum") int articleNum
						  , Model model)
	{
		Map<String, Object> user = null;
		String adt_code = ""; 
		List<Map<String, Object>> list = null; 
		Map<String, Object> post = null;
		
		try
		{
			// 로그인한 사용자 id값 세션에서 가져오기
			HttpSession session = request.getSession();
			String user_id = (String)session.getAttribute("user_id");
			
			// 사용자 id로 찾아낸 정보(이름,전화번호,이메일) 넘기기
			user = service.searchUserInfo(user_id);
			model.addAttribute("user", user);
			
			// 입양모집글 코드 값 받아서 넘기기 
			adt_code = request.getParameter("adt_code");
			model.addAttribute("adt_code", adt_code);
			
			//입양신청한 후보자 리스트 값 넘기기
			list = service.listApply(adt_code);
			model.addAttribute("list", list);
			
			// 입양 모집글 정보 받아서 넘김
			post = service.readAdopt(articleNum,adt_code);
			model.addAttribute("post", post);
			
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "Apply_List";
		
	}
	
	
	// 입양모집글 삭제 
	@RequestMapping(value = "/adopt_delete", method = RequestMethod.GET)
	public String adoptDelete(@RequestParam String adt_code)	
	{
		try
		{
			// 게시글 코드를 받아서 service의 deleteAdopt()메소드의 매개변수로 넘김.
			//adt_code = request.getParameter(adt_code);
			service.deleteAdopt(adt_code);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return "redirect:/adopt";
	}


}
