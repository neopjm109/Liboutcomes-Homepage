package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.BoardCommentService;
import com.hansung.liboutcomes.model.BoardService;

/**
 * @breif 일반 게시판 글 삭제 서블릿
 * @author YuJin
 *
 */
@WebServlet("/BoardDelete")
public class BoardDeleteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private BoardService boardService;
	private BoardCommentService commentService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int id = Integer.parseInt(req.getParameter("num"));
		
		boardService = new BoardService();
		
		boardService.deleteBoard(id);
		
		commentService = new BoardCommentService();
		
		commentService.deleteBoardComment(id);
		
		resp.sendRedirect("Board");
		
	}

}
