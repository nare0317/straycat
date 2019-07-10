package com.straycat.service;

import java.util.List;
import java.util.Map;

public interface CatService
{
	public Map<String, Object> catInfo();
	public List<String> catLocation();
	public List<String> catActReg();
}
