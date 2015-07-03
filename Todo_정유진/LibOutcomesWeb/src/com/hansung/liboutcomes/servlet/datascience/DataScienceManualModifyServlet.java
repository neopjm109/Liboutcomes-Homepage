package com.hansung.liboutcomes.servlet.datascience;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.Manual;
import com.hansung.liboutcomes.model.ManualService;

@WebServlet("/DataScienceManualModify")
public class DataScienceManualModifyServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private ManualService manualService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		
		manualService = new ManualService();
		Manual manual = manualService.getOneManual(id);
		
		req.setAttribute("manual", manual);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/dataScienceManualModify.jsp");
		dispatcher.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		// 값 넘겨 받기
		int id = Integer.parseInt(req.getParameter("id"));
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		
		// 모델에 값 등록
		Manual manual = new Manual();
		manual.setId(id);
		manual.setTitle(title);
		manual.setContents(contents);
		
		// 게시물 수정
		manualService = new ManualService();
		manualService.updateManual(manual);
		
		resp.sendRedirect("DataScienceManual");

	}

}
