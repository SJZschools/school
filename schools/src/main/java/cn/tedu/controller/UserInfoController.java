package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Habit;
import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;
import cn.tedu.service.HabitService;
import cn.tedu.service.UserInfoService;
import cn.tedu.service.UserService;

@Controller
public class UserInfoController extends BaseController{
	@Autowired
	private UserInfoService userInfoService;
	@Autowired
	private UserService userService;
	@Autowired
	private HabitService habitService;
	/**
	 * 跳转到“个人信息”页面前先取得用户信息
	 * @param userId
	 * @param model
	 * @return
	 */
	@RequestMapping("/bbs_self")
	public String toBBSSelf(Model model,HttpSession session){
		//实验性质添加session
		User user0=new User();
		user0.setId("123");
		session.setAttribute("userSession", user0);
		
		//从session域中获得userId
		String userId=((User)session.getAttribute("userSession")).getId();
		
		//查询信息
		User user=userService.findUserById(userId);
		UserInfo userInfo=userInfoService.findUserInfoById(userId);
		Habit habit=habitService.findHabitById(userId);
		System.out.println(userInfo.toString());
		//将信息存入model
		model.addAttribute("user", user);
		model.addAttribute("userInfo", userInfo);
		model.addAttribute("habit", habit);
		return "/bbs_self"; 
	}
	@RequestMapping("/updateself")
	public String updateself(UserInfo userInfo){
		
		userInfoService.updateself(userInfo);
		return "redirect:/index";
	}
}
