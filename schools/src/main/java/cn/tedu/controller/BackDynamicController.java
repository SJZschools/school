package cn.tedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.StringUtils;

import cn.tedu.pojo.Dynamic;
import cn.tedu.pojo.User;
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
	public String goDynam(Model model){
		List<Dynamic> dynamicList = backDynamicService.findAll();
		model.addAttribute("dynamicList", dynamicList);
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
	public String toUpdateDynam(String dynamicId){
		
		backDynamicService.deleteDynamById(dynamicId);
		return "redirect:/back/ScDynam";
	}
	
	//保存动态信息
	@RequestMapping("/saveDynam")
	public String toSaveDynam(Dynamic dynamic , HttpSession session){
		User user = (User) session.getAttribute("userSession");
	    backDynamicService.saveDynam(dynamic , user);
		System.out.println(dynamic);
		return "redirect:/back/ScDynam";
	}
}























