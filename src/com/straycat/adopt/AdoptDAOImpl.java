package com.straycat.adopt;

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

	
	@Override
	public int addAdopt(Map<String, Object> map)
	{
		int result = 0; 
		try
		{
			result = sqlSession.insert("adopt.addAdopt");
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return result;
	}


	@Override
	public String searchAddress(String gu, String dong)
	{
		String address = ""; 
		try
		{
			address = sqlSession.selectOne("adopt.searchAddress");
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return address;
	}

	
	
}
