package com.hansung.liboutcomes.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hansung.liboutcomes.dao.MemberDAO;
import com.hansung.liboutcomes.vo.MemberVO;

/*
 * 로그인 서블릿
 */
@WebServlet("/Login")
public class LoginServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/Login.jsp");
		dispatcher.forward(req, resp);
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String email = (String) req.getParameter("email");
		String password = (String) req.getParameter("password");
		
		MemberDAO memberDAO = new MemberDAO();
		MemberVO memberVO = memberDAO.loginCheck(email, password);
		
		// 서블릿에서 클라이언트로 보내는 데이터에 텍스트를 기록
		PrintWriter out = resp.getWriter();
		
		if (memberVO != null) {
			
			System.out.println("==========[ Login Success ]==========");
			out.println("TRUE");
			
			HttpSession session = req.getSession();
			session.setAttribute("userEmail", memberVO.getEmail());
			session.setAttribute("userName", memberVO.getName());
			
		} else {
			System.out.println("==========[ Login Fail ]==========");
			out.println("FALSE");
		}
		
	}

}