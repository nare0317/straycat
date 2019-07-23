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
	
	
	// 키워드 검색 후 게시글 리스트 조회 메소드 
	@Override
	public List<Map<String, Object>> searchAdopt(String searchKey, String searchValue)
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			Map<String, String> map = new HashMap<String, String>();
			map.put("searchKey", searchKey);
			map.put("searchValue", searchValue);
			
			list = sqlSession.selectList("adopt.searchList2", map);
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
	public Map<String, Object> readAdopt(String articleNumStr)
	{
		Map<String, Object> post = null; 
		
		try 
		{
			int articleNum = Integer.parseInt(articleNumStr);
			post = sqlSession.selectOne("adopt.readAdopt", articleNum);
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

	
	// 지역 검색 후 데이터 갯수 조회 메소드
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

	// 입양게시글 상태 변경 메소드
	@Override
	public int changeStatus(String adt_proc, String adt_code)
	{
		int result = 0; 
		try
		{
			Map<String, String> map = new HashMap<String, String>();
			map.put("adt_proc", adt_proc);
			map.put("adt_code", adt_code);
			
			result = sqlSession.update("adopt.updateStatus", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return result;
	}

	// 추천수 조회 메소드
	@Override
	public int countLike(String adt_code)
	{
		int count = 0; 
		try
		{
			count = sqlSession.selectOne("adopt.countLike", adt_code);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return count;
	}

	// 댓글수 조회 메소드
	@Override
	public int countComment(String adt_code)
	{
		int count = 0; 
		try
		{
			count = sqlSession.selectOne("adopt.countComment", adt_code);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return count;
	}


	
	// 조회수 증가 메소드 
	@Override
	public int addHitCount(String adt_code)
	{
		int result = 0; 
		
		try
		{
			result = sqlSession.update("adopt.addHitCount", adt_code);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return result; 
	}

	
	
	// 게시물 수정 메소드
	@Override
	public int updateAdopt(Map<String, Object> param)
	{
		int result = 0;
		
		try
		{
			result = sqlSession.update("adopt.updateAdopt", param);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		return result;
	}

	// 입양 신청 등록 메소드 
	@Override
	public int applyAdopt(Map<String, Object> map)
	{
		int result = 0; 
		try
		{
			result = sqlSession.insert("adopt.applyAdopt", map);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return result;
	}

	// 입양 신청자 리스트 조회 메소드
	@Override
	public List<Map<String, Object>> applicantList(String adt_code)
	{
		List<Map<String, Object>> applicant_list = null;
				
		try
		{
			applicant_list = sqlSession.selectList("adopt.applicantList", adt_code);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return applicant_list;
	}
	
	// 입양 신청자 수 조회 메소드(한 입양글)
	@Override
	public int countApplicant(String adt_code)
	{
		int count = 0; 
		try
		{
			count = sqlSession.selectOne("adopt.countApplicant", adt_code);
			
		} catch (Exception e)
		{
			logger.error(e.toString());
			
			throw e;
		}
		return count;
		
	}
	
	// 매칭 후보자 리스트 조회 메소드
	@Override
	public List<Map<String, Object>> listApply(String adt_code)
	{
		List<Map<String, Object>> list = null; 
		
		try 
		{
			list = sqlSession.selectList("adopt.listApply", adt_code);
		}
		catch (Exception e) 
		{
			logger.error(e.toString());
			
			throw e;
		}
		
		return list;
	}

	// 게시글 삭제 메소드
	@Override
	public int deleteAdopt(String adt_code)
	{
		int result = 0; 
		try
		{
			result = sqlSession.delete("adopt.deleteAdopt", adt_code);
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		
		return result;
	}

	// 고양이 종류 조회 메소드
	@Override
	public List<Map<String, Object>> catList()
	{
		List<Map<String, Object>> catList = null; 
		try
		{
			catList = sqlSession.selectList("adopt.catList");
		} catch (Exception e)
		{
			logger.error(e.toString());
			throw e;
		}
		
		return catList;
	}
	
	
}
