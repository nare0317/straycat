package com.straycat.common.dao;

import java.util.Map;

public interface LoginDAO
{
	public Map<String, Object> selectOne(String id, Object value);
}
