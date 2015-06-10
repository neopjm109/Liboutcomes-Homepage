package webp.yujin.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webp.yujin.model.Board;
import webp.yujin.model.BoardService;

/**
 * @author YuJin
 * WebServlet: 해당 URL로 들어오는 경우 TalkServlet이 처리하도록 설정
 */
@WebServlet("/Talk")
public class TalkServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	public TalkServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 게시판 목록을 DB에서 불러오기
		BoardService boardService = new BoardService();
		ArrayList<Board> boardList = boardService.getBoardList();
				
		// 셋팅 된 리스트를 View에 포워드
		request.setAttribute("boardList", boardList);
				
		// View 보내기
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/page/Talk.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
