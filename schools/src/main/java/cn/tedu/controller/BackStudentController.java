package cn.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.User;
import cn.tedu.service.BackStudentService;

/**
 * 后台学生管理
 * */
@Controller
public class BackStudentController {
	@Autowired
	private BackStudentService backStudentService;
	//跳转到学生管理界面
	@RequestMapping("student")
	public String toStudent(){
		//从数据库里查询所有学生
		List<User> userList = backStudentService.findAllStudent();
		return "back/student";
	}
	
}
