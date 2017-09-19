package cn.tedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
//		//实验性质添加session
//		User user0=new User();
//		user0.setId("123");
//		user0.setPassword("123");
//		session.setAttribute("userSession", user0);
//		
		//从session域中获得userId
		String userId=((User)session.getAttribute("userSession")).getId();
		
		//从数据库拿到爱好信息  实现回显
		List<String> uHabitList=userService.findHabitIdList(userId);
		
		//List<Habit> habitList=habitService.findAll();
//		//实现回显
//		for(Habit habit:habitList){
//			if(uHabitList.contains(habit.gethId())){
//				habit.setChecked(true);
//			}
//		}
		
		
		//查询信息
		User user=userService.findUserById(userId);
		UserInfo userInfo=userInfoService.findUserInfoById(userId);
		//将信息存入model
		model.addAttribute("uHabitList", uHabitList);
		model.addAttribute("user", user);
		model.addAttribute("userInfo", userInfo);
		return "/bbs_self"; 
	}
	@RequestMapping("/updateself")
	public String updateself(UserInfo userInfo,User user){
		
		userService.updateUserNickname(user);
		userInfoService.updateself(userInfo);
		//添加爱好  中间表
//		for(String s:hId){
//			userService.addHU(user.getId(),s);
//		}
		return "redirect:/index";
	}
}
