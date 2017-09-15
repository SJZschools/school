package cn.tedu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 后台学生管理
 * */
@Controller
public class BackStudentController {
	
	//跳转到学生管理界面
	@RequestMapping("student")
	public String toStudent(Model model){
		//从数据库里查询所有学生
<<<<<<< HEAD
		List<User> userList = backStudentService.findAllStudent();
		model.addAttribute("userList", userList);
=======
		
>>>>>>> a4e5738ec634436e9fae59b59f9a9b4b48f0e90a
		return "back/student";
	}
	
}
