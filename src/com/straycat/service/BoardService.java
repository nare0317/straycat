package com.straycat.service;

import java.util.List;
import java.util.Map;


public interface BoardService 
{
	public List<Map<String, Object>> listBoard();
	public int getLastPage();
	
}
