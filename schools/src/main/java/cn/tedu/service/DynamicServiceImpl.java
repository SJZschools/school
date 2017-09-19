package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tedu.mapper.DynamicMapper;
import cn.tedu.pojo.Dynamic;

@Service
public class DynamicServiceImpl implements DynamicService {
	@Autowired
	private DynamicMapper dynamicMapper;
	
	//查询所有动态信息by日期
	public List<Dynamic> findAllByTime(Integer nowPage, Integer pageCount) {
		Integer nowPaget  = (nowPage-1)*10+1;
		Integer pageCountt = nowPaget+pageCount-1;
		return dynamicMapper.findAllByTime(nowPaget,pageCountt);
	}

	//查询所有动态信息by点赞
	public List<Dynamic> findAllByRcount(Integer nowPage, Integer pageCount) {	
		Integer nowPaget  = (nowPage-1)*10+1;
		Integer pageCountt = nowPaget+pageCount-1;
		return dynamicMapper.findAllByRcount(nowPaget,pageCountt);
	}

	//展示详细内容页面
	public Dynamic findDynamicById(String dynamicId) {		
		return dynamicMapper.findDynamicById(dynamicId);
	}

	//查找最热动态
	public List<Dynamic> findHot() {		
		return dynamicMapper.findHot();
	}

	//查找最新动态
	public List<Dynamic> findNew() {		
		return dynamicMapper.findNew();
	}

	//查找最近一次更新动态
	public Dynamic findFirst() {
		return dynamicMapper.findFirst();
	}

	//查询总记录
	public int findAllCount() {		
		return dynamicMapper.findAllCount();
	}

	//从数据库里查询所有动态
	@Transactional(propagation=Propagation.REQUIRED)
	public List<Dynamic> findAllDynamic(Integer nowPage, Integer pageCount) {
		Integer nowPaget  = (nowPage-1)*10+1;
		Integer pageCountt = nowPaget+pageCount-1;
		return dynamicMapper.findAllDynamic(nowPaget,pageCountt );
	}

	
	

}
