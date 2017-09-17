package cn.tedu.pojo;

import java.util.Date;

public class Advice {
	private User user;
	
	private String id;
	private String adviceTxt;
	private Date adviceTime;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAdviceTxt() {
		return adviceTxt;
	}
	public void setAdviceTxt(String adviceTxt) {
		this.adviceTxt = adviceTxt;
	}
	public Date getAdvcieTime() {
		return adviceTime;
	}
	public void setAdvcieTime(Date date) {
		this.adviceTime = date;
	}
	
}
