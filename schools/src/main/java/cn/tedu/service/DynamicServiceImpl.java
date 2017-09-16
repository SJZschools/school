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
	
	//查询所有动态信息
	public List<Dynamic> findAll() {
		
		return dynamicMapper.findAll();
	}

}
