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

	@Override
	public String searchAddress(String gu, String dong)
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	


}
