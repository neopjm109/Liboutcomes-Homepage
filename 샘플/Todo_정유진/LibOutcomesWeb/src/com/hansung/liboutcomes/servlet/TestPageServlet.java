package com.hansung.liboutcomes.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.TestModel;
import com.hansung.liboutcomes.model.TestModelService;

@WebServlet("/TestPage")
public class TestPageServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		
		TestModelService service = new TestModelService();
		
		TestModel model = service.getTestModel();
		
		req.setAttribute("model", model);

		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/test.jsp");
		dispatcher.forward(req, resp);
		
	}
}
