package com.config;

import java.util.Properties;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;

@Configuration
public class MailConfig {

	@Bean
	public JavaMailSender javaMailSender() {
		JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
		mailSender.setHost("smtp.gmail.com");
		mailSender.setPort(587);
		mailSender.setUsername("kamunikarthikkumar@gmail.com");
		mailSender.setPassword("djsv wpyr ybyo lqxq");
		
		Properties javaMailProperties = mailSender.getJavaMailProperties();
		javaMailProperties.put("mail.transport.protocol","smtp");
		javaMailProperties.put("mail.smtp.auth","true");
		javaMailProperties.put("mail.smtp.starttls.enable","true");
		
		return mailSender;
	}
}
