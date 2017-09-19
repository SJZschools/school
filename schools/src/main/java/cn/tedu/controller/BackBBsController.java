package cn.tedu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.Page;
import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;
import cn.tedu.service.BackBBsService;

@Controller
public class BackBBsController {
	@Autowired
	private BackBBsService backBBsService;
	
	@RequestMapping("discuss/{nowPage}")
	public String todiscusst(@PathVariable("nowPage") Integer nowPage,Model model){
		Page page = new Page();
		page.setNowPage(nowPage);
		//查询总记录是
		int allCount = backBBsService.findCount();
		
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
		//从数据库里查询所有学生
		List<User> bBsList = backBBsService.findAllBBs(nowPage,pageCount );
		model.addAttribute("page",page);
		model.addAttribute("bBsList", bBsList);
		
		
		return "back/discuss";
	}
	
	@RequestMapping("discuss")
	public String todiscuss(Integer nowPage,Model model){
		Page page = new Page();
		page.setNowPage(nowPage);
		//查询总记录数
		int allCount = backBBsService.findCount();
		
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
		//从数据库里查询所有学生
		List<User> bBsList = backBBsService.findAllBBs(nowPage,pageCount );
		model.addAttribute("page",page);
		model.addAttribute("bBsList", bBsList);
		
		
		return "back/discuss";
	}
	
	//查看贴子内容
	@RequestMapping("bbsBackCheck/{bbsId}")
	public String toBbsBackCheck(@PathVariable("bbsId")String bbsId,Model model){
		//根据bbsId查看贴子内容
		Bbs bbs = backBBsService.findBBsById(bbsId);
		model.addAttribute("bbs",bbs);
		
		return "back/bbsBackCheck";
	}
	
	//批量删除
	@RequestMapping("deleteBackBBs")
	@Transactional(propagation=Propagation.REQUIRED)
	public String toDeleteAll(String ids){
		backBBsService.deleteAllB(ids);
		int i = 1;
		return "redirect:discuss"+"/"+i;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
