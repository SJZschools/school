package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
/**
 * 跳转到首页
 * */
@Controller
public class IndexController {
	@RequestMapping("/")
	public String demo(){
		return "redirect:/index";
	}
	@RequestMapping("/index")
	public String inde(){
		return "/index";
	}
}
