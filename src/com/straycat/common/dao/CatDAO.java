package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface CatDAO
{
	public Map<String, Object> selectOne(String id);
	public List<Map<String, Object>> selectList(String id);
	public List<Map<String, Object>> selectActList(String id);
	
	public List<Map<String, Object>> listCat(Map<String, Object> map);
	
	public int addCat(Map<String, Object> map);
	
	public String searchAddress(String gu, String dong);
	
	public List<Map<String, Object>> listGu();
	
	public List<Map<String, Object>> listDong(String selectedGu);
}
