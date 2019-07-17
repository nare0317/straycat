package com.straycat.common.image;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.straycat.service.ImageService;

@Controller
public class ImageController
{
	@Autowired
	private ImageService service;
	
	@RequestMapping("/upload")
	public void upload(
			@RequestParam("file") MultipartFile file
			, HttpServletRequest request
			, HttpSession session
			, Model model)
	{
		String path = session.getServletContext().getRealPath("/");
		
		String imageUrl = service.saveImage(file, path);
		model.addAttribute("imageUrl", imageUrl);
	}
}
