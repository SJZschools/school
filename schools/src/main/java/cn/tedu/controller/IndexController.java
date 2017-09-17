package cn.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Dynamic;
import cn.tedu.service.DynamicService;
/**
 * 跳转到首页
 * */
@Controller
public class IndexController {
	
	@Autowired
	private DynamicService dynamicServcie;
	
	@RequestMapping("/")
	public String demo(){
		return "redirect:/index";
	}
	@RequestMapping("/index")
	public String inde(Model model){
		List<Dynamic> dynamicList = dynamicServcie.findAllByTime();
		model.addAttribute("dynamicList", dynamicList);
		return "/index";
	}	
}
