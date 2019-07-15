package com.straycat.common.dao;

import java.util.Map;

public interface LoginDAO
{
	public int loginCheck(Map<String, Object> map);
	
	public int leaveCheck(Map<String, Object> param);
}
