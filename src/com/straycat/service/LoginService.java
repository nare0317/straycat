package com.straycat.service;

import java.util.Map;

import javax.servlet.http.HttpSession;


public interface LoginService
{
	public int loginCheck(Map<String, Object> map);
	public void logout(HttpSession session);
}
