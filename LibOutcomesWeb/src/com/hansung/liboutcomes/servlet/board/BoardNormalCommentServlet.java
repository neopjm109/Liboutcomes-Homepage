package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.BoardNormalCommentDAO;
import com.hansung.liboutcomes.vo.BoardNormalCommentVO;

/*
 * 일반 게시판 댓글 작성 서블릿
 */
@WebServlet("/BoardNormalComment")
public class BoardNormalCommentServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(req.getParameter("num"));
		String comment = req.getParameter("comment");
		
		BoardNormalCommentVO boardNorCommentVO = new BoardNormalCommentVO();
		boardNorCommentVO.setBoardNum(num);
		boardNorCommentVO.setWriterName("test");
		boardNorCommentVO.setComment(comment);

		BoardNormalCommentDAO boardNorCommentDAO = new BoardNormalCommentDAO();
		boardNorCommentDAO.createBoardComment(boardNorCommentVO);

		resp.sendRedirect("BoardNormalView?num="+num);
	}

}
