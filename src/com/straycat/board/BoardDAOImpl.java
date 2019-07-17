package com.straycat.board;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.BoardDAO;

@Repository("BoardDAO")
public class BoardDAOImpl implements BoardDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public List<Map<String, Object>> selectList(String id, Object value)
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			list = sqlSession.selectList(id, value);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}

	@Override
	public <T> T selectOne(String id)
	{
		try 
		{
			return sqlSession.selectOne(id);
		} catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
	}

	@Override
	public <T> T selectOne(String id, Object value) 
	{
		try
		{
			return sqlSession.selectOne(id, value);
		}
		catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}		
	}

	@Override
	public int insert(String id, Object value) {
		
		int result = 0;
		
		try 
		{
			result = sqlSession.insert(id, value);
		} catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return result;
	}

	@Override
	public int delete(String id, Object value)
	{
		int result = 0;
		
		try
		{
			result = sqlSession.delete(id, value);
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return result;
	}

	@Override
	public int update(String id, Object value)
	{
		int result = 0;
		
		try
		{
			result = sqlSession.update(id, value);
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return result;
	}

	@Override
	public List<Map<String, String>> selectList()
	{
		List<Map<String, String>> result = null;
		
		try
		{
			result = sqlSession.selectList("board.bbsWriteCat");
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return result;
	}

	
	
	
	
}
