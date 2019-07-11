package com.straycat.adopt;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.AdoptDAO;
import com.straycat.service.AdoptService;

@Service("adopt")
public class AdoptServiceImpl implements AdoptService
{
	@Autowired
	private AdoptDAO dao;
	
	// 입양 리스트 조회
	@Override
	public List<Map<String, Object>> listAdopt()
	{
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		try
		{
			list = dao.listAdopt();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}

	// 입양 게시글 등록
	@Override
	public int addAdopt(Map<String, Object> map)
	{
		int result = 0;
		
		try
		{
			result = dao.addAdopt(map);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

	// 주소 찾기
	@Override
	public String searchAddress(String gu, String dong)
	{
		String result = ""; 
		
		try
		{
			result = dao.searchAddress(gu, dong);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return result;
	}

	
	
	// 게시물 작성자 정보 조회
	@Override
	public Map<String, Object> searchUserInfo(String user_id)
	{
		Map<String, Object> user = null;
		
		try
		{
			user = dao.searchUserInfo(user_id);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return user;
	}

	// 게시글 열람 
	@Override
	public Map<String, Object> readAdopt(String id)
	{
		Map<String, Object> post = null;
		
		try
		{
			post = dao.readAdopt(id);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return post;
	}
	
	
	
	


}
