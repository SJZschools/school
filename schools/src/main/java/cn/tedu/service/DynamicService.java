package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Dynamic;

public interface DynamicService {
	//查询所有动态信息by日期
	List<Dynamic> findAllByTime(Integer nowPage, Integer pageCount);
	
	//查询所有动态信息by点赞
	List<Dynamic> findAllByRcount(Integer nowPage, Integer pageCount);
	
	//展示详细内容页面
	Dynamic findDynamicById(String dynamicId);
	
	//查找最热动态
	List<Dynamic> findHot();
	
	//查找最新动态
	List<Dynamic> findNew();

	//查找最近一次更新动态
	Dynamic findFirst();
	
	//查询总记录
	int findAllCount();

	//从数据库里查询所有动态
	List<Dynamic> findAllDynamic(Integer nowPage, Integer pageCount);	
}
