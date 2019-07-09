package com.straycat.cat;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.CatDAO;

@Repository("CatDAO")
public class CatDAOImpl implements CatDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public Map<String, Object> selectOne()
	{
		Map<String, Object> catInfo = null;
		
		try
		{
			catInfo = sqlSession.selectOne("catDetail.catInfo");
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return catInfo;
	}

	@Override
	public List<String> selectList()
	{
		List<String> catLocation = null;
		
		try
		{
			catLocation = sqlSession.selectList("catDetail.catLocation");
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return catLocation;	
	}
	
	@Override
	public List<String> selectActList()
	{
		List<String> catActReg = null;
		
		try
		{
			catActReg = sqlSession.selectList("catDetail.actReg");
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return catActReg;	
	}
	
}
