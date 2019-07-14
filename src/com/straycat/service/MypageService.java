package com.straycat.service;

import java.util.Map;

public interface MypageService
{
	public Map<String, Object> memberInfo(String id);
	
	public void updateMember(Map<String, Object> map);
}
