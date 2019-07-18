package com.straycat.common;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.straycat.service.ImageService;

@Controller
public class MailController 
{
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private ImageService imageService;

	@RequestMapping(value="/mailsending", method=RequestMethod.POST)
	public void mailSending(HttpServletRequest request, MultipartFile file, HttpSession session)
	{
		String sender = request.getParameter("mailId")+"@"+request.getParameter("mailHost");
		String receiver = "baer2000@naver.com";
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		// 이미지를 저장하고 저장된 이미지 경로를 반환함
		// 이미지 경로를 자료구조(고양이 등록정보)에 넣음
		String path = session.getServletContext().getRealPath("/");
		String imageUrl = imageService.saveImage(file, path);
		
		try 
		{
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			
			messageHelper.setFrom(sender);
			messageHelper.setTo(receiver);
			messageHelper.setSubject(title);
			messageHelper.setText(content);
			
			MimeBodyPart mbp = new MimeBodyPart();
		    FileDataSource fds = new FileDataSource(imageUrl);
		    mbp.setDataHandler(new DataHandler(fds));
		    mbp.setFileName(fds.getName());
			
			Multipart mp = new MimeMultipart();
			mp.addBodyPart(mbp);
			
			message.setContent(mp);
			
			mailSender.send(message);
		} 
		catch (MessagingException e) 
		{
			System.out.println(e.toString());
		}
	}
	
}
