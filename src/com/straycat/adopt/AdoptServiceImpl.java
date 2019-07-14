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
	
	
	// 입양 리스트 조회
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
			String address = dao.searchAddress((String) param.get("gu"), (String) param.get("dong"));
			param.put("ADDRESS", address);
			Date date = Date.valueOf((String) param.get("rsq_date"));
			param.put("RSQ_DATE", date);
			param.put("CAT_NAME", (String) param.get("cat_name"));
			param.put("CAT_SPECIES", (String) param.get("cat_species"));
			param.put("CAT_AGE_TYPE", (String) param.get("cat_age_type"));
			param.put("CAT_AGE_NUM", (String) param.get("cat_age_num"));
			param.put("CAT_SEX", (String) param.get("cat_sex"));
			param.put("ADT_TYPE", (String) param.get("adt_type"));
			param.put("CAT_ETC1", (String) param.get("cat_etc1"));
			param.put("CAT_ETC2", (String) param.get("cat_etc2"));
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
	public Map<String, Object> readAdopt(String id)
	{
		Map<String, Object> post = null;

		try
		{
			post = dao.readAdopt(id);

			// 조회수 증가 메소드 추가해야함.

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

	
	
	
	
}
