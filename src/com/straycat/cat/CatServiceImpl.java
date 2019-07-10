package com.straycat.cat;

import java.util.ArrayList;
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
	public List<String> catLocation()
	{
		List<String> catLocation = new ArrayList<String>();
		
		try
		{
			catLocation = dao.selectList();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return catLocation;
	}

	@Override
	public List<String> catActReg()
	{
		List<String> catActReg = new ArrayList<String>();
		
		try
		{
			catActReg = dao.selectActList();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return catActReg;
	}	
}
