package com.straycat.service;

import java.util.List;
import java.util.Map;

public interface CatService
{
	public Map<String, Object> catInfo(String id);
	public List<Map<String, Object>> catLocation(String id);
	public List<Map<String, Object>> catActReg(String id);
	
	// 길냥이 등록
	public int addCat(Map<String, Object> map);
	
	// 입양게시판 리스트 조회
	public Map<String, Object> listCat(Map<String, Object> map);
}
