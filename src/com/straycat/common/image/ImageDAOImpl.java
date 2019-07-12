package com.straycat.common.image;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.ImageDAO;

@Repository
public class ImageDAOImpl implements ImageDAO
{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insert(Map<String, Object> map)
	{
		int result = 0;
		
		try
		{
			result = sqlSession.insert("image.insert", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return result;
	}

}
