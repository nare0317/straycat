package com.straycat.service;

import org.springframework.web.multipart.MultipartFile;

public interface ImageService
{
	public String saveImage(MultipartFile file, String url);
	public String genFileName(String extName);
}
