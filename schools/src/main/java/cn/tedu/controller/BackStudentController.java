package cn.tedu.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.tedu.Page;
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
	@RequestMapping("/student/{nowPage}")
	public String toStudent(@PathVariable("nowPage") Integer nowPage,Model model){
		System.out.println(nowPage);
		Page page = new Page();
		page.setNowPage(nowPage);
		//查询总记录是
		int allCount = backStudentService.findCount();
		
		page.setAllCount(allCount);
		//设置总页数
		int pageCount = page.getPageCount();
		int allPage = 0;
		if(allCount%pageCount!=0){
			allPage = allCount/pageCount+1;
		}else{
			allPage = allCount/pageCount;
		}
		page.setAllPage(allPage);
		//设置List
		List<Integer> list = new ArrayList<Integer>();
		for(int i=0;i<allPage;i++){
			list.add(i+1);
		}
		page.setPageList(list);
		if(allCount<10){
			pageCount=allCount;
		}
		//从数据库里查询所有学生
		List<User> userList = backStudentService.findAllStudent(nowPage,pageCount );
		model.addAttribute("page",page);
		model.addAttribute("userList", userList);
		return "back/student";
	}
	
	@RequestMapping("/student")
	public String toStudent2(Integer nowPage,Model model){
		System.out.println(nowPage);
		Page page = new Page();
		page.setNowPage(nowPage);
		//查询总记录是
		 int allCount = backStudentService.findCount();
		
		page.setAllCount(allCount);
		//设置总页数
		Integer pageCount = page.getPageCount();
		int allPage = 0;
		if(allCount%pageCount!=0){
			allPage = allCount/pageCount+1;
		}else{
			allPage = allCount/pageCount;
		}
		page.setAllPage(allPage);
		//设置List
		List<Integer> list = new ArrayList<Integer>();
		for(int i=0;i<allPage;i++){
			list.add(i+1);
		}
		page.setPageList(list);
		if(allCount<10){
			pageCount=allCount;
		}
		//从数据库里查询所有学生
		List<User> userList = backStudentService.findAllStudent(nowPage,pageCount );
		model.addAttribute("page",page);
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
	
	public String toupdateStudent(@PathVariable("id") String id,Model model){
	
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
	public String todeleteStudent(String ids){
		System.out.println(ids);
		backStudentService.deleteAllStudent(ids);
		return "redirect:student";
	}
		
	
	
	
}
