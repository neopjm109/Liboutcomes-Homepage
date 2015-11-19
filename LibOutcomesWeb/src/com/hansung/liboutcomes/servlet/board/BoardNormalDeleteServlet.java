package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.BoardNormalCommentDAO;
import com.hansung.liboutcomes.dao.BoardNormalDAO;

/*
 * 일반 게시판 글 삭제 서블릿
 */
@WebServlet("/BoardNormalDelete")
public class BoardNormalDeleteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		int num = Integer.parseInt(req.getParameter("num"));
		
		BoardNormalDAO boardNorDAO = new BoardNormalDAO();
		BoardNormalCommentDAO boardNorCommentDAO = new BoardNormalCommentDAO();
		
		if (boardNorDAO.deleteBoard(num)) {
			boardNorCommentDAO.deleteBoardComment(num);
		};

		resp.sendRedirect("BoardNormal");
		
	}

}
