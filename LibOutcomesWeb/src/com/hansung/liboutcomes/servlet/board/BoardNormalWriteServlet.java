package com.hansung.liboutcomes.servlet.board;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.BoardNormalDAO;
import com.hansung.liboutcomes.mail.SMTPAuthenticatior;
import com.hansung.liboutcomes.mail.STMPInformation;
import com.hansung.liboutcomes.vo.BoardNormalVO;

/*
 * 일반 게시판 글 작성 서블릿
 */
@WebServlet("/BoardNormalWrite")
public class BoardNormalWriteServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/board/BoardNormalWrite.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		
		// 값 넘겨 받기
		String category = req.getParameter("category");
		String title = req.getParameter("title");
		String writerName = req.getParameter("writerName");
		String contents = req.getParameter("contents");
		
		// VO에 값 등록
		BoardNormalVO boardNorVO = new BoardNormalVO();
		boardNorVO.setCategory(category);
		boardNorVO.setTitle(title);
		boardNorVO.setWriterName(writerName);
		boardNorVO.setContents(contents);
		
		//현재 날짜, 시간 구하기
		Calendar calendar = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY/MM/dd HH:mm");

		BoardNormalDAO boardNorDAO = new BoardNormalDAO();
		
		// 글이 정상적으로 등록되면
		if( boardNorDAO.createBoard(boardNorVO) ) {
			STMPInformation si = new STMPInformation();
			
			try {
				Authenticator auth = new SMTPAuthenticatior();
			    Session ses = Session.getInstance(si.getP(), auth);
			     
			    ses.setDebug(true);
			     
			    MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
			    msg.setSubject("LibOutcomes: 새 글이 등록되었습니다."); // 제목
			     
			    Address fromAddr = new InternetAddress("liboutcomes@naver.com");
			    msg.setFrom(fromAddr); // 보내는 사람
			     
			    Address toAddr = new InternetAddress("ymj9312@hanmail.net");
			    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
			     
			    msg.setContent("지금 새 게시글이 등록되었습니다.		게시물 등록 시간 : " + dateFormat.format(calendar.getTime()), 
			    				"text/html;charset=UTF-8"); // 내용과 인코딩
			     
			    Transport.send(msg); // 전송
			} catch(Exception e){
			    e.printStackTrace();
			}
			
			resp.sendRedirect("BoardNormal");
		} // if end

	}

}
