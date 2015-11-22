package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.BoardNormalDAO;
import com.hansung.liboutcomes.vo.BoardNormalVO;

/*
 * 일반 게시판 글 수정 서블릿
 */
@WebServlet("/BoardNormalModify")
public class BoardNormalModifyServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		BoardNormalDAO boardNorDAO = new BoardNormalDAO();
		BoardNormalVO boardNorVO = boardNorDAO.getOneBoard(num);

		req.setAttribute("board", boardNorVO);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/BoardNormalModify.jsp");
		dispatcher.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(req.getParameter("num"));
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		
		BoardNormalVO boardNorVO = new BoardNormalVO();
		boardNorVO.setNum(num);
		boardNorVO.setTitle(title);
		boardNorVO.setContents(contents);
		
		BoardNormalDAO boardNorDAO = new BoardNormalDAO();
		if (boardNorDAO.updateBoard(boardNorVO)) {
			resp.sendRedirect("BoardNormal");
		}

	}

}
