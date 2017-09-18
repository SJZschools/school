package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Dynamic;
import cn.tedu.pojo.User;

public interface BackDynamicService {
	/**
	 * 新增校园动态保存起来
	 * @param dynamic 校园动态封装对象
	 */
	void saveDynam(Dynamic dynamic , User user);
	/**
	 * 查询所有的动态并返回
	 * @return 返回值为动态集合
	 */
	List<Dynamic> findAll();
	/**
	 * 根据动态的id
	 * 删除动态信息
	 * @param dynamicId 动态id
	 */
	void deleteDynamById(String dynamicId);

}
