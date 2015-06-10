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
 * Servlet implementation class ModifyServlet
 */
@WebServlet("/Modify")
public class ModifyServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public ModifyServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		// 수정 할 게시글의 내용만 가져오기
		BoardService boardService = new BoardService();
		Board board = boardService.getBoard(id);
		
		request.setAttribute("board", board);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/page/Modify.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 값 넘겨 받기
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String writer = request.getParameter("writer");
		
		// 모델에 값 등록
		Board board = new Board();
		board.setId(id);
		board.setTitle(title);
		board.setContent(content);
		board.setWriter(writer);
		
		// 게시물 등록
		BoardService boardService = new BoardService();
		boardService.updateBoard(board);
		
		// 페이지 이동
		response.sendRedirect("Talk");
	}

}
