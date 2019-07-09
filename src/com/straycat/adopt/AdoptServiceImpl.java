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
			list = dao.selectList();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}

}
