package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.User;
import cn.tedu.service.UserService;
import cn.tedu.tool.MD5HashPassword;

@Controller
public class UpdatePasswordController extends BaseController{
	@Autowired
	private UserService userService;
	@RequestMapping("/updatePassword")
	public String updatePassword(String newPassword){
		return "/updatePassword";
	}
	@RequestMapping("/upPassword")
	public String upPassword(String oldPassword,String new1Password,String new2Password,HttpSession session){
		//获取session中的用户信息
		String username=((User)session.getAttribute("userSession")).getUsername();
		String pw=((User)session.getAttribute("userSession")).getPassword();
		//对密码进行加密处理
		String op= MD5HashPassword.getPassword(username, oldPassword);
		String np= MD5HashPassword.getPassword(username, new1Password);
		//判断原密码是否正确
		
		if(!pw.equals(op)){
			return "/updatePassword";
		}
		//更改用户密码
		User user=(User) session.getAttribute("userSession");
		user.setPassword(np);
		userService.updateUserPassword(user);
		return "redirect:/index";
	}
}
