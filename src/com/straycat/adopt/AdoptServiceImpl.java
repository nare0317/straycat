package com.straycat.adopt;

import java.sql.Date;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.AdoptDAO;
import com.straycat.service.AdoptService;

@Service("adopt")
public class AdoptServiceImpl implements AdoptService
{
	@Autowired
	private AdoptDAO dao;
	
	
	// 입양 전체 리스트 조회
	@Override
	public List<Map<String,Object>> listAdopt()
	{
		List<Map<String,Object>> list = null;
		
		try
		{
			list = dao.listAdopt();			//-- 리스트 전체 목록 조회 메소드

		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return list;
	};
	
	// 구와 동 검색 후 리스트 출력하는 메소드 
	@Override
	public List<Map<String, Object>> listAdopt(String searchGu, String searchDong)
	{
		List<Map<String,Object>> list = null;
		
		try
		{
			list = dao.listAdopt(searchGu, searchDong);

		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return list;
	}
	
	
	// 키워드 검색 후 리스트 출력하는 메소드 
	@Override
	public List<Map<String, Object>> searchAdopt(String searchKey, String searchValue)
	{
		List<Map<String,Object>> list = null;
		
		try
		{
			list = dao.searchAdopt(searchKey, searchValue);

		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return list;
	}
	
	
	// 구 셀렉트박스 리스트 조회 
	@Override
	public List<Map<String, Object>> listGu() 
	{
		List<Map<String, Object>> list = null;

		try 
		{
			list = dao.listGu();

		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}
	

	// 동 셀렉트박스 리스트 조회 
	@Override
	public List<Map<String, Object>> listDong(String selectedGu) 
	{
		List<Map<String, Object>> list = null;

		try 
		{
			list = dao.listDong(selectedGu);

		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}


	// 입양 게시글 등록
	@Override
	public int addAdopt(Map<String, Object> param)
	{
		int result = 0;

		try
		{
			// 입력된 구와 동 정보를 가져와 dao의 searchAddress() 메소드로 주소 코드값을 얻어냄. 
			String address = dao.searchAddress((String) param.get("gu"), (String) param.get("dong"));
			param.put("CAT_ADDRESS", address);
			
			// 입력된 날짜의 데이터타입을 String 에서 Date로 변경 
			Date date = Date.valueOf((String) param.get("rsq_date"));
			param.put("RSQ_DATE", date);
			
			param.put("CAT_NAME", (String) param.get("cat_name"));
			param.put("CAT_SPECIES", (String) param.get("cat_species"));
			param.put("CAT_AGE_TYPE", (String) param.get("cat_age_type"));
			param.put("CAT_AGE_NUM", (String) param.get("cat_age_num"));
			param.put("CAT_SEX", (String) param.get("cat_sex"));
			param.put("ADT_TYPE", (String) param.get("adt_type"));
			param.put("CAT_ECT1", (String) param.get("cat_ect1"));
			param.put("CAT_ECT2", (String) param.get("cat_ect2"));
			
			// session에 저장된 user_id값을 받아서 dao의 searchUserInfo() 메소드로 사용자 정보를 map 자료구조에 담음.
			Map<String, Object> userInfo = dao.searchUserInfo((String)param.get("user_id"));
			// map자료구조 안에서 "USER_CODE" 키 값으로 되어있는 USER_CODE 값을 가져옴.
			String user_code = (String) userInfo.get("USER_CODE");
			// param에 USER_CODE값을 넣음.
			param.put("USER_CODE", user_code);
			
			param.put("TEL", (String) param.get("tel"));
			param.put("EMAIL", (String) param.get("email"));
			param.put("ADT_REASON", (String) param.get("adt_reason"));
			param.put("ADT_CAT_EXP", (String) param.get("adt_cat_exp"));
			param.put("ADT_JOB", (String) param.get("adt_job"));
			param.put("ADT_MARRIAGE", (String) param.get("adt_marriage"));
			param.put("ADT_FAMILY_NUM", (String) param.get("adt_family_num"));
			
			result = dao.addAdopt(param);

		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

	// 게시물 작성자 정보 조회
	@Override
	public Map<String, Object> searchUserInfo(String user_id)
	{
		Map<String, Object> user = null;

		try
		{
			user = dao.searchUserInfo(user_id);

		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return user;
	}

	// 게시글 열람
	@Override
	public Map<String, Object> readAdopt(String articleNum, String adt_code)
	{
		Map<String, Object> post = null;
		try
		{
			// 조회수 증가 메소드 추가해야함.
			dao.addHitCount(adt_code);
			
			// 게시글 내용 가져옴.
			post = dao.readAdopt(articleNum);
			
			// 게시글 내용에 추천수 추가 
			post.put("LIKE_COUNT", dao.countLike(adt_code));
			
			// 게시글 내용에 댓글수 추가
			post.put("CMT_COUNT", dao.countComment(adt_code));
			
			// 게시글 내용에 입양신청자수 추가
			post.put("APP_COUNT", dao.countApplicant(adt_code));
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return post;
	}


	// 지역 검색 후 조회된 데이터 갯수 조회
	@Override
	public int dataCount(String searchGu, String searchDong)
	{
		int dataCount = 0;
		try
		{
			dataCount = dao.dataCount(searchGu, searchDong);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return dataCount;
	}

	// 입양 게시글 상태 변경 메소드
	@Override
	public int changeStatus(String adt_proc, String adt_code)
	{
		int result = 0;

		try
		{
			result = dao.changeStatus(adt_proc, adt_code);

		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return result;
	}



	// 입양게시글 수정 
	@Override
	public int updateAdopt(Map<String, Object> param)
	{
		int result = 0; 
		
		try
		{
			
			// 입력된 구와 동 정보를 가져와 dao의 searchAddress() 메소드로 주소 코드값을 얻어냄. 
			String address = dao.searchAddress((String) param.get("gu"), (String) param.get("dong"));
			param.put("CAT_ADDRESS", address);
			
			// 입력된 날짜의 데이터타입을 String 에서 Date로 변경 
			//Date date = Date.valueOf((String)param.get("rsq_date"));
			param.put("RSQ_DATE", (String) param.get("rsq_date"));
			
			param.put("CAT_NAME", (String) param.get("cat_name"));
			param.put("CAT_SPECIES", (String) param.get("cat_species"));
			param.put("CAT_AGE_TYPE", (String) param.get("cat_age_type"));
			param.put("CAT_AGE_NUM", (String) param.get("cat_age_num"));
			param.put("CAT_SEX", (String) param.get("cat_sex"));
			param.put("ADT_TYPE", (String) param.get("adt_type"));
			param.put("CAT_ECT1", (String) param.get("cat_ect1"));
			param.put("CAT_ECT2", (String) param.get("cat_ect2"));
			param.put("TEL", (String) param.get("tel"));
			param.put("EMAIL", (String) param.get("email"));
			param.put("ADT_REASON", (String) param.get("adt_reason"));
			param.put("ADT_CAT_EXP", (String) param.get("adt_cat_exp"));
			param.put("ADT_JOB", (String) param.get("adt_job"));
			param.put("ADT_MARRIAGE", (String) param.get("adt_marriage"));
			param.put("ADT_FAMILY_NUM", (String) param.get("adt_family_num"));
			
			// 게시글코드(adt_code) 값 넘김
			param.put("ADT_CODE", (String)param.get("adt_code"));
			
			result = dao.updateAdopt(param);
			
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	// 입양 신청
	@Override
	public int applyAdopt(Map<String, Object> param)
	{
		int result = 0;
		try
		{
			  param.put("ADT_CODE", (String) param.get("adt_code"));
			  
			  // session에 저장된 user_id값을 받아서 dao의 searchUserInfo() 메소드로 사용자 정보를 map 자료구조에 담음. 
			  Map<String, Object> userInfo =  dao.searchUserInfo((String)param.get("user_id")); 
			  // map자료구조 안에서 "USER_CODE" 키 값으로 되어있는 USER_CODE 값을 가져옴. 
			  String user_code = (String)userInfo.get("USER_CODE"); 
			  // param에 USER_CODE값을 넣음. 
			  param.put("USER_CODE",user_code);
			  
			  param.put("ADT_GENDER", (String) param.get("adt_gender"));
			  param.put("ADT_AGE", (String) param.get("adt_age"));
			  param.put("ADT_RESIDENCE", (String) param.get("adt_residence")); 
			  
			  param.put("ADT_CAT_EXP", (String) param.get("adt_cat_exp")); 
			  param.put("ADT_JOB", (String) param.get("adt_job")); 
			  param.put("ADT_MARRIAGE", (String)param.get("adt_marriage"));
			  param.put("ADT_FAMILY_NUM", (String)param.get("adt_family_num"));
			  param.put("ADT_FAMILY_CONSENT", (String)param.get("adt_family_consent"));
			  
			  param.put("ADT_ALLOW", (String)param.get("adt_allow"));
			  param.put("ADT_PET_NUM", (String)param.get("adt_pet_num"));
			  param.put("ADT_PET_TEXT", (String)param.get("adt_pet_text"));
			  param.put("ADT_CARE_TIME", (String)param.get("adt_care_time"));
			  param.put("ADT_ALLERGY", (String)param.get("adt_allergy"));
			  
			  param.put("ADT_ABANDON", (String)param.get("adt_abandon"));
			  param.put("ADT_ADOPTION", (String)param.get("adt_adoption"));
			  param.put("A1", (String)param.get("a1"));
			  param.put("A2", (String)param.get("a2"));
			  param.put("A3", (String)param.get("a3"));
			  
			  //System.out.println("■■■■■■■■■■■■■■■■■■■■■■■");
			  //System.out.println(param.values());
			  //System.out.println("■■■■■■■■■■■■■■■■■■■■■■■");
			  
			  result = dao.applyAdopt(param);
			 
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

	// 입양신청자 리스트 조회 
	@Override
	public List<Map<String, Object>> listApplicant(String adt_code) 
	{
		List<Map<String, Object>> applicantList = null;
		
		try 
		{
			applicantList = dao.applicantList(adt_code);
			
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return applicantList;
	}

	// 매칭 후보자 리스트 조회 메소드
	@Override
	public List<Map<String, Object>> listApply(String adt_code)
	{
		List<Map<String,Object>> list = null;
		
		try
		{
			// 입양신청 후보자 리스트 정보 가져오기
			list = dao.listApply(adt_code);

		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return list;
	}

	// 입양게시글 삭제 
	@Override
	public int deleteAdopt(String adt_code)
	{
		int result = 0; 
		try
		{
			// 입양게시글 삭제 
			result = dao.deleteAdopt(adt_code);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	// 고양이 종류 이미지 파일 조회
	@Override
	public List<Map<String, Object>> listCatType()
	{
		List<Map<String, Object>> catList = null; 
		try
		{
			catList = dao.catList();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return catList;
	}

	
	
}
