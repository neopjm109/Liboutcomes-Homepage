package sample.board.model;

public class Comment {
	private int id;
	private int board_id;
	private String name;
	private String content;
	private String date;

    public void setId(int id) {
		this.id = id;
	}
	public void setBoardId(int board_id) {
		this.board_id = board_id;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setDate(String date) {
		this.date = date;
	}
    
    public int getId() {
		return id;
	}
	public int getBoardId() {
		return board_id;
	}
	public String getName() {
		return name;
	}
	public String getContent() {
		return content;
	}
	public String getDate() {
		return date;
	}
}
