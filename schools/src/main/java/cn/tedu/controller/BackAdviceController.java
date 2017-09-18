package cn.tedu.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.Advice;
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
	
	@RequestMapping("/seeAdvice")
	public String seeAdvice(String id,Model model){
		Advice advice = backAdviceService.findAllById(id);
		model.addAttribute("advice", advice);
		return "/back/seeAdvice";
	}
	
	@RequestMapping("/deleteAdvice")
	public String deleteAdviceById(String id){
		backAdviceService.deleteAdviceById(id);
		return "redirect:/back/advice";
	}
}
