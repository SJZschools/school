package cn.tedu.service;

public interface GreatService {
	/**
	 * 根据用户Id 和帖子Id查询是否点赞
	 * @param id 帖子Id
	 * @param userId 用户Id
	 */
	public abstract String findGreat(String id, String userId);
	
	
}
