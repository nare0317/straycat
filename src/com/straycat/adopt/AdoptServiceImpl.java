package com.straycat.adopt;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.CommonDAO;

@Service("adopt")
public class AdoptServiceImpl implements AdoptService
{
	@Autowired
	private CommonDAO dao;
	
	@Override
	public List<Map<String, Object>> listAdopt()
	{
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		try
		{
			list = dao.selectList();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}

}
