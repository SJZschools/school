package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Dynamic;

public interface BackDynamicService {
	/**
	 * 新增校园动态保存起来
	 * @param dynamic 校园动态封装对象
	 */
	void saveDynam(Dynamic dynamic);
	/**
	 * 查询所有的动态并返回
	 * @return 返回值为动态集合
	 */
	List<Dynamic> findAll();

}
