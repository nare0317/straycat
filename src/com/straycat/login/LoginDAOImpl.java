package com.straycat.login;

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
	public int loginCheck(Map<String, Object> map)
	{
		return sqlSession.selectOne("login.loginCheck", map);
	}
	
}
