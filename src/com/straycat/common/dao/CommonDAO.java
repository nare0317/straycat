package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface CommonDAO 
{
	public List<Map<String, Object>> selectList();
	public Map<String, Object> selectOne();
}
