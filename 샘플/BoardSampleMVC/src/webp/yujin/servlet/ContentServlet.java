package webp.yujin.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webp.yujin.model.Board;
import webp.yujin.model.BoardService;

/**
 * Servlet implementation class ContentServlet
 */
@WebServlet("/Content")
public class ContentServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public ContentServlet() {
        super();
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		// 해당 게시글 내용만 불러오기
		BoardService boardService = new BoardService();
		Board board = boardService.getBoard(id);
		
		request.setAttribute("board", board);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/page/Content.jsp");
		dispatcher.forward(request, response);
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
