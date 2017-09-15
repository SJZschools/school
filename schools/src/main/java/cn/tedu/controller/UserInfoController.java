package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;
import cn.tedu.service.UserInfoService;

@Controller
public class UserInfoController {
	@Autowired
	private UserInfoService userInfoService;
	@RequestMapping("/updateself")
	public String updateself(UserInfo userInfo,HttpSession session){
		//从session域中获取用户Id
		User user=new User();
		user.setId("123");
		session.setAttribute("userSession", user);
		User uu=(User) session.getAttribute("userSession");
		userInfo.setId(uu.getId());
		
		userInfoService.updateself(userInfo);
		return "/index";
	}
}
