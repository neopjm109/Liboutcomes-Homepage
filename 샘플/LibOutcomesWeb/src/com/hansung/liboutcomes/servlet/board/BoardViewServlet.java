package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.Manual;
import com.hansung.liboutcomes.model.ManualComment;
import com.hansung.liboutcomes.model.ManualCommentService;
import com.hansung.liboutcomes.model.ManualService;

@WebServlet("/BoardView")
public class BoardViewServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private ManualService manualService;
	private ManualCommentService commentService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("id"));
		
		manualService = new ManualService();
		
		Manual manual = manualService.getOneManual(id);
		
		commentService = new ManualCommentService();
		
		ArrayList<ManualComment> commentList = commentService.getCommentList(id);
		
		req.setAttribute("manual", manual);
		req.setAttribute("commentList", commentList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/dataScienceManualView.jsp");
		dispatcher.forward(req, resp);
		
	}

}
