package webp.yujin.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webp.yujin.model.BoardService;

/**
 * Servlet implementation class DeleteServlet
 */
@WebServlet("/Delete")
public class DeleteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
       
    public DeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		BoardService boardService = new BoardService();
		
		String filename = boardService.getBoard(id).getFilename();
		String uploadFilename = request.getSession().getServletContext().getRealPath("/upload") + "/" + filename;
		File uploadFile = new File(uploadFilename);
		
		// 업로드된 파일이 존재할 경우 삭제
		if (uploadFile.exists() && uploadFile.isFile()) {
			uploadFile.delete();
		}
		
		boardService.deleteBoard(id);
		
		response.sendRedirect("Talk");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
