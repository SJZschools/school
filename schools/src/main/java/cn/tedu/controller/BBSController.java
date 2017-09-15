package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 连接到论坛
 * */
@Controller
public class BBSController {
	@RequestMapping("bbs_home")
	public String toBBSHome(){
		return "bbs_home";
	}
	@RequestMapping("bbs_post")
	public String toBBSPost(){
		return "bbs_post";
	}
	
	
	@RequestMapping("bbs_self")
	public String toBBSSelf(){
		return "bbs_self";
	}
}
