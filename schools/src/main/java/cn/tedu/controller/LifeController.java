package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 娱乐动态 
 * */
@Controller
public class LifeController {
	
	@RequestMapping("life_home")
	public String toLifeHome(){
		return "life_home";
	}
}
