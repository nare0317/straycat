package com.straycat.common.dao;

import java.util.List;
import java.util.Map;

public interface AdoptDAO 
{
	public List<Map<String, Object>> listAdopt();
	
	public int addAdopt(Map<String, Object> map);
	
	public String searchAddress(String gu, String dong);
	
	
}
