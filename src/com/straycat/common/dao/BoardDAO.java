package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface BoardDAO
{
	// mapper의 id와 Map<SearchKey, SearchValue>를 인자로 받아서 리스트를 반환하는 메소드 (검색 시 사용)
	public List<Map<String, Object>> selectList(String id, Object value);	
	
	// mapper의 id와 Map<SearchKey, SearchValue>를 인자로 받아서 리스트를 반환하는 메소드 (검색 시 사용)
	public <T> T selectOne(String id, Object value);
	
	// mapper의 id를 인자로 받아서 리스트를 반환하는 메소드 (모든 데이터)
	public <T> T selectOne(String id);
}
