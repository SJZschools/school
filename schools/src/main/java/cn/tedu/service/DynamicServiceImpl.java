package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.DynamicMapper;
import cn.tedu.pojo.Dynamic;

@Service
public class DynamicServiceImpl implements DynamicService {
	@Autowired
	private DynamicMapper dynamicMapper;
	
	//查询所有动态信息by日期
	public List<Dynamic> findAllByTime() {		
		return dynamicMapper.findAllByTime();
	}

	//查询所有动态信息by点赞
	public List<Dynamic> findAllByRcount() {		
		return dynamicMapper.findAllByRcount();
	}

	//展示详细内容页面
	public Dynamic findDynamicById(String dynamicId) {		
		return dynamicMapper.findDynamicById(dynamicId);
	}

}
