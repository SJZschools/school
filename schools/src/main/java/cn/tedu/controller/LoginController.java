package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.User;
import cn.tedu.service.LoginService;
import cn.tedu.tool.MD5HashPassword;
/**
 * 开始探索
 * */
@Controller
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	//跳转登陆界面
	@RequestMapping("login")
	public String toLoginJsp(){
		return "login";
	}
	//校验登陆
	@RequestMapping("/tologin")
	public String login(String username,String password,HttpSession session,Model model){
		if(username==null||"".equals(username)||password==null||"".equals(password)){
			String errorInfo = "用户名密码不能为空";
			model.addAttribute("errorInfo",errorInfo);
			return "login";
					
		}
		String md5Password = MD5HashPassword.getPassword(username, password);
		User user = null;
		if(( user = loginService.findUser(username,md5Password))!=null){
			session.setAttribute("userSession", user);
			return "index";
		}
		String errorInfo = "用户名或密码错误";
		model.addAttribute("username",username);
		model.addAttribute("password",password);
		model.addAttribute("errorInfo",errorInfo);
		return "login";
	}
}
