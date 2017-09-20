package cn.tedu.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;
import cn.tedu.service.BbsService;

@Controller
public class BbsUserController {
	@Autowired
	private BbsService bbsService;
	/**
	 * 帖子发布
	 * @param bbs
	 * @param session
	 * @return
	 */
	@RequestMapping("/savebbs")
	public String saveBBS(Bbs bbs,MultipartFile mFile,HttpSession session){
		
		String bId=UUID.randomUUID().toString();
		bbs.setBssId(bId);
		Integer recount = 1;
		bbs.setRecount(recount);
		User uu=(User) session.getAttribute("userSession");
		bbs.setCreatId(uu.getId());
		bbsService.saveBBS(bbs);
		return "redirect:/bbs_home";
	}
}
