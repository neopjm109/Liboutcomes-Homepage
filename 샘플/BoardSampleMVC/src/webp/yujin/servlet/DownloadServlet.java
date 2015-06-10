package webp.yujin.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webp.yujin.model.Board;
import webp.yujin.model.BoardService;

/**
 * Servlet implementation class DownloadServlet
 */
@WebServlet("/Download")
public class DownloadServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public DownloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("euc-kr");
		
		int id = Integer.parseInt(request.getParameter("id"));
		BoardService boardService = new BoardService();
		Board board = boardService.getBoard(id);
		String filename = board.getFilename();
		
		// 실제 파일의 업로드 된 주소 가져오기
		String uploadFilename = request.getSession().getServletContext().getRealPath("/upload") + "/" + filename;
		File downFile = new File(uploadFilename);
		
		if (downFile.exists() && downFile.isFile()) {
			
			try {
				
				long filesize = downFile.length();
				response.setContentType("application/x-msdownload");
				response.setContentLength((int)filesize);
				
				String strClient = request.getHeader("user-agent");
				
				if (strClient.indexOf("MSIE 5.5") != -1) {
					response.setHeader("Content-Disposition", "filename=" + filename + ";" );
				} else {
					// 인코딩 변경과 '+'문자 깨짐 방지
					filename = URLEncoder.encode(filename, "UTF-8").replaceAll("\\+","%20");
					response.setHeader("Content-Disposition", "attachment; filename=" + filename + ";" );
				}
				
				response.setHeader("Content-Length", String.valueOf(filesize));
				response.setHeader("Content-Transfer-Encoding", "binary;");
				response.setHeader("Pragma", "no-cache");
				response.setHeader("Cache-Control", "private");
		
				byte b[] = new byte[1024];

				BufferedInputStream fin = new BufferedInputStream(new FileInputStream(downFile));
				BufferedOutputStream outs = new BufferedOutputStream(response.getOutputStream());

				int read = 0;

				while((read=fin.read(b)) != -1) {
					outs.write(b, 0, read);
				}

				outs.flush();
				outs.close();
				fin.close();
				
			} catch (Exception e) {
				System.out.println("Download Exception : " + e.getMessage());
			}
			
		} else {
			System.out.println("Download Error : downFile Error [" + downFile + "]");
		}

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
