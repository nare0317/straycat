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
	public List<Map<String, Object>> selectList(String searchKey, String searchValue) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countList() {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	
	
}
