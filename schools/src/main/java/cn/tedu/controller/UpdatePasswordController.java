package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.User;
import cn.tedu.service.UserService;

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
		
		//判断原密码是否正确
		String pw=((User)session.getAttribute("userSession")).getPassword();
		if(!pw.equals(oldPassword)){
			
			return "/updatePassword";
		}
		//更改用户密码
		User user=(User) session.getAttribute("userSession");
		user.setPassword(new1Password);
		userService.updateUserPassword(user);
		return "redirect:/index";
	}
}
