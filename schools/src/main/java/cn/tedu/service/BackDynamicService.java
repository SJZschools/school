package cn.tedu.service;

import cn.tedu.pojo.Dynamic;

public interface BackDynamicService {
	/**
	 * 新增校园动态保存起来
	 * @param dynamic 校园动态封装对象
	 */
	void saveDynam(Dynamic dynamic);

}
