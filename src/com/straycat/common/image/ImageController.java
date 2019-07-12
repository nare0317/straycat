package com.straycat.common.image;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.straycat.service.ImageService;

public class ImageController
{
	@Autowired
	private ImageService service;
	
	@RequestMapping
	public String upload(
			@RequestParam("file") MultipartFile file
			, Model model)
	{
		String imageUrl = service.saveImage(file);
		model.addAttribute("imageUrl", imageUrl);
		return "Main";
	}
}
