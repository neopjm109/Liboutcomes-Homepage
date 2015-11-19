package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.BoardNormalCommentDAO;
import com.hansung.liboutcomes.dao.BoardNormalDAO;
import com.hansung.liboutcomes.vo.BoardNormalVO;
import com.hansung.liboutcomes.vo.BoardNormalCommentVO;

/*
 * 일반 게시판 글 내용 & 댓글 조회 서블릿
 */
@WebServlet("/BoardNormalView")
public class BoardNormalViewServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		// 글 내용
		BoardNormalDAO boardNorDAO = new BoardNormalDAO();
		BoardNormalVO boardNorVO = boardNorDAO.getOneBoard(num);
		
		// 댓글
		BoardNormalCommentDAO boardNorCommentDAO = new BoardNormalCommentDAO();		
		List<BoardNormalCommentVO> commentList = boardNorCommentDAO.getCommentList(num);

		req.setAttribute("board", boardNorVO);
		req.setAttribute("commentList", commentList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/BoardNormalView.jsp");
		dispatcher.forward(req, resp);
		
	}

}
