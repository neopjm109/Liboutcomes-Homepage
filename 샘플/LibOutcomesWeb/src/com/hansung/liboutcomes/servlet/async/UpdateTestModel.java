package com.hansung.liboutcomes.servlet.async;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.TestModelService;

@WebServlet("/updateTestModel")
public class UpdateTestModel extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	TestModelService service;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		String html = (String) req.getParameter("html");
		
		System.out.println(html);
		
		service = new TestModelService();
		
		int res = service.updateTestModel(id, html);
		
		PrintWriter out = resp.getWriter();
		
		if (res >= 1) {
			out.println("TRUE");
		} else {
			out.println("FALSE");
		}
	}

}
