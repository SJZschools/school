package cn.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	@RequestMapping("bbs_home")
	public String findAll(Model model,String bssClass){
		
		//查询所有Bbs并根据（评论数量）排序
		List<Bbs> bbsList = bbsService.findAll();
		
		//查询所有Bbs并根据（创建时间）排序
		List<Bbs> bbsListT = bbsService.findAllByTime();
		
		//根据bssClass（标签）查询相应的Bbs
//		List<Bbs> bbsListC = bbsService.findAllByClass(bssClass);
		
		model.addAttribute("bbsList", bbsList);
		model.addAttribute("bbsListT", bbsListT);
//		model.addAttribute("bbsListC", bbsListC);
		//跳到论坛页面
		return "bbs_home";
	}
	
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
	@RequestMapping("updateBbsRecount")
	public String updateBbsRecount(Bbs bbs){
		bbsSingleService.updateBbsRecount(bbs);
		return "bbs_single";
	}
	
	@RequestMapping("bbs_post")
	public String toBBSPost(){
		return "bbs_post";
	}
	

	@RequestMapping("bbs_single")
	public String toBBSSingle(String bssId,Model model){
		//根据帖子id查询详细信息
		Bbs bbs = bbsService.findAllByBbsId(bssId);
		model.addAttribute("bbs", bbs);
		
		List allList = bbsSingleService.findAllReplyAll(bssId);
		model.addAttribute("allList", allList);
		
		return "bbs_single";
	}

}
