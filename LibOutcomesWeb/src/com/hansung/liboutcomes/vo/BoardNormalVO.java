package com.hansung.liboutcomes.vo;

import java.util.Date;

/*
 * 일반 게시판 글 내용
 */
public class BoardNormalVO {
	
	private int num;
	private String category;
	private String title;
	private int writerId;
	private String writerName;
	private Date date;
	private String contents;
	
	public BoardNormalVO() {}
	
	public BoardNormalVO(int num, String category, String title, int writerId, 
			String writerName, Date date, String contents) {
		this.num = num;
		this.category = category;
		this.title = title;
		this.writerId = writerId;
		this.writerName = writerName;
		this.date = date;
		this.contents = contents;
	}

	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}

}
