package com.straycat.board;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.CommonDAO;

@Service("board")
public class BoardServiceImpl implements BoardService 
{
	@Autowired
	private CommonDAO dao;
	
	// DB를 조회하여 모든 게시물 리스트를 불러오는 메소드
	@Override
	public List<Map<String, Object>> listBoard()
	{
		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
		
		list = dao.selectList();
		
		return list;
	}

	// DB를 조회하여 마지막 페이지를 계산하는 메소드
	@Override
	public int getLastPage()
	{
		int lastPage = 0;
		
		lastPage = dao.countList();
		if (lastPage%10!=0)
			lastPage = lastPage/10+1;
		else
			lastPage = lastPage/10;
		
		return lastPage;
	}
	
}
