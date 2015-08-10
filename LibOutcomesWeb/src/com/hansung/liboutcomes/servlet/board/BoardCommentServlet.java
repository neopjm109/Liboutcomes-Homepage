package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.model.BoardComment;
import com.hansung.liboutcomes.model.BoardCommentService;

/**
 * @breif 일반 게시판 댓글 작성 서블릿
 * @author YuJin
 *
 */
@WebServlet("/BoardComment")
public class BoardCommentServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private BoardCommentService commentService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		req.setCharacterEncoding("UTF-8");
		
		int boardNum = Integer.parseInt(req.getParameter("num"));
		String comment = req.getParameter("comment");
		
		BoardComment boardComment = new BoardComment();
		boardComment.setBoardNum(boardNum);
		boardComment.setWriterName("유저1");
		boardComment.setComment(comment);

		commentService = new BoardCommentService();
		commentService.createBoardComment(boardComment);
		
		resp.sendRedirect("BoardView?num="+boardNum);
	}

}
