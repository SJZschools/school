package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tedu.mapper.BackStudentMapper;
import cn.tedu.pojo.User;
import cn.tedu.pojo.UserInfo;

@Service
public class BackStudentServiceImpl implements BackStudentService {
	@Autowired
	private BackStudentMapper backStudentMapper;
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<User> findAllStudent(Integer nowPage, Integer pageCount) {
		Integer nowPaget  = (nowPage-1)*10+1;
		Integer pageCountt = nowPaget+pageCount-1;
		return backStudentMapper.findAllStudent(nowPaget,pageCountt);
	}
	//后台界面的学生管理
	//增加学生
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void addBackStudent(User user) {
		backStudentMapper.addBackStudent(user);
		
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void addBackStudentInfo(UserInfo userInfo) {
		backStudentMapper.addBackStudentInfo(userInfo);
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public User updateBackStudent(String id) {
		User user = backStudentMapper.updateUser(id);
		UserInfo userInfo = backStudentMapper.updateUserInfo(id);
		user.setUserInfo(userInfo);
		return user;
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void deleteOneBackStudent(String id) {
		backStudentMapper.deleteOneUser(id);
		backStudentMapper.deleteOneUserInfo(id);
		
	}
	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	//删除多个学生信息
	public void deleteAllStudent(String ids) {
		String[] idss = ids.split(",");
		if(idss.length>=1){
			for(String id : idss){
				if(id != null && !"".equals(id)){
					backStudentMapper.deleteOneUser(id);
					backStudentMapper.deleteOneUserInfo(id);
				}
			}
		}

		
	}
	@Override
	public int findCount() {
		
		return backStudentMapper.findCount();
	}
	
}
