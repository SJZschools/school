package cn.tedu.mapper;

import java.util.List;

import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;

public interface BackStudentMapper {

	public List<User> findAllStudent();

	public void addBackStudent(User user);

	public void addBackStudentInfo(UserInfo userInfo);

	public User updateUser(String id);

	public UserInfo updateUserInfo(String id);

	public void deleteOneUser(String id);

	public void deleteOneUserInfo(String id);

	public int findCount();

}
