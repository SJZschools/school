package cn.tedu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tedu.mapper.UserInfoMapper;
import cn.tedu.pojo.UserInfo;
@Service
public class UserInfoServiceImpl implements UserInfoService {
	@Autowired
	private UserInfoMapper userInfoMapper;

	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public void updateself(UserInfo userInfo) {
		userInfoMapper.updateself(userInfo);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public UserInfo findUserInfoById(String userId) {
		return userInfoMapper.findUserInfoById(userId);
	}

}
