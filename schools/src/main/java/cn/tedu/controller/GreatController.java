package cn.tedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;
import cn.tedu.service.BbsService;
import cn.tedu.service.BbsSingleService;
import cn.tedu.service.GreatService;
import net.sf.json.JSON;

@Controller
public class GreatController {
	
	@Autowired
	private GreatService greatService;
	
	@Autowired
	private BbsService bbsService;
	
	@Autowired
	BbsSingleService bbsSingleService;
	
	@RequestMapping("/findGreat")
	@ResponseBody
	public String toGreat(String id , HttpSession session){
		User user = (User) session.getAttribute("userSession");
		String userId = user.getId();
		String flag = greatService.findGreat(id , userId);
		return flag;
	}
	
	@RequestMapping("/minusGreat")
	public String minusGreat(String bbsId , Model model, HttpSession session){
		int count = -1;
		bbsService.updateGreat(bbsId , count);
		session.setAttribute("addbbsId", bbsId);
		return "redirect:/bbs_singleback";
	}
	@RequestMapping("/addGreat")
	public String addGreat(String bbsId, Model model, HttpSession session){
		int count = 1;
		bbsService.updateGreat(bbsId , count);
		session.setAttribute("addbbsId", bbsId);
		return "redirect:/bbs_singleback";
	}
}
