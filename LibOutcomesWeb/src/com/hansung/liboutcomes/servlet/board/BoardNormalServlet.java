package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.BoardNormalDAO;
import com.hansung.liboutcomes.vo.BoardNormalVO;

/*
 * 일반 게시판 글 목록 조회 서블릿
 */
@WebServlet("/BoardNormal")
public class BoardNormalServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		BoardNormalDAO boardNorDAO = new BoardNormalDAO();
		List<BoardNormalVO> boardList = boardNorDAO.getBoardList();
		
		req.setAttribute("boardList", boardList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/BoardNormal.jsp");
		dispatcher.forward(req, resp);
		
	}

}