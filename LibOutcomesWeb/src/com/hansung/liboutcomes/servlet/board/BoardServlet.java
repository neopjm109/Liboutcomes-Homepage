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
import com.hansung.liboutcomes.model.BoardService;

@WebServlet("/Board")
public class BoardServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private BoardService manualService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		manualService = new BoardService();
		
		ArrayList<Board> list = manualService.getBoardList();
		
		req.setAttribute("list", list);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/page/board.jsp");
		dispatcher.forward(req, resp);
	}

}