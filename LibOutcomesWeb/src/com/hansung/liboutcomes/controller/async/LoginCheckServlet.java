package com.hansung.liboutcomes.controller.async;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.MemberService;

public class LoginCheckServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	MemberService memberService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = (String) req.getAttribute("login_email");
		String password = (String) req.getAttribute("login_password");
		
		memberService = new MemberService();
		
		
	}

	
}
