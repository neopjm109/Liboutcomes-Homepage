package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.ManualCommentService;
import com.hansung.liboutcomes.model.ManualService;

@WebServlet("/BoardDelete")
public class BoardDeleteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private ManualService manualService;
	private ManualCommentService commentService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		
		manualService = new ManualService();
		
		manualService.deleteManual(id);
		
		commentService = new ManualCommentService();
		
		commentService.deleteManualComment(id);
		
		resp.sendRedirect("DataScienceManual");
		
	}

}
