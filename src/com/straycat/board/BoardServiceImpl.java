package com.straycat.board;

import java.io.BufferedReader;
import java.io.Reader;
import java.sql.Clob;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.straycat.common.dao.BoardDAO;
import com.straycat.service.BoardService;

import oracle.sql.CLOB;

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
			// 특정 게시물의 데이터를 map에 넣음
			article = dao.selectOne("board.articleLoad", map);
			
			// map의 key 값 중 CLOB를 꺼내서 Clob 객체에 넣음
			Clob clob = (Clob)article.get("CONTENT");
			
			// getCharacterStream()의 결과로 CLOB 객체의 값을 담은 Reader 객체를 반환
			Reader contentReader = clob.getCharacterStream();
			
			// 얻어놓은 Clob 객체의 길이만큼의 char 배열 선언
			char[] charArray = new char[(int)clob.length()];
			
			// read 메소드를 통해 Reader 객체의 값을 읽어서 char 배열의 칸마다 글자를 넣음 
			contentReader.read(charArray);
			
			// char 배열을 String 으로 변환
			String content = new String(charArray);
			
			// 얻은 String 문자열을 다시 map에 넣어서 메소드의 실행결과로 반환함
			article.put("CONTENT", content);
			
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
	
	// 댓글을 삭제하는 메소드
	@Override
	public int commentDelete(Map<String, String> map)
	{
		int result = 0;
		
		try
		{
			result = dao.delete("board.commentDelete", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return result;
	}

	// 댓글을 업데이트 하는 메소드
	@Override
	public int commentUpdate(Map<String, String> map)
	{
		int result = 0;
		
		try
		{
			result = dao.update("board.commentUpdate", map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return result;
	}

	// 조회수를 증가시키는 메소드
	@Override
	public int viewCountUpdate(Map<String, String> map) 
	{
		int result = 0;
		
		try 
		{
			result = dao.update("board.viewCountUpdate", map);
		} catch (Exception e) 
		{
			System.out.println(e.toString());
		}
		
		return result;
	}

	@Override
	public List<Map<String, String>> bbsWriteCat()
	{
		List<Map<String, String>> result = new ArrayList<Map<String,String>>();
		
		try
		{
			result = dao.selectList();
		} catch (Exception e)
		{
			// TODO: handle exception
		}
		
		return result;
	}
	
	
}
