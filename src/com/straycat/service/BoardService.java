package com.straycat.service;

import java.util.List;
import java.util.Map;


public interface BoardService 
{
	public List<Map<String, Object>> listBoard(Map<String, Object> map);
	public int getLastPage();
	public int dataCount(Map<String, Object> map);
	public Map<String, Object> articleLoad(Map<String, Object> map);
	public List<Map<String, String>> bbsWriteCat();
	public int bbsWrite(Map<String, Object> map);
	
	public int commentCount(Map<String, Object> map);
	public int commentInsert(Map<String, String> map);
	public List<Map<String, Object>> commentLoad(Map<String, Object> map);
	public int commentDelete(Map<String, String> map);
	public int commentUpdate(Map<String, String> map);
	
	public Map<String, Object> selectUserId(Map<String, String> map); 
	
	public int viewCountUpdate(Map<String, String> map);
	
	// 게시물 삭제한느 메소드
	public int articleCmtDelete(Map<String, String> map);
	public int articleDelete(Map<String, String> map);
	
	// 게시물 업데이트 리스트 가져오는 메소드
	public Map<String, Object> articleUpdateValue(String id);
	
	// 게시물 업데이트 메소드
	public int articleUpdate(Map<String, String> map);
}
