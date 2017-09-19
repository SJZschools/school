package cn.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.Dynamic;
import cn.tedu.service.BbsService;
import cn.tedu.service.DynamicService;
/**
 * 跳转到首页
 * */
@Controller
public class IndexController {
	
	@Autowired
	private DynamicService dynamicService;
	
	@Autowired
	private BbsService bbsService;
	
	@RequestMapping("/")
	public String demo(){
		return "redirect:/index";
	}
	@RequestMapping("/index")
	public String inde(Model model){
		List<Dynamic> newList = dynamicService.findNew();
		model.addAttribute("newList", newList);
		
		//查询评论数量最多的帖子
		Bbs bbsRecount = bbsService.findBbsFirst();
		model.addAttribute("bbsRecount", bbsRecount);
		
		//查询最新的帖子
		Bbs bbscreatTime = bbsService.findBbsByFirstTime();
		model.addAttribute("bbscreatTime", bbscreatTime);
		
		Dynamic firstDynamic = dynamicService.findFirst();
		model.addAttribute("firstDynamic",firstDynamic);
		return "/index";
	}
	
	@RequestMapping("map")
	public String toMap(){
		return "map";
	}
	

}
