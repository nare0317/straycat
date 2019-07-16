package com.straycat.service;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface MypageService
{
	public Map<String, Object> memberInfo(String id);
	
	public void updateMember(Map<String, Object> map);
	
	public void leaveMember(Map<String, Object> map);
	
	public void logout(HttpSession session);
	
	public Map<String, Object> myInfo(String id);
}
