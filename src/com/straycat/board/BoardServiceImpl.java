package com.straycat.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.CommonDAO;

@Service("board")
public class BoardServiceImpl implements BoardService 
{
	@Resource(name="BoardDAO")
	private CommonDAO dao;
	
	@Override
	public List<Map<String, Object>> listBoard()
	{
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		try
		{
			list = dao.selectList();
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
}
