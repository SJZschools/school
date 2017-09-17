package cn.tedu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Advice;
import cn.tedu.pojo.User;
import cn.tedu.service.AdviceService;

@Controller
public class AdviceController {
	
	@Autowired
	private AdviceService adviceService;
	
	@RequestMapping("/advice")
	public String saveAdvice(Advice advice , HttpSession session){
		//User user = (User) session.getAttribute("user");
		//测试代码
		User user =new User();
		user.setId("13214adsas");
		user.setNickname("dashabu");
		adviceService.saveAdvice(advice , user);
		return "redirect:/index";
	}
}
