package com.straycat.login;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.LoginDAO;
import com.straycat.service.LoginService;

@Service(value="LoginService")
public class LoginServiceImpl implements LoginService
{
	@Autowired
	private LoginDAO dao;
	
	@Override
	public int loginCheck(Map<String, Object> map)
	{
		return dao.loginCheck(map);
	}

	@Override
	public void logout(HttpSession session)
	{
		session.invalidate();
	}
	
}
