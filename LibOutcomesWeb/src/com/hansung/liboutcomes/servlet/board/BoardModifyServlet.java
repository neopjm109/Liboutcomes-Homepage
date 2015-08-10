package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.Board;
import com.hansung.liboutcomes.model.BoardService;

/**
 * @breif 일반 게시판 글 수정 서블릿
 * @author YuJin
 *
 */
@WebServlet("/BoardModify")
public class BoardModifyServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private BoardService boardService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		int num = Integer.parseInt(req.getParameter("num"));
		
		boardService = new BoardService();
		Board board = boardService.getOneBoard(num);
		
		req.setAttribute("board", board);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/boardModify.jsp");
		dispatcher.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		// 값 넘겨 받기
		int num = Integer.parseInt(req.getParameter("num"));
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		
		// 모델에 값 등록
		Board board = new Board();
		board.setNum(num);
		board.setTitle(title);
		board.setContents(contents);
		
		// 게시물 수정
		boardService = new BoardService();
		boardService.updateBoard(board);
		
		resp.sendRedirect("Board");

	}

}
