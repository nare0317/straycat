package com.straycat.cat;

import java.util.List;
import java.util.Map;

public interface CatCommonDAO
{
	public Map<String, Object> selectOne();
	public List<String> selectList();
}
