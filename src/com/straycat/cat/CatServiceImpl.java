package com.straycat.cat;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.straycat.common.dao.CatDAO;
import com.straycat.service.CatService;


@Service("catDetail")
public class CatServiceImpl implements CatService
{
	@Resource(name="CatDAO")
	private CatDAO dao;

	@Override
	public List<Map<String, Object>> listCat(Map<String, Object> map)
	{
		List<Map<String,Object>> list = null;
		List<Map<String,Object>> gu = null;
		
		try
		{
			list = dao.listCat(map);

		} catch (Exception e)
		{
			e.printStackTrace();
		}

		return list;
	}
	
	// 구 셀렉트박스 리스트 조회 
	@Override
	public List<Map<String, Object>> listGu() 
	{
		List<Map<String, Object>> list = null;

		try 
		{
			list = dao.listGu();

		} catch (Exception e) 
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public int addCat(Map<String, Object> param)
	{
		int result = 0;

		try
		{
			String address = dao.searchAddress((String)param.get("gu"), (String)param.get("dong"));
			param.put("CAT_NAME", (String) param.get("cat_name"));
			param.put("CAT_ADDRESS", address);
			param.put("CAT_SPECIES", (String) param.get("cat_species"));
			param.put("CAT_ETC1", (String) param.get("cat_etc1"));
			param.put("CAT_ETC2", (String) param.get("cat_etc2"));
			Date date = Date.valueOf((String) param.get("cat_date"));
			param.put("CAT_DATE", date);
			param.put("USER_CODE", (String) param.get("user_code"));

			result = dao.addCat(param);

		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Map<String, Object> catInfo(String id)
	{
		Map<String, Object> catInfo = new HashMap<String, Object>();
		
		try
		{
			catInfo = dao.selectOne(id);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return catInfo;
	}
	
	@Override
	public List<Map<String, Object>> representationCat(String id)
	{
		List<Map<String, Object>> representationCat = null;
		
		try
		{
			representationCat = dao.selectListListList(id);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return representationCat;
	}

	@Override
	public List<Map<String, Object>> catLocation(String id)
	{		
		return dao.selectList(id);
	}

	@Override
	public List<Map<String, Object>> catActReg(String id)
	{
		return dao.selectActStartList(id);
	}	
	
	// 지역 검색 후 조회된 데이터 갯수 조회
	@Override
	public int dataCount(String searchGu, String searchDong)
	{
		int dataCount = 0;
		try
		{
			dataCount = dao.dataCount(searchGu, searchDong);
			
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		return dataCount;
	}


	@Override
	public List<Map<String, Object>> listDong(String selectedGu)
	{
		List<Map<String, Object>> list = null;
		
		try
		{
			list = dao.listDong(selectedGu);
		} catch (Exception e)
		{
			e.printStackTrace();
		}
		
		return list;
	}

	@Override
	public List<Map<String, String>> actDate(Map<String, String> map)
	{ 
		List<Map<String, String>> result = new ArrayList<Map<String,String>>(); 
		
		result = dao.actDate(map);
		
		return result;
	}

	// 길냥이 등록 페이지에서 동 리스트를 반환하는 메소드
	@Override
	public List<Map<String, String>> getCatDong(Map<String, String> map)
	{
		List<Map<String, String>> result = new ArrayList<>();
		
		try
		{
			result = dao.selectList(map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return result;
	}
	
	
	@Override
	public void addAct(Map<String, Object> param)
	{
		try
		{
			dao.insert("catDetail.addAct", param);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	
	@Override
	public Map<String, Object> avgLoc(Map<String, String> map)
	{
		Map<String, Object> avgLoc = new HashMap<String, Object>();
		
		try
		{
			avgLoc = dao.selectOneOne("catDetail.avgLoc",map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return avgLoc;
	}
	
	@Override
	public int followCheck(Map<String, Object> map)
	{
		int result = 0;
		
		try
		{
			result = dao.selectOne("catDetail.followCheck",map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		return result;
	}
	
	
	@Override
	public void follow(Map<String, Object> map)
	{
		
		try
		{
			dao.insert("catDetail.follow",map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	@Override
	public void unfollow(Map<String, Object> map)
	{
		
		try
		{
			dao.delete("catDetail.unfollow",map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
	// 활동 갤러리 리스트 뿌려주는 메소드
	@Override
	public List<Map<String, Object>> actGalList(String id)
	{
		List<Map<String, Object>> result = null;
		
		try
		{
			result = dao.selectListList(id);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	
	@Override
	public void declarationInsert(Map<String, Object> map)
	{
	
		try
		{
			dao.insert("catDetail.declarationInsert",map);
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
	}
	
}
