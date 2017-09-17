package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tedu.mapper.BackStudentMapper;
import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;

@Service
public class BackStudentServiceImpl implements BackStudentService {
	@Autowired
	private BackStudentMapper backStudentMapper;
	@Override
	public List<User> findAllStudent() {
		
		return backStudentMapper.findAllStudent();
	}
	//后台界面的学生管理
	//增加学生
	@Override
	public void addBackStudent(User user) {
		backStudentMapper.addBackStudent(user);
		
	}
	@Override
	public void addBackStudentInfo(UserInfo userInfo) {
		backStudentMapper.addBackStudentInfo(userInfo);
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public User updateBackStudent(String id) {
		User user = backStudentMapper.updateUser(id);
		UserInfo userInfo = backStudentMapper.updateUserInfo(id);
		user.setUserInfo(userInfo);
		return user;
	}
	@Override
	public void deleteOneBackStudent(String id) {
		backStudentMapper.deleteOneUser(id);
		backStudentMapper.deleteOneUserInfo(id);
		
	}
	
}
