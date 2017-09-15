package cn.tedu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.UserInfoMapper;
import cn.tedu.pojo.UserInfo;
@Service
public class UserInfoServiceImpl implements UserInfoService {
	@Autowired
	private UserInfoMapper userInfoMapper;

	@Override
	public void updateself(UserInfo userInfo) {
		userInfoMapper.updateself(userInfo);
	}

}
