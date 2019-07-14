package com.straycat.adopt;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.AdoptDAO;

@Repository
public class AdoptDAOImpl implements AdoptDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	
	// 전체 게시글 리스트 조회 메소드
	@Override
	public List<Map<String, Object>> listAdopt()
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			list = sqlSession.selectList("adopt.listAdopt");
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}
	
	// 지역 검색 후 게시글 리스트 조회 메소드 
	@Override
	public List<Map<String, Object>> listAdopt(String searchGu, String searchDong)
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			Map<String, String> map = new HashMap<String, String>();
			map.put("searchGu", searchGu);
			map.put("searchDong", searchDong);
			
			list = sqlSession.selectList("adopt.searchList", map);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}


	// 게시글 등록 메소드
	@Override
	public int addAdopt(Map<String, Object> map)
	{
		int result = 0; 
		try
		{
			result = sqlSession.insert("adopt.addAdopt", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return result;
	}


	// 구와 동을 입력받아 주소코드를 받아오는 메소드
	@Override
	public String searchAddress(String gu, String dong)
	{
		String address = null;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("gu", gu);
		map.put("dong", dong);
		
		try
		{
			address = (String)sqlSession.selectOne("adopt.searchAddress", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return address;
	}

	// 입양게시물 작성자 정보 조회 메소드 
	@Override
	public Map<String, Object> searchUserInfo(String user_id)
	{
		Map<String, Object> user = null;
		
		try
		{
			user = sqlSession.selectOne("adopt.searchUserInfo", user_id);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		
		return user;
	}
	
	
	// 입양게시물 열람 메소드
	@Override
	public Map<String, Object> readAdopt(String id)
	{
		Map<String, Object> post = null; 
		
		try 
		{
			post = sqlSession.selectOne("adopt.readAdopt", id);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return post;
	}

	// 셀렉트 박스 옵션에 구 정보를 넣어주는 메소드
	@Override
	public List<Map<String, Object>> listGu()
	{
		List<Map<String, Object>> list = null; 
		
		try
		{
			list = sqlSession.selectList("adopt.listGu");
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}

	// 셀렉트 박스 옵션에 동 정보를 넣어주는 메소드
	@Override
	public List<Map<String, Object>> listDong(String selectedGu)
	{
		List<Map<String, Object>> list = null; 
		try
		{
			list = sqlSession.selectList("adopt.listDong", selectedGu);	
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return list;
	}

	@Override
	public int dataCount(String searchGu, String searchDong)
	{
		int dataCount = 0;
		try
		{
			Map<String, String> map = new HashMap<String, String>();
			map.put("searchGu", searchGu);
			map.put("searchDong", searchDong);
			
			dataCount = sqlSession.selectOne("adopt.countList", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return dataCount;
	}

	
	
	
	
}
