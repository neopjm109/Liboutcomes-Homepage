package com.hansung.liboutcomes.servlet.async;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hansung.liboutcomes.model.MemberService;

@WebServlet("/LoginCheck")
public class LoginCheckServlet extends HttpServlet {

	/**
	 *	@param	memberService	: Member 테이블 접근하는 쿼리
	 */
	
	private static final long serialVersionUID = 1L;
	MemberService memberService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = (String) req.getParameter("login_email");
		String password = (String) req.getParameter("login_password");
		
		System.out.println(email + " " + password);
		
		memberService = new MemberService();
		
		int res = memberService.loginCheck(email, password);
		
		PrintWriter out = resp.getWriter();
		
		if (res >= 1) {
			out.println("TRUE");
			HttpSession session = req.getSession();
			session.setAttribute("liboutcomes_login", email);
		} else {
			out.println("FALSE");
		}
	}
}
