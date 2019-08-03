package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface CatDAO 
{
    public Map<String, Object> selectOne(String id);
    public List<Map<String, Object>> selectList(String id);
    public List<Map<String, String>> selectList(Map<String, String> map);
    public List<Map<String, Object>> selectActStartList(String id);
    
    public List<Map<String, Object>> listCat(Map<String, Object> map);
    
    public int addCat(Map<String, Object> map);
    
    public String searchAddress(String gu, String dong);
    
    // 셀렉트 박스 내 구 리스트 조회 메소드
    public List<Map<String, Object>> listGu();
    
    // 셀렉트 박스 내 동 리스트 조회 메소드 
    public List<Map<String, Object>> listDong(String selectedGu);

    // 리스트 개수 조회 메소드 
    public int dataCount(String searchGu, String searchDong);
    
    // 고상페 활동 내역 리스트 
    public List<Map<String, String>> actDate(Map<String, String> map);
    
    public <T> T selectOne(String id, Object value);
    
    public int insert(String id, Object value);
    
    public int delete(String id, Object value);
    
    // selectOne
    public Map<String, Object> selectOneOne(String id, Object value); 
    
	public List<Map<String, Object>> selectListList(String id);
	
	public List<Map<String, Object>> selectListListList(String id);
    
     
	
}
