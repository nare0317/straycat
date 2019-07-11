package com.straycat.login;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.LoginDAO;

@Repository
public class LoginDAOImpl implements LoginDAO
{
	@Autowired
	private SqlSession sqlSession;

	@Override
	public Map<String, Object> selectOne(String id, Object value)
	{
		Map<String, Object> map = new HashMap<String, Object>();
		
		try
		{
			map = sqlSession.selectOne("login.loginCheck", value);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return map;
	}

}
