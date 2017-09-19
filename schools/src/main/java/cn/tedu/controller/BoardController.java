package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.service.BbsService;
import cn.tedu.service.BoardService;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService boardService; 
	
	@Autowired
	private BbsService bbsService;
	
	@RequestMapping("/doBoard")
	public String reply(String replyId , String comment , HttpSession session){
		String bssId = bbsService.findBbsIdByReplyId(replyId);
		session.setAttribute("doReBbsID",bssId );
		//User user = (User) session.getAttribute("userSession");
		//String userId = user.getId();
		String userId ="1";
		boardService.saveBoard(comment , bssId , userId ,replyId);
		return "redirect:/bbs_singleback";
	}
}
