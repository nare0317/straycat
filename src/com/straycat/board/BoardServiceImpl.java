package com.straycat.board;

import java.util.HashMap;
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

	@Override
	public Map<String, Object> articleLoad(Map<String, Object> map)
	{
		Map<String, Object> article = null;
		
		try
		{
			article = dao.selectOne("board.articleLoad", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return article;
	}
	
	// 댓글 리스트를 불러오는 메소드
	@Override
	public List<Map<String, Object>> commentLoad(Map<String, Object> map) 
	{
		List<Map<String, Object>> list = null;
		
		try 
		{
			list = dao.selectList("board.commentLoad", map);
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return list;
	}
	
	// 댓글 수를 가져오는 메소드
	@Override
	public int commentCount(Map<String, Object> map)
	{
		int result = 0;
		
		try 
		{
			result = dao.selectOne("board.commentCount", map);
			System.out.println(result);
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		
		return result;
	}

	// 댓글을 추가하는 메소드
	@Override
	public int commentInsert(Map<String, String> map) 
	{
		int result = 0;
		
		try 
		{
			result = dao.insert("board.commentInsert", map);
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		return result;
	}

	// 이용자의 USER_CODE를 알아내는 메소드
	@Override
	public Map<String, Object> selectUserId(Map<String, String> map) 
	{
		Map<String, Object> result = new HashMap<String, Object>();
		
		try 
		{
			result = dao.selectOne("board.selectUser", map);
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		
		
		return result;
	}
	
	
	
}
