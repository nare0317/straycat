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
	
	// 길냥이 관리 게시판 리스트 조회
	public List<Map<String, Object>> listCat(Map<String, Object> map);
	
	// 구 리스트 조회 
	public List<Map<String, Object>> listGu();
	
	// 동 리스트 조회
	public List<Map<String, Object>> listDong(String selectedGu);
	
	// 조회된 데이터 개수 출력
	public int dataCount(String searchGu, String searchDong);

	// 고상페 활동 내역 리스트 출력
	public List<Map<String, String>> actDate(Map<String, String> map);
	
	// 길냥이 등록 동 리스트 조회
	public List<Map<String, String>> getCatDong(Map<String, String> map);
	
	public void addAct(Map<String, Object> param);
}
