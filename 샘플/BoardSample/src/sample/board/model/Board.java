package sample.board.model;

public class Board {
	private int id;
	private String title;
	private String content;
	private String fileName;
	private String name;
	private String date;

	public void setId(int id) {
		this.id = id;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setDate(String date) {
		this.date = date;
	}

	public int getId() {
		return id;
	}
	public String getTitle() {
		return title;
	}
	public String getContent() {
		return content;
	}
	public String getFileName() {
		return fileName;
	}
	public String getName() {
		return name;
	}
	public String getDate() {
		return date;
	}
}