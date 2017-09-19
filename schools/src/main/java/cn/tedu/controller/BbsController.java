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
	
//	@RequestMapping("bbs_home")
//	public String toBbsHome(){
//		
//		return "bbs_home";
//	}
	
	/*
	 * 查询论坛信息
	 */
//	@RequestMapping("bbs_home")
//	public String findAll(Model model,String bssClass){
//		
//		//查询所有Bbs并根据（评论数量）排序
//		List<Bbs> bbsList = bbsService.findAll();
//		
//		//查询所有Bbs并根据（创建时间）排序
//		List<Bbs> bbsListT = bbsService.findAllByTime();
//		
//		//根据bssClass（标签）查询相应的Bbs
////		List<Bbs> bbsListC = bbsService.findAllByClass(bssClass);
//		
//		model.addAttribute("bbsList", bbsList);
//		model.addAttribute("bbsListT", bbsListT);
////		model.addAttribute("bbsListC", bbsListC);
//		//跳到论坛页面
//		return "bbs_home";
//	}
//	@RequestMapping("bbs_home")
//	public String findAll(Model model,String bssClass){
//		
//		//查询所有Bbs并根据（评论数量）排序
//		List<Bbs> bbsList = bbsService.findAll();
//		
//		//查询所有Bbs并根据（创建时间）排序
//		List<Bbs> bbsListT = bbsService.findAllByTime();
//		
//		//查询最多评论数量的Bbs
////		List<Bbs> bbsListTop = bbsService.findBbsTop();
//		
//		//根据bssClass（标签）查询相应的Bbs
////		List<Bbs> bbsListC = bbsService.findAllByClass(bssClass);
//		
//		model.addAttribute("bbsList", bbsList);
//		model.addAttribute("bbsListT", bbsListT);
////		model.addAttribute("bbsListC", bbsListC);
//		//跳到论坛页面
//		return "bbs_home";
//	}
	
	/*
	 * 根据id查询帖子的详细信息
	 */
	/*@RequestMapping("bbs_single")
	public String toBBSSingle(String bssId,Model model){
		
		//根据帖子id查询详细信息
		Bbs bbs = bbsService.findAllByBbsId(bssId);

		//根据评论Id查询详细信息
		List<Reply> replyList = bbsSingleService.findAllReply();
		
		//根据评论Id查询回复信息
		List<Board> boardList = bbsSingleService.findAllBoard();
		
		model.addAttribute("bbs", bbs);
		model.addAttribute("replyList", replyList);
		model.addAttribute("boardList", boardList);
		
		return "bbs_single";
	}*/
	
	/*
	 * 更新评论数量
	 */
//	@RequestMapping("updateBbsRecount")
//	public String updateBbsRecount(Bbs bbs){
//		bbsSingleService.updateBbsRecount(bbs);
//		return "bbs_single";
//	}
	
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
		
		return "bbs_single";
	}
	
	@RequestMapping("/bbs_singleback")
	public String toBBSSingle1(Model model , HttpSession session){
		//根据帖子id查询详细信息
		String bssId = (String) session.getAttribute("doReBbsID");
		Bbs bbs = bbsService.findAllByBbsId(bssId);
		model.addAttribute("bbs", bbs);
		
		//论坛评论与回复
		List allList = bbsSingleService.findAllReplyAll(bssId);
		model.addAttribute("allList", allList);
		
		return "bbs_single";
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
		
		//查询评论数量最多的帖子
		Bbs bbsRecount = bbsService.findBbsFirst();
		model.addAttribute("bbsRecount", bbsRecount);
		System.out.println(bbsRecount);
		return "bbs_home";
	}
}
