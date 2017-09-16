package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;

public interface BackStudentService {
	public List<User> findAllStudent();

	public void addBackStudent(User user);

	public void addBackStudentInfo(UserInfo userInfo);
}
