package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 跳转后台首页界面
 * */
@Controller
public class BackIndexController {
	//跳转到首页
	@RequestMapping("/back")
	public String toMain(){
		return "back/main";
	}
	@RequestMapping("/backTop")
	public String tobackTop(){
		return "back/top";
	}
	@RequestMapping("/backLeft")
	public String tobackLeft(){
		return "back/left";
	}
	@RequestMapping("/backIndex")
	public String tobackIndex(){
		return "back/index";
	}
	
	
	
	
	
	
	
}
