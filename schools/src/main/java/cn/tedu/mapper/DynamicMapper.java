package cn.tedu.mapper;

import java.util.List;

import cn.tedu.pojo.Dynamic;

public interface DynamicMapper {
	
	//查询所有动态信息by日期
	List<Dynamic> findAllByTime();
	//查询所有动态信息by点赞
	List<Dynamic> findAllByRcount();
	//展示详细内容页面
	Dynamic findDynamicById(String dynamicId);
	//查找最热动态
	List<Dynamic> findHot();
	//查找最热动态
	List<Dynamic> findNew();
	//查找最近一次更新动态
	Dynamic findFirst();	

}
