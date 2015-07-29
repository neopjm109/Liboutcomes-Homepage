package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.Board;
import com.hansung.liboutcomes.model.BoardComment;
import com.hansung.liboutcomes.model.BoardCommentService;
import com.hansung.liboutcomes.model.BoardService;

@WebServlet("/BoardView")
public class BoardViewServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	private BoardService boardService;
	private BoardCommentService commentService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int num = Integer.parseInt(req.getParameter("num"));
		
		boardService = new BoardService();
		
		Board board = boardService.getOneBoard(num);
		
		commentService = new BoardCommentService();
		
		ArrayList<BoardComment> commentList = commentService.getCommentList(num);
		
		req.setAttribute("board", board);
		req.setAttribute("commentList", commentList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/boardView.jsp");
		dispatcher.forward(req, resp);
		
	}

}
