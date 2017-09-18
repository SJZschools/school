package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Advice;
import cn.tedu.pojo.User;


public interface BackAdviceService {
	
	/**
	 * 查询所有的建议信息
	 * @return 返回值为建议信息对象的一个集合
	 */
	public abstract List<Advice> findAll();
	/***
	 * 通过id查询详细动态信息
	 * @param id 动态id
	 * @return 
	 */
	public abstract Advice findAllById(String id);
	/**
	 * 删除建议根据建议的id
	 * @param id 建议id
	 */
	public abstract void deleteAdviceById(String id);

}
