package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DynamicController {

	@RequestMapping("/lifeHome")
	public String findAll(){
		
		return "/life_home";
	}

}
