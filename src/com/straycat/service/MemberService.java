package com.straycat.service;

import java.util.Map;

public interface MemberService
{
	public int checkId(String id);
	public int checkNickName(String nickName);
	public int checkEmail(String email);
	public int checkName(Map<String, Object> map);
	public void addJoin(Map<String, Object> param);
	
}
