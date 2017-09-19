package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tedu.mapper.UserMapper;
import cn.tedu.pojo.Habit;
import cn.tedu.pojo.User;
@Service
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;

	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public User findUserById(String userId) {
		return userMapper.findUserById(userId);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void updateUserNickname(User user) {
		userMapper.updateUserNickname(user);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<String> findHabitIdList(String userId) {
		return userMapper.findHabitIdList(userId);
	}


//	@Override
//	public void addHU(String id, String s) {
//		userMapper.addHU(id,s);
//		
//	}

	@Override
	public void updateUserPassword(User user) {
		userMapper.updateUserPassword(user);
	}


}
