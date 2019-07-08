package com.straycat.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("board")
public class BoardServiceImpl implements BoardService 
{
	@Autowired
	private BoardDAO dao;
	
	@Override
	public List<BoardDTO> listBoard(Map<String, Object> map) 
	{
		List<BoardDTO> list = null;
		
		try
		{
			list = dao.selectList("bbs.listBoard", map);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}
	
}
