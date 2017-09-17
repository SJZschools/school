package cn.tedu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Advice;
import cn.tedu.pojo.User;
import cn.tedu.service.BackAdviceService;

/**
 *后台学员意见的反馈 
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/back/")
public class BackAdviceController {
	
	@Autowired
	private BackAdviceService backAdviceService;
	
	//跳转到意见反馈列表
	@RequestMapping("/advice")
	public String goAdvice(Model model){
		List<Advice> adviceList = backAdviceService.findAll();
		model.addAttribute("adviceList", adviceList);
		return "/back/advice";
	}
	
}
