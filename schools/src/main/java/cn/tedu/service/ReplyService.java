package cn.tedu.service;

public interface ReplyService {
	/**
	 * 根据帖子id保存评论内容
	 * @param replyTxt 评论内容
	 * @param bbsId 
	 * @param userId 
	 */
	public abstract void saveReply(String replyTxt, String bbsId, String userId);

}
