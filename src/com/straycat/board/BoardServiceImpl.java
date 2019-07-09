package com.straycat.board;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.BoardDAO;
import com.straycat.service.BoardService;

@Service("board")
public class BoardServiceImpl implements BoardService 
{
	@Autowired
	private BoardDAO dao;
	
	// DB를 조회하여 리스트를 불러오는 메소드
	@Override
	public List<Map<String, Object>> listBoard(Map<String, Object> map)
	{
		List<Map<String, Object>> list = null;
		
		try 
		{
			list = dao.selectList("board.listBoard", map);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return list;
	}

	// DB를 조회하여 마지막 페이지를 계산하는 메소드(deprecated)
	@Override
	public int getLastPage()
	{
		int lastPage = 0;
		
		lastPage = dao.selectOne("board.countList");
		if (lastPage%10!=0)
			lastPage = lastPage/10+1;
		else
			lastPage = lastPage/10;
		
		return lastPage;
	}
	
	// 모든 데이터를 카운트하는 메소드
	@Override
	public int dataCount(Map<String, Object> map) 
	{
		int result = 0;
		
		try 
		{
			result = dao.selectOne("board.countList", map);
			System.out.println(result);
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	
}
