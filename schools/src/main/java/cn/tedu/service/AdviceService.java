package cn.tedu.service;

import cn.tedu.pojo.Advice;
import cn.tedu.pojo.User;

public interface AdviceService {
	/**
	 * 保存意见到数据库
	 * @param advice 建议
	 * @param user 当前用户对象
	 * 
	 */
	public abstract void saveAdvice(Advice advice, User user);

}
