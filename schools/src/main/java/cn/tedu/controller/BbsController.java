package cn.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Bbs;
import cn.tedu.service.BbsService;

/**
 * 连接到论坛
 * */
@Controller
public class BbsController {
	
	@Autowired
	private BbsService bbsService;
	
//	@RequestMapping("bbs_home")
//	public String toBbsHome(){
//		
//		return "bbs_home";
//	}
	
	/*
	 * 查询论坛信息
	 */
	@RequestMapping("bbs_home")
	public String findAll(Model model){
		List<Bbs> bbsList = bbsService.findAll();
		
		model.addAttribute("bbsList", bbsList);
		//跳到论坛页面
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
