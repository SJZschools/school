package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.Board;
import cn.tedu.pojo.Reply;

public interface BbsSingleService {

	//根据评论Id查询详细信息
	public List<Reply> findAllReply();
	
	//根据评论Id查询回复信息
	public List<Board> findAllBoard();

	//更新评论次数
	public void updateBbsRecount(Bbs bbs);
	/**
	 * 查询所有的评论以及回复
	 * @param bssId
	 */
	public List findAllReplyAll(String bssId);
}
