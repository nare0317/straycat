package com.straycat.adopt;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.AdoptDAO;

@Repository
public class AdoptDAOImpl implements AdoptDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	
	// 게시글 리스트 조회 메소드
	@Override
	public List<Map<String, Object>> listAdopt()
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			list = sqlSession.selectList("adopt.listAdopt");
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}

	
	// 게시글 등록 메소드
	@Override
	public int addAdopt(Map<String, Object> param)
	{
		int result = 0; 
		try
		{
			String address = searchAddress((String)param.get("gu"),(String)param.get("dong"));
			param.put("ADDRESS", address);
			Date date = Date.valueOf((String)param.get("rsq_date"));
			param.put("RSQ_DATE", date);
			
			param.put("CAT_NAME", (String)param.get("cat_name"));
			param.put("CAT_SPECIES", (String)param.get("cat_species"));
			param.put("CAT_AGE_TYPE", (String)param.get("cat_age_type"));
			param.put("CAT_AGE_NUM", (String)param.get("cat_age_num"));
			param.put("CAT_SEX", (String)param.get("cat_sex"));
			param.put("ADT_TYPE", (String)param.get("adt_type"));
			param.put("CAT_ETC1", (String)param.get("cat_etc1"));
			param.put("CAT_ETC2", (String)param.get("cat_etc2"));
			param.put("TEL", (String)param.get("tel"));
			param.put("EMAIL", (String)param.get("email"));
			param.put("ADT_REASON", (String)param.get("adt_reason"));
			param.put("ADT_CAT_EXP", (String)param.get("adt_cat_exp"));
			param.put("ADT_JOB", (String)param.get("adt_job"));
			param.put("ADT_MARRIAGE", (String)param.get("adt_marriage"));
			param.put("ADT_FAMILY_NUM", (String)param.get("adt_family_num"));
			
			result = sqlSession.insert("adopt.addAdopt", param);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return result;
	}


	// 구와 동을 입력받아 주소코드를 받아오는 메소드
	@Override
	public String searchAddress(String gu, String dong)
	{
		String address = null;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("gu", gu);
		map.put("dong", dong);
		
		try
		{
			address = (String)sqlSession.selectOne("adopt.searchAddress", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return address;
	}

	
	
}
