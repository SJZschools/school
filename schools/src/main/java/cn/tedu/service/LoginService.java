package cn.tedu.service;

import cn.tedu.pojo.User;

public interface LoginService {

	User findUser(String username, String md5Password);

}
