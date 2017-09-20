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
		User user = (User) session.getAttribute("userSession");
		adviceService.saveAdvice(advice , user);
		return "/index";
	}
}
