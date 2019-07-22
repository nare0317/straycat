package com.straycat.common.image;

import java.io.File;
import java.io.FileOutputStream;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.straycat.service.ImageService;

@Service
public class ImageServiceImpl implements ImageService
{
	@Override
	public String saveImage(MultipartFile file, String path)
	{	
		// 파일 정보(파일 이름을 불러와서 파일의 확장자를 얻어냄)
		String originFilename = file.getOriginalFilename();
		String extName = originFilename.substring(originFilename.lastIndexOf("."), originFilename.length());
		
		// 서버에서 저장 할 파일 이름
		String saveFileName = genFileName(extName);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("saveFileName", saveFileName);
		
		try
		{
			byte[] data = file.getBytes();
			path = path + "resource\\";		//-- resource\ 
			
			// 경로가 없다면 경로 생성
			File dir = new File(path); 
            if (!dir.isDirectory()) { 
                dir.mkdirs();
            }
            
			FileOutputStream fos = new FileOutputStream(path+"\\"+saveFileName);
			fos.write(data);		//-- byte배열로 실제 이미지 파일을 작성하겠다. 
			fos.close();
		} catch (Exception e)
		{
			System.out.println(e.toString());
		}
		
		// 이미지 파일 DB에 저장한 경로를 insert
		//dao.insert(map);
		
		String imagePath = "/resource/" + saveFileName;

		return imagePath;
	}
	
	// saveImage() 에서 사용할 메소드
	// 파일의 확장자를 받아서 새로운 파일명으로 변경함
	@Override
	public String genFileName(String extName)
	{
		String fileName = "";
		
		Calendar calendar = Calendar.getInstance();
		fileName += calendar.get(Calendar.YEAR);
		fileName += calendar.get(Calendar.MONTH);
		fileName += calendar.get(Calendar.DATE);
		fileName += calendar.get(Calendar.HOUR);
		fileName += calendar.get(Calendar.MINUTE);
		fileName += calendar.get(Calendar.SECOND);
		fileName += calendar.get(Calendar.MILLISECOND);
		fileName += extName;
		
		return fileName;
	}
	
}
