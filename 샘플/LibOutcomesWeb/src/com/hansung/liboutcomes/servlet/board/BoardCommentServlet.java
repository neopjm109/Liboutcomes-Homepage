package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.ManualComment;
import com.hansung.liboutcomes.model.ManualCommentService;

@WebServlet("/BoardComment")
public class BoardCommentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private ManualCommentService commentService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		int boardId = Integer.parseInt(req.getParameter("id"));
		String comment = req.getParameter("comment");
		
		ManualComment manualComment = new ManualComment();
		manualComment.setBoardId(boardId);
		manualComment.setWriterName("아무나아무아무");
		manualComment.setComment(comment);

		commentService = new ManualCommentService();
		commentService.createManualComment(manualComment);
		
		resp.sendRedirect("DataScienceManualView?id="+boardId);
	}

}
