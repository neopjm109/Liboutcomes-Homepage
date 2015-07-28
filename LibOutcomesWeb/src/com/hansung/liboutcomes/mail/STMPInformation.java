package com.hansung.liboutcomes.mail;

import java.util.Properties;

public class STMPInformation {
	
	private Properties p = new Properties(); // 정보를 담을 객체
	
	public STMPInformation() {
		p.put("mail.smtp.host","smtp.naver.com"); // 네이버 SMTP
		 
		p.put("mail.smtp.port", "465");
		p.put("mail.smtp.starttls.enable", "true");
		p.put("mail.smtp.auth", "true");
		p.put("mail.smtp.debug", "true");
		p.put("mail.smtp.socketFactory.port", "465");
		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		p.put("mail.smtp.socketFactory.fallback", "false");
		// SMTP 서버에 접속하기 위한 정보들
	}

	public Properties getP() {
		return p;
	}
	
}
