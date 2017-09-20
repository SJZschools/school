package cn.tedu.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.ForEach;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.Page;
import cn.tedu.pojo.Dynamic;
import cn.tedu.pojo.User;
import cn.tedu.service.DynamicService;

@Controller
public class DynamicController {
	
	@Autowired
	private DynamicService dynamicService;
	
	/*
	@RequestMapping("/lifeHome")
	public String findAllByTime(Model model){
		//查询所有动态信息by日期
		List<Dynamic> dynaList = dynamicService.findAllByTime();
		model.addAttribute("dynaList",dynaList);
		
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
	*/
	
	
	
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
	
	//分页展示动态信息
	@RequestMapping("/lifeHome/{nowPage}")
	public String sepPage(@PathVariable("nowPage") Integer nowPage,Model model){
		Page page = new Page();
		page.setNowPage(nowPage);
		//查询总记录
		int allCount = dynamicService.findAllCount();
		page.setAllCount(allCount);
		//设置总页数
	    int pageCount = page.getPageCount();
		int allPage = 0;
		if(allCount%pageCount!=0){
			allPage = allCount/pageCount+1;
		}else{
			allPage = allCount/pageCount;
		}
		page.setAllPage(allPage);
		//设置List
		List<Integer> list = new ArrayList<Integer>();
		for(int i=0;i<allPage;i++){
			list.add(i+1);
		}
		page.setPageList(list);
		if(allCount<10){
			pageCount=allCount;
		}
		//从数据库里查询所有动态
		List<Dynamic> dynamicList = dynamicService.findAllDynamic(nowPage,pageCount );
		model.addAttribute("page",page);
		model.addAttribute("dynamicList", dynamicList);
		
		//查询所有动态信息by日期
		List<Dynamic> dynaList = dynamicService.findAllByTime(nowPage,pageCount);
		model.addAttribute("dynaList",dynaList);
				
		//查询所有动态信息by点赞
		List<Dynamic> dyList = dynamicService.findAllByRcount(nowPage,pageCount);
		model.addAttribute("dyList",dyList);		
				
		//查找最新动态
		List<Dynamic> newList = dynamicService.findNew();
		model.addAttribute("newList",newList);
				
		//查找最近一次更新动态
		Dynamic firstDynamic = dynamicService.findFirst();
		model.addAttribute("firstDynamic",firstDynamic);
		
 		return "/life_home";
	}
	
	@RequestMapping("/lifeHome")
	public String sepPage1(@PathVariable("nowPage") Integer nowPage,Model model){
		Page page = new Page();
		nowPage = 1;
		page.setNowPage(nowPage);
		//查询总记录
		int allCount = dynamicService.findAllCount();
		page.setAllCount(allCount);
		//设置总页数
	    int pageCount = page.getPageCount();
		int allPage = 0;
		if(allCount%pageCount!=0){
			allPage = allCount/pageCount+1;
		}else{
			allPage = allCount/pageCount;
		}
		page.setAllPage(allPage);
		//设置List
		List<Integer> list = new ArrayList<Integer>();
		for(int i=0;i<allPage;i++){
			list.add(i+1);
		}
		page.setPageList(list);
		if(allCount<10){
			pageCount=allCount;
		}
		//从数据库里查询所有动态
		List<Dynamic> dynamicList = dynamicService.findAllDynamic(nowPage,pageCount );
		model.addAttribute("page",page);
		model.addAttribute("dynamicList", dynamicList);
		
		//查询所有动态信息by日期
		List<Dynamic> dynaList = dynamicService.findAllByTime(nowPage,pageCount);
		model.addAttribute("dynaList",dynaList);
				
		//查询所有动态信息by点赞
		List<Dynamic> dyList = dynamicService.findAllByRcount(nowPage,pageCount);
		model.addAttribute("dyList",dyList);		
				
		//查找最新动态
		List<Dynamic> newList = dynamicService.findNew();
		model.addAttribute("newList",newList);
				
		//查找最近一次更新动态
		Dynamic firstDynamic = dynamicService.findFirst();
		model.addAttribute("firstDynamic",firstDynamic);
		
 		return "/life_home";
	}
}
