package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface CatDAO
{
	public Map<String, Object> selectOne();
	public List<String> selectList(String id);
	public int count(String id);
}
