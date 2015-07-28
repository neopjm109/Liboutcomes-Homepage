package com.hansung.liboutcomes.model;

public class TestModel {

	private int id;
	private String html;
		
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getHtml() {
		return html;
	}
	public void setHtml(String html) {
		this.html = html;
	}
	
	@Override
	public String toString() {
		return "TestModel [id=" + id + ", html=" + html + "]";
	}
	
}
