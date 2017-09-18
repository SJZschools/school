package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.User;

public interface UserService {

	public User findUserById(String userId);


	public List<String> findHabitIdList(String userId);


	public void updateUserNickname(User user);
	
}
