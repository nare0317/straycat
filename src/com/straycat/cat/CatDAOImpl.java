package com.straycat.cat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.straycat.common.dao.CatDAO;

@Repository("CatDAO")
public class CatDAOImpl implements CatDAO
{
	@Autowired
	private SqlSession sqlSession;
	
	private final Logger logger = LoggerFactory.getLogger(getClass());
	
	@Override
	public List<Map<String, Object>> listCat(Map<String, Object> map)
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			list = sqlSession.selectList("cat.listCat", map);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}	

	@Override
	public int addCat(Map<String, Object> map)
	{
		int result = 0; 
		try
		{
			result = sqlSession.insert("cat.addCat", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return result;
	}

	@Override
	public String searchAddress(String gu, String dong)
	{
		String address = null;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("gu", gu);
		map.put("dong", dong);
		
		try
		{
			address = (String)sqlSession.selectOne("cat.searchAddress", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return address;
	}

	@Override
	public Map<String, Object> selectOne(String id)
	{
		Map<String, Object> catInfo = null;
		
		try
		{
			catInfo = sqlSession.selectOne("catDetail.catInfo", id);
			
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return catInfo;
	}
	
	@Override
	public Map<String, Object> selectOneOne(String id, Object value)
	{
		try
		{
			return sqlSession.selectOne(id, value);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
	}

	@Override
	public List<Map<String, Object>> selectList(String id)
	{
		
		return sqlSession.selectList("catDetail.catLocation",id);	
	}
	
	@Override
	public List<Map<String, Object>> selectListList(String id)
	{
		
		return sqlSession.selectList("catDetail.actGalList",id);	
	}
	
	@Override
	public List<Map<String, Object>> selectListListList(String id)
	{
		
		return sqlSession.selectList("catDetail.representationCat",id);	
	}
	
	@Override
	public List<Map<String, Object>> selectActStartList(String id)
	{		
		return sqlSession.selectList("catDetail.actRegStart",id);	
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
			
			dataCount = sqlSession.selectOne("cat.countList", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return dataCount;
	}

	@Override
	public List<Map<String, String>> actDate(Map<String, String> map)
	{
		List<Map<String, String>> result = new ArrayList<Map<String,String>>();
		
		try
		{
			result = sqlSession.selectList("catDetail.actReg", map);
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return result;
	}

	@Override
	public List<Map<String, String>> selectList(Map<String, String> map)
	{
		List<Map<String, String>> result = new ArrayList<>();
		
		try
		{
			result = sqlSession.selectList("cat.catGetDong", map);
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		
		return result;
	}
	
	
	@Override
	public <T> T selectOne(String id, Object value)
	{
		
		try
		{
			return sqlSession.selectOne(id, value);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		
	}
	
	// insert 메소드
	@Override
	public int insert(String id, Object value) 
	{
		int result = 0;
		
		try 
		{
			sqlSession.insert(id, value);
		} catch (Exception e) 
		{
			logger.error(e.toString());
			throw e;
		}
		
		return result;
	}
	
	// delete 메소드
	@Override
	public int delete(String id, Object value) 
	{
		int result = 0;
		
		try 
		{
			sqlSession.delete(id, value);
		} catch (Exception e) 
		{
			logger.error(e.toString());
			throw e;
		}
		
		return result;
	}
	
	
}
