package member;

import java.text.SimpleDateFormat;

public class userInfo {
	
	private String id;
	private String pw;
	private String name;
	private String photo;
	private SimpleDateFormat regDate;


	public userInfo() {
		this.regDate = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
	}

	
	public userInfo(String id, String pw, String name, String photo) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.photo = photo;
		this.regDate = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}


	public SimpleDateFormat getRegDate() {
		return regDate;
	}


	public void setRegDate(SimpleDateFormat regDate) {
		this.regDate = regDate;
	}


	
}