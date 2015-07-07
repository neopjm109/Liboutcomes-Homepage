package com.hansung.liboutcomes.servlet.datascience;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.Manual;
import com.hansung.liboutcomes.model.ManualService;

@WebServlet("/DataScienceManual/View")
public class DataScienceManualViewServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private ManualService manualService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		manualService = new ManualService();
		
		Manual manual = manualService.getOneManual(Integer.parseInt(req.getParameter("id")));
		
		req.setAttribute("manual", manual);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/dataScienceManualView.jsp");
		dispatcher.forward(req, resp);
	}

}
