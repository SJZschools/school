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

}
