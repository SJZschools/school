package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 开始探索
 * */
@Controller
public class LoginController {
	
	//跳转登陆界面
	@RequestMapping("login")
	public String toLoginJsp(){
		return "login";
	}
}
