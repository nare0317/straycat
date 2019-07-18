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
import org.springframework.mail.javamail.MimeMessagePreparator;
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
	public String mailSending(HttpServletRequest request, MultipartFile file, HttpSession session)
	{
		String sender = request.getParameter("mailId")+"@"+request.getParameter("mailHost");
		String receiver = "baer2000@naver.com";
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		try
		{
		//MimeMessage message = mailSender.createMimeMessage();
		MimeMessagePreparator preparator  = new MimeMessagePreparator()
		{
			
			@Override
			public void prepare(MimeMessage message) throws Exception
			{
				MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
				
				messageHelper.setFrom(sender);
				messageHelper.setTo(receiver);
				messageHelper.setSubject(title);
				messageHelper.setText(content);
			}
		};
		
		mailSender.send(preparator);
		
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		/*
		MimeBodyPart mbp = new MimeBodyPart();
		FileDataSource fds = new FileDataSource(imageUrl);
		mbp.setDataHandler(new DataHandler(fds));
		mbp.setFileName(fds.getName());
		
		Multipart mp = new MimeMultipart();
		mp.addBodyPart(mbp);
		
		message.setContent(mp);
		*/
		
		
		return "Main";
	}
	
}
