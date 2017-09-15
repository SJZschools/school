package cn.tedu.controller;


import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.web.ServerProperties.Session;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;
import cn.tedu.service.UserService;

/**
 * 连接到论坛
 * */
@Controller
public class BBSController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("bbs_home")
	public String toBBSHome(){
		return "bbs_home";
	}
	@RequestMapping("bbs_post")
	public String toBBSPost(){
		return "bbs_post";
	}
	
	
	@RequestMapping("bbs_self")
	public String toBBSSelf(){
		return "bbs_self";
	}
	
	/**
	 * 帖子发布
	 */
	@RequestMapping("/save")
	public String saveBBS(Bbs bbs,HttpSession session){
		User user=new User();
		user.setId("123");
		String bbsId=UUID.randomUUID().toString();
		//从session域中取得用户Id
		session.setAttribute("SessionUser", user);
		User uu= (User) session.getAttribute("SessionUser");
		
		bbs.setBssId(bbsId);
		bbs.setCreatId(uu.getId());
		userService.saveBBS(bbs);
		return "/bbs_home";
	}
}
