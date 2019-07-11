package com.straycat.cat;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.straycat.service.CatService;

@Controller
public class CatController
{

	@Autowired
	private CatService service;

	@RequestMapping("/catdetail")
	public String selectList(Model model, @RequestParam(name="user_code", defaultValue="") String user_code)
	{
		Map<String, Object> catInfo = service.catInfo();
		List<Map<String, Object>> catLocation = service.catLocation();
		List<Map<String, Object>> catActReg = service.catActReg();

		model.addAttribute("catInfo", catInfo);
		model.addAttribute("catActReg", catActReg);
		model.addAttribute("catLocation", catLocation);

		return "Cat_Detail";
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	@RequestMapping(value = "/catLocation_ajax")
	@ResponseBody
	public ResponseEntity catLocation(@RequestParam(name = "cat_id") String cat_id)
	{
		HttpHeaders headers = new HttpHeaders();
		ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

		List<Map<String, Object>> commList = service.catLocation();

		if (commList.size() > 0)
		{
			for (int i = 0; i < commList.size(); i++)
			{
				HashMap hm = new HashMap();

				hm.put("LATITUDE", commList.get(i).get("LATITUDE"));
				hm.put("LONGITUDE", commList.get(i).get("LONGITUDE"));
				

				hmlist.add(hm);
			}
		}

		JSONArray json = new JSONArray(hmlist);

		return new ResponseEntity(json.toString(), headers, HttpStatus.CREATED);
	}

}
