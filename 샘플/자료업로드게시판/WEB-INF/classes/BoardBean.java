package SoundBoard;

public class BoardBean {

	private int boardNum;
	private String name; ;
	private String subject;
	private String content;
	private String fileName;
	private String regdate;
	private int count;
	private String ip;
	private int myLike;

	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public void setMyLike(int myLike) {
		this.myLike = myLike;
	}

	public int getBoardNum() {
		return boardNum;
	}
	public String getName() {
		return name;
	}
	public String getSubject() {
		return subject;
	}
	public String getContent() {
		return content;
	}
	public String getFileName() {
		return fileName;
	}
	public String getRegdate() {
		return regdate;
	}
	public int getCount() {
		return count;
	}
	public String getIp() {
		return ip;
	}
	public int getMyLike() {
		return myLike;
	}
}