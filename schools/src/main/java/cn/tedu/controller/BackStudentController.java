package cn.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;
import cn.tedu.service.BackStudentService;
import cn.tedu.tool.MD5HashPassword;

/**
 * 后台学生管理
 * */
@Controller
public class BackStudentController {
	@Autowired
	private BackStudentService backStudentService;
	//跳转到学生管理界面
	@RequestMapping("student")
	public String toStudent(Model model){
		//从数据库里查询所有学生
		List<User> userList = backStudentService.findAllStudent();
		model.addAttribute("userList", userList);
		return "back/student";
	}
	
	
	//跳转到添加学生页面
	@RequestMapping("addBackStudent")
	public String toaddStudent(){
		return "back/addStudent";
	}
	//保存新增学生
	@RequestMapping("/saveBackStudent")
	public String addBackStudent(User user){
		System.out.println(user);
		//逻辑代码
		String username = user.getUsername();
		UserInfo userInfo = user.getUserInfo();
		String card = userInfo.getCard();
		System.out.println(card);
		String password = card.substring(12);
		String HSPassword = MD5HashPassword.getPassword(username, password);
		user.setPassword(HSPassword);
		String id = user.getId();
		userInfo.setId(id);
		backStudentService.addBackStudent(user);
		backStudentService.addBackStudentInfo(userInfo);
		return "student";
	}
	
	//跳转到修改学生页面
	@RequestMapping("updateBackStudent")
	public String toupdateStudent(){
		return "back/updateStudent";
	}
		
	//删除学生根据id
	@RequestMapping("deleteBackStudent")
	public void todeleteStudent(){
		
	}
		
	//跳转到统计学生页面
	@RequestMapping("seeBackStudent")
	public String toseeStudent(){
		return "back/seeStudent";
	}
	
	
}
