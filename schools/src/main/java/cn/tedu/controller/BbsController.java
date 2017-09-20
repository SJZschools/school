package cn.tedu.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.Page;
import cn.tedu.pojo.Bbs;
import cn.tedu.service.BbsService;
import cn.tedu.service.BbsSingleService;

/**
 * 连接到论坛
 * */
@Controller
public class BbsController {
	
	@Autowired
	private BbsService bbsService;
	
	@Autowired
	private BbsSingleService bbsSingleService;
		
	@RequestMapping("bbs_post")
	public String toBBSPost(){
		return "bbs_post";
	}

	@RequestMapping("bbs_single")
	public String toBBSSingle(String bssId,Model model){
		//根据帖子id查询详细信息
		Bbs bbs = bbsService.findAllByBbsId(bssId);
		model.addAttribute("bbs", bbs);
		
		//论坛评论与回复
		List allList = bbsSingleService.findAllReplyAll(bssId);
		model.addAttribute("allList", allList);
		
		return "/bbs_single";
	}
	
	@RequestMapping("/bbs_singleback")
	public String toBBSSingle1(Model model , HttpSession session){
		//根据帖子id查询详细信息
		String bssId = (String) session.getAttribute("addbbsId");
		Bbs bbs = bbsService.findAllByBbsId(bssId);
		model.addAttribute("bbs", bbs);
		
		//论坛评论与回复
		List allList = bbsSingleService.findAllReplyAll(bssId);
		model.addAttribute("allList", allList);
		
		return "/bbs_single";
	}
	
	@RequestMapping("/bbs_home/{nowPage}")
	public String toBBSPage(@PathVariable("nowPage") Integer nowPage,Model model){
		Page page = new Page();
		page.setNowPage(nowPage);
		//查询总记录是
		 int allCount = bbsService.findCount();
		
		page.setAllCount(allCount);
		//设置总页数
		Integer pageCount = page.getPageCount();
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
		//从数据库里查询所有帖子
		List<Bbs> bbsList = bbsService.findAllBbs(nowPage,pageCount );
		//查询所有Bbs并根据（创建时间）排序
		List<Bbs> bbsListT = bbsService.findAllByTime(nowPage,pageCount );
		model.addAttribute("page",page);
		model.addAttribute("bbsList", bbsList);
		model.addAttribute("bbsListT", bbsListT);
		
		return "bbs_home";
	}

	@RequestMapping("/bbs_home")
	public String toBBSPage1(Integer nowPage,Model model){
		Page page = new Page();
		nowPage = 1;
		page.setNowPage(nowPage);
		//查询总记录是
		 int allCount = bbsService.findCount();
		
		page.setAllCount(allCount);
		//设置总页数
		Integer pageCount = page.getPageCount();
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
		//从数据库里查询所有帖子
		List<Bbs> bbsList = bbsService.findAllBbs(nowPage,pageCount );
		//查询所有Bbs并根据（创建时间）排序
		List<Bbs> bbsListT = bbsService.findAllByTime(nowPage,pageCount );
		model.addAttribute("page",page);
		model.addAttribute("bbsList", bbsList);
		model.addAttribute("bbsListT", bbsListT);
		
		return "bbs_home";
	}
}
