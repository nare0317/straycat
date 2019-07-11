package com.straycat.cat;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.straycat.common.dao.CatDAO;
import com.straycat.service.CatService;


@Service("catDetail")
public class CatServiceImpl implements CatService
{
	@Resource(name="CatDAO")
	private CatDAO dao;

	@Override
	public Map<String, Object> catInfo()
	{
		Map<String, Object> catInfo = new HashMap<String, Object>();
		
		try
		{
			catInfo = dao.selectOne();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return catInfo;
	}

	@Override
	public List<Map<String, Object>> catLocation()
	{		
		return dao.selectList();
	}

	@Override
	public List<Map<String, Object>> catActReg()
	{
		return dao.selectActList();
	}	
}
