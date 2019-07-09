package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface BoardDAO
{
	public List<Map<String, Object>> selectList();
	public List<Map<String, Object>> selectList(String searchKey, String searchValue);
	public int countList();
}
