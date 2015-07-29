package com.hansung.liboutcomes.model;

import java.util.Date;

public class Manual {
	
	private int id;
	private String title;
	private int writerId;
	private String writerName;
	private Date date;
	private String contents;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	
	@Override
	public String toString() {
		return "Manual [id=" + id + ", title=" + title + ", writerId="
				+ writerId + ", date=" + date + ", contents=" + contents + "]";
	}
	
}
