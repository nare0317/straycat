package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("BoardDAO")
public class BoardDAOImpl implements CommonDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public List<Map<String, Object>> selectList()
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			list = sqlSession.selectList("board.listBoard");
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}

	@Override
	public Map<String, Object> selectOne()
	{
		return null;
	}
	
	
}
