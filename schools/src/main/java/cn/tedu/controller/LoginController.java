package cn.tedu.controller;


import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
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
		 Subject subject = SecurityUtils.getSubject();
		 String md5Password = MD5HashPassword.getPassword(username, password);
	       UsernamePasswordToken token = new UsernamePasswordToken(username,md5Password);
		
		 try{
	           subject.login(token);
	           User user = (User) subject.getPrincipal();
	           session.setAttribute("userSession", user);
	           return "index1";

	       }catch (AuthenticationException a){
	    	   a.printStackTrace();
	           model.addAttribute("errorInfo","用户名或密码错误");
	           return "login";

	       }catch (Exception e){
	           e.printStackTrace();
	           model.addAttribute("errorInfo","未知错误");
	           return"login";
	       }
//		User user = null;
//		if(( user = loginService.findUser(username))!=null){
//			session.setAttribute("userSession", user);
//			return "index1";
//		}
//		String errorInfo = "用户名或密码错误";
//		model.addAttribute("username",username);
//		model.addAttribute("password",password);
//		model.addAttribute("errorInfo",errorInfo);
//		return "login";
	}
	

	
}
