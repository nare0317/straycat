package com.straycat.board;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service("board")
public class BoardImpl implements Board 
{
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public Model getList() 
	{
		
		
		return null;
	}
	
}
