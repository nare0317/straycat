package com.straycat.cat.main;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.MainCatCountDAO;
import com.straycat.service.MainCatCountService;

@Service(value="MainCatCountService")
public class MainCatCountServiceImpl implements MainCatCountService
{
	@Autowired
	private MainCatCountDAO dao;
	
	@Override
	public int checkCount(Map<String, Object> map)
	{
		return dao.checkCount(map);
	}
	
}
