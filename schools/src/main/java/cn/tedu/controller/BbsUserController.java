package cn.tedu.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String saveBBS(Bbs bbs,HttpSession session){
		User user=new User();
		user.setId("123");
		session.setAttribute("userSession", user);
		
		String bId=UUID.randomUUID().toString();
		bbs.setBssId(bId);
		User uu=(User) session.getAttribute("userSession");
		bbs.setCreatId(uu.getId());
		bbsService.saveBBS(bbs);
		return "/bbs_home";
	}
}
