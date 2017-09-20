package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginOutController {
	//跳转登陆界面
	@RequestMapping("/loginout")
	public String toLoginOut(HttpSession userSession){
		userSession.removeAttribute("userSession");
		return "/login";
	}
}
