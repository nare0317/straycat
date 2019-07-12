package com.straycat.service;

import java.util.List;
import java.util.Map;


public interface AdoptService
{
	// 입양게시판 리스트 조회
	//public Map<String, Object> listAdopt();
	public List<Map<String,Object>> listAdopt();
	
	// 입양게시글 등록
	public int addAdopt(Map<String, Object> map);
	
	// 사용자 정보 검색
	public Map<String, Object> searchUserInfo(String user_id);
	
	// 입양게시글 열람
	public Map<String, Object> readAdopt(String id);
	
	// 구 리스트 조회 
	public List<Map<String, Object>> listGu();
	
	// 동 리스트 조회
	public List<Map<String, Object>> listDong(String selectedGu);
	
}
