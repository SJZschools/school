package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.service.ReplyService;

@Controller
public class ReplyController {
	
	@Autowired
	ReplyService replyService;
	
	@RequestMapping("/doReply")
	public String reply(String bbsId , String comment , HttpSession session){
		session.setAttribute("doReBbsID",bbsId );
		//User user = (User) session.getAttribute("userSession");
		//String userId = user.getId();
		String userId ="1";
		replyService.saveReply(comment , bbsId , userId);
		return "redirect:/bbs_singleback";
	}
}
