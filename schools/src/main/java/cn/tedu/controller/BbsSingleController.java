package cn.tedu.controller;

import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Bbs;
import cn.tedu.service.BbsSingleService;

public class BbsSingleController {
	private BbsSingleService bbsSingleService;
	
	@RequestMapping("/update")
	public String updateBbsRecount(Bbs bbs){
		bbsSingleService.updateBbsRecount(bbs);
		return "bbs_single";
	}
}
