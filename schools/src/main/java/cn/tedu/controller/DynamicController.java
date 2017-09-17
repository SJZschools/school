package cn.tedu.controller;

import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Dynamic;
import cn.tedu.service.DynamicService;

@Controller
public class DynamicController {
	
	@Autowired
	private DynamicService dynamicService;
	
	
	@RequestMapping("/lifeHome")
	public String findAllByTime(Model model){
		//查询所有动态信息by日期
		List<Dynamic> dynamicList = dynamicService.findAllByTime();
		model.addAttribute("dynamicList",dynamicList);
		
		//查询所有动态信息by点赞
		List<Dynamic> dyList = dynamicService.findAllByRcount();
		model.addAttribute("dyList",dyList);		
		
		//查找最新动态
		List<Dynamic> newList = dynamicService.findNew();
		model.addAttribute("newList",newList);
		
		//查找最近一次更新动态
		Dynamic firstDynamic = dynamicService.findFirst();
		model.addAttribute("firstDynamic",firstDynamic);
		
		return "/life_home";
	}
	
	//展示详细内容页面
	@RequestMapping("/lifeSingle")
	public String toSingle(String dynamicId,Model model){
		//查找最热动态
		List<Dynamic> hotList = dynamicService.findHot();
		model.addAttribute("hotList",hotList);		
		//查询所有动态信息byID
		Dynamic dynamic = dynamicService.findDynamicById(dynamicId);		
		model.addAttribute("dynamic",dynamic);		
		return "/life_single";
	}	

}
