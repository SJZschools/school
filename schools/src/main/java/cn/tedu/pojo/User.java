package cn.tedu.pojo;

import java.util.List;

public class User {
	private String id;
	private String username;
	private String password;
	private String nickname;
	private List<Habit> habitList;
	private UserInfo userInfo;//用户详情对象，注意mapper时的嵌套
	
	public List<Habit> getHabitList() {
		return habitList;
	}
	public void setHabitList(List<Habit> habitList) {
		this.habitList = habitList;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}
