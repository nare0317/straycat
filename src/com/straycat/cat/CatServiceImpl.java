package com.straycat.cat;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.CommonDAO;

@Service("catDetail")
public class CatServiceImpl implements CatService
{
	@Resource(name="CatDAO")
	private CommonDAO dao;

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
}
