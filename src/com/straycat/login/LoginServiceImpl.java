package com.straycat.login;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.LoginDAO;
import com.straycat.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService
{
	@Autowired
	private LoginDAO dao;
	
	@Override
	public Map<String, Object> loginCheck(Map<String, Object> map)
	{
		Map<String, Object> result = null;
		
		try
		{
			result = dao.selectOne("login.loginCheck", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return result;
	}

}
