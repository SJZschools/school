package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 后台校园动态控制器
 * @author Yuwenhao
 *
 */
@Controller
@RequestMapping("/back/")
public class BackDynamicController {
	
	//跳转到动态页面的主页
	@RequestMapping("/ScDynam")
	public String goDynam(){
		return "/back/dynam";
	}
	
	//跳转到后台首页
	@RequestMapping("/DyToMain")
	public String goMain(){
		return "redirect:/backIndex";
	}
	
	//跳转到自己页面
	@RequestMapping("/DyToself")
	public String goSelf(){
		return "redirect:/back/ScDynam";
	}  
}
