package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface AdoptDAO 
{
	// 전체 게시글 리스트 조회 메소드
	public List<Map<String, Object>> listAdopt();
	
	// 지역 검색 후 게시글 리스트 조회 메소드 
	public List<Map<String, Object>> listAdopt(String searchGu, String searchDong);
	
	// 입양 모집글 등록 메소드
	public int addAdopt(Map<String, Object> map);
	
	// 구와 동을 입력받아 주소코드(ADDRESS_CODE) 찾는 메소드
	public String searchAddress(String gu, String dong);
	
	// 사용자 id를 입력받아 사용자 정보(이름,이메일,연락처) 리스트 조회 메소드
	public Map<String, Object> searchUserInfo(String user_id);
	
	// 입양 모집글 열람 메소드
	public Map<String, Object> readAdopt(String articleNumStr);
	
	// 셀렉트 박스 내 구 리스트 조회 메소드
	public List<Map<String, Object>> listGu();
	
	// 셀렉트 박스 내 동 리스트 조회 메소드 
	public List<Map<String, Object>> listDong(String selectedGu);

	// 리스트 개수 조회 메소드 
	public int dataCount(String searchGu, String searchDong);
	
	// 입양 게시글 상태 변경 메소드
	public int changeStatus(String adt_proc, String adt_code);
	
	// 추천수 조회 메소드
	public int countLike(String adt_code);
	
	// 댓글수 조회 메소드 
	public int countComment(String adt_code);
	
	// 조회수 증가 메소드 
	public int addHitCount(String adt_code);
	
	// 입양게시글 수정 메소드
	public int updateAdopt(Map<String,Object> param);
	
	// 입양 신청 등록 메소드 
	public int applyAdopt(Map<String, Object> map);
	
	// 입양 신청자 리스트 조회 메소드
	public List<Map<String, Object>> applicantList(String adt_code);
	
	// 입양 신청자 수 조회 메소드(한 입양글)
	public int countApplicant(String adt_code);
	
	// 매칭 후보자 리스트 조회 메소드
	public List<Map<String, Object>> listApply(String adt_code);

	// 키워드 검색 후 리스트 조회 메소드
	List<Map<String, Object>> searchAdopt(String searchKey, String searchValue);

	// 입양게시글 삭제 메소드
	public int deleteAdopt(String adt_code);

	// 고양이 종류 조회 메소드
	public List<Map<String, Object>> catList();

}
