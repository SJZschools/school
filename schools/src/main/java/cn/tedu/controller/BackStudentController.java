package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 后台学生管理
 * */
@Controller
public class BackStudentController {
	
	//跳转到学生管理界面
	@RequestMapping("student")
	public String toStudent(){
		
		return "back/student";
	}
	
}
