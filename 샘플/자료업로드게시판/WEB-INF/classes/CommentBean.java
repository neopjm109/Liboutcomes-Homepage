package SoundComment;

public class CommentBean {
    
	private int commentNum;
	private int boardNum;
	private String name;
	private String content;
	private String regdate;

    public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}


    
    public int getCommentNum() {
		return commentNum;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public String getName() {
		return name;
	}
	public String getContent() {
		return content;
	}
	public String getRegdate() {
		return regdate;
	}

}