package cn.tedu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.LoginMapper;
import cn.tedu.pojo.User;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	private LoginMapper loginMapper;

	@Override
	public User findUser(String username) {
		
		return loginMapper.findUser(username);
	}
	
}
