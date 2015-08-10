package com.hansung.liboutcomes.servlet.reference;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @breif 논문·보고서 서블릿
 * @author YuJin
 *
 */
@WebServlet("/ReferenceReport")
public class ReferenceReportServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/referenceReport.jsp");
		dispatcher.forward(req, resp);
		
	}

}