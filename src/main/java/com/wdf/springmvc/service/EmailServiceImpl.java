package com.wdf.springmvc.service;

import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements EmailService {
	
    @Autowired
    private JavaMailSender mailSender;

    
	/*
	 * Service for sending the email using MimeMessage from Java Mail
	 * and MimeMessageHelper from Spring Mail
	 * */
	@Override
	public void sendEmailLinkResetPassword(String recipientEmail, String link)
			throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = mailSender.createMimeMessage();              
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	    
	    helper.setTo(recipientEmail);
	     
	    String subject = "Here's the link to reset your password";
	     
	    String content = "<p>Hello,</p>"
	            + "<p>You have requested to reset your password.</p>"
	            + "<p>Click the link below to reset your password:</p>"
	            + "<p><a href=\"" + link + "\">Change my password</a></p>";
	           
	    helper.setSubject(subject);
	     
	    helper.setText(content, true);
	     
	    mailSender.send(message);

	}
	
	
	/*
	 * Bulk Email
	
	 * */
	@Override
	public void sendBulkEmail(String recipientEmail)
			throws MessagingException, UnsupportedEncodingException {
		MimeMessage pesan = mailSender.createMimeMessage();              
	    MimeMessageHelper helper = new MimeMessageHelper(pesan);
	    
	    helper.setTo(recipientEmail);
	     
	    String subject = "ABC Portal Community";
	     
	    String content = "<p>Hello,</p>"
	            + "<p>This email from Abc Community Portal Administrator.</p>"
	            + "<p>Thank you for apply jobs in Abc Community Portal</p>"
	            + "<p>-------------------------------------------</p>"

	            + "<h3>Best Regards</h3>"
	            + "<h3>Abc Community Portal</h3>"
	           ;
	           
	    helper.setSubject(subject);
	     
	    helper.setText(content, true);
	     
	    mailSender.send(pesan);

	}
	
	
	
	
	
	

	/*
	 * SENDING MESSAGE TO EMAIL USER AFTER FINISH REGISTRATION
	 * */

	@Override
	public void sendEmailRegisterSuccess(String recipientEmail, String firstName)
			throws MessagingException, UnsupportedEncodingException {
		MimeMessage message = mailSender.createMimeMessage();              
	    MimeMessageHelper helper = new MimeMessageHelper(message);
	    
	    helper.setTo(recipientEmail);
	     
	    String subject = "Thankyou" + firstName + "!";
	    
	    String content = "<h1>Welcome to ABCJobs Portal Community<h1>"
	    		+ "<br>"
	    		+ "<p>Congrats you now a part of ABCjobs Community portal.<p>"
	    		+ "<br>"
	    		+ "<p>regards<p>";
	    		
	    
	    helper.setSubject(subject);
	    helper.setText(content, true);
	    
	    mailSender.send(message);
		
	}

}
