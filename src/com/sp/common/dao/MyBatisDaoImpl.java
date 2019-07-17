package com.sp.common.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("dao")
public class MyBatisDaoImpl implements CommonDAO 
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	// ******************************************************************
	// 데이터 추가
    public int insertData(String id, Object value) throws Exception 
    {
    	int result = 0;

		try 
		{
			result = sqlSession.insert(id, value);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		finally
		{
			//
		}
		return result;
    }
    
    public int insertData(String id) throws Exception 
    {
    	int result = 0;

		try 
		{
			result = sqlSession.insert(id);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		finally 
		{
			//
		}
		return result;
    }
    
	// ******************************************************************
	// 데이터 수정
    public int updateData(String id, Object value) throws Exception 
    {
		int result = 0;
		
		try 
		{
	   	    result = sqlSession.update(id, value);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return result;
    }
    
    public int updateData(String id) throws Exception 
    {
		int result = 0;
		
		try 
		{
	   	    result = sqlSession.update(id);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return result;
    }
    
	// ******************************************************************
	// 데이터 삭제
	public int deleteData(String id, Object value) throws Exception 
	{
		int result = 0;
		
		try 
		{
			result = sqlSession.delete(id, value);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}

		return result;
    }
	
	public int deleteData(String id) throws Exception 
	{
		int result = 0;
		
		try 
		{
	    	result = sqlSession.delete(id);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}

		return result;
    }
	
	// ******************************************************************
	// 테이블의 하나 이상의 레코드를 SELECT
	public <T> List<T> selectList(String id, Object value) throws Exception 
	{
		List<T> list = null;
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
	
	public <T> List<T> selectList(String id) throws Exception 
	{
		List<T> list = null;
		
		try 
		{
			list = sqlSession.selectList(id);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}	
		
		return list;
	}
	
	// ******************************************************************
	// 테이블의 하나의 레코드를 SELECT
	public <T> T selectOne(String id, Object value) throws Exception 
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

	public <T> T selectOne(String id) throws Exception 
	{
		try 
		{
			return  sqlSession.selectOne(id);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}		
	}
}









