package com.hansung.liboutcomes.vo;

import java.util.Date;

/*
 * 일반 게시판 댓글
 */
public class BoardNormalCommentVO {
	
	private int num;
	private int boardNum;
	private int writerId;
	private String writerName;
	private Date date;
	private String comment;
	
	public BoardNormalCommentVO() {}
	
	public BoardNormalCommentVO(int num, int boardNum, int writerId, String writerName, Date date, String comment) {
		this.num = num;
		this.boardNum = boardNum;
		this.writerId = writerId;
		this.writerName = writerName;
		this.date = date;
		this.comment = comment;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public int getWriterId() {
		return writerId;
	}
	public void setWriterId(int writerId) {
		this.writerId = writerId;
	}
	public String getWriterName() {
		return writerName;
	}
	public void setWriterName(String writerName) {
		this.writerName = writerName;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
