package cn.tedu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;
import cn.tedu.service.BackStudentService;
import cn.tedu.tool.MD5HashPassword;

/**
 * 后台学生管理
 * */
@Controller
public class BackStudentController extends BaseController {
	@Autowired
	private BackStudentService backStudentService;
	//跳转到学生管理界面
	@RequestMapping("/student")
	public String toStudent(Model model){
		//从数据库里查询所有学生
		List<User> userList = backStudentService.findAllStudent();
		model.addAttribute("userList", userList);
		return "back/student";
	}
	
	
	//跳转到添加学生页面
	@RequestMapping("/addBackStudent")
	public String toaddStudent(){
		return "back/addStudent";
	}
	
	//保存新增学生
	@RequestMapping("/saveBackStudent")
	@ResponseBody
	@Transactional(propagation=Propagation.REQUIRED)
	public boolean addBackStudent(UserInfo userInfo){
		
		User user = new User();
		//逻辑代码
		String name = userInfo.getName();
		String card = userInfo.getCard();
		String password = card.substring(12);
		String HSPassword = MD5HashPassword.getPassword(name, password);
		user.setPassword(HSPassword);
		user.setId(userInfo.getId());
		user.setUsername(name);
		user.setPassword(HSPassword);
		backStudentService.addBackStudent(user);
		backStudentService.addBackStudentInfo(userInfo);
		return true;
	}
	
	//修改用户，先删除再保存
	@RequestMapping("/saveDelBackStudent")
	@ResponseBody
	@Transactional(propagation=Propagation.REQUIRED)
	public boolean addDelBackStudent(UserInfo userInfo){
		//现根据id删除
		String id = userInfo.getId();
		backStudentService.deleteOneBackStudent(id);
		
		
		User user = new User();
		//逻辑代码
		String name = userInfo.getName();
		String card = userInfo.getCard();
		String password = card.substring(12);
		String HSPassword = MD5HashPassword.getPassword(name, password);
		user.setPassword(HSPassword);
		user.setId(userInfo.getId());
		user.setUsername(name);
		user.setPassword(HSPassword);
		backStudentService.addBackStudent(user);
		backStudentService.addBackStudentInfo(userInfo);
		return true;
	}
	
	//跳转到修改学生页面
	@RequestMapping("/updateBackStudent/{id}")
	
	public String toupdateStudent(@PathVariable String id,Model model){
	
		//根据id查询User和userInfo
		User user = backStudentService.updateBackStudent(id);
		//回显数据
		UserInfo userInfo = user.getUserInfo();
		userInfo.setName(user.getUsername());
		userInfo.setId(user.getId());
		model.addAttribute("userInfo",userInfo);
		return "back/updateStudent";
	}
		
	//删除学生根据id
	@RequestMapping("/deleteBackStudent")
	public void todeleteStudent(){
		
	}
		
	//跳转到统计学生页面
	@RequestMapping("/seeBackStudent")
	public String toseeStudent(){
		return "back/seeStudent";
	}
	
	
}
