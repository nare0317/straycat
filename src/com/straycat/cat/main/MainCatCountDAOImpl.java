package com.straycat.cat.main;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.MainCatCountDAO;

@Repository
public class MainCatCountDAOImpl implements MainCatCountDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int checkCount(Map<String, Object> map)
	{
		int result = 0;
		
		try
		{
			result = sqlSession.selectOne("mm.locationCatCount", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return result;
	}
	
}
