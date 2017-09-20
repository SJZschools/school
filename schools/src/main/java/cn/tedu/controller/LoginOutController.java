package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;

public class LoginOutController {
	//跳转登陆界面
	@RequestMapping("loginout.html")
	public String toLoginOut(HttpSession userSession){
		userSession.removeAttribute("userSession");
		return "login";
	}
}
