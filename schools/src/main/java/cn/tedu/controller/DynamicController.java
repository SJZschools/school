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
	
	//查询所有动态信息
	@RequestMapping("/lifeHome")
	public String findAll(Model model){
		List<Dynamic> dynamicList = dynamicService.findAll();
		model.addAttribute("dynamicList",dynamicList);
		return "/life_home";
	}

}
