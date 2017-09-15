package cn.tedu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Dynamic;
import cn.tedu.service.BackDynamicService;

/**
 * 后台校园动态控制器
 * @author Yuwenhao
 *
 */
@Controller
@RequestMapping("/back/")
public class BackDynamicController {
	
	@Autowired
	private BackDynamicService backDynamicService;
	
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
	
	//跳转到添加动态页面
	@RequestMapping("/addDynam")
	public String toAddDynam(){
		return "/back/addDynam";
	}
	
	//跳转到更新页面
	@RequestMapping("/deleteDynam")
	public String toUpdateDynam(){
		return "redirect:/back/ScDynam";
	}
	
	//保存动态信息
	@RequestMapping("/saveDynam")
	public String toSaveDynam(Dynamic dynamic){
		backDynamicService.saveDynam(dynamic);
		return "redirect:/back/ScDynam";
	}
}























