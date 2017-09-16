package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Dynamic;

public interface DynamicService {
	//查询所有动态信息by日期
	List<Dynamic> findAllByTime();
	
	//查询所有动态信息by点赞
	List<Dynamic> findAllByRcount();
	
	//展示详细内容页面
	Dynamic findDynamicById(String dynamicId);

	List<Dynamic> findHot();
	
}
