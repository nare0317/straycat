package com.straycat.service;

import java.util.List;
import java.util.Map;


public interface AdoptService
{
	// 입양게시판 리스트 조회
	public List<Map<String, Object>> listAdopt();
	public List<Map<String, Object>> listAdopt(String searchGu, String searchDong);
	
	// 입양게시글 등록
	public int addAdopt(Map<String, Object> param);
	
	// 사용자 정보 검색
	public Map<String, Object> searchUserInfo(String user_id);
	
	// 입양게시글 열람
	public Map<String, Object> readAdopt(String adt_code);
	
	// 구 리스트 조회 
	public List<Map<String, Object>> listGu();
	
	// 동 리스트 조회
	public List<Map<String, Object>> listDong(String selectedGu);
	
	// 조회된 데이터 개수 출력
	public int dataCount(String searchGu, String searchDong);
	
	// 입양 게시글 상태 변경
	public int changeStatus(String adt_proc, String adt_code);
	
	// 입양게시글 수정 
	public int updateAdopt(Map<String, Object> param);

	// 입양 신청
	public int applyAdopt(Map<String,Object> param);
	
	// 입양신청자 리스트 조회 
	public List<Map<String, Object>> listApplicant(String adt_code);
	
}
