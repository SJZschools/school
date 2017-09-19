package cn.tedu.mapper;

import java.util.List;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.Board;
import cn.tedu.pojo.Reply;

public interface BbsSingleMapper {

	//根据评论Id查询详细信息
	public List<Reply> findAllReply();

	//根据评论Id查询回复信息
	public List<Board> findAllBoard();

	//更新评论次数
	public void updateBbsRecount(Bbs bbs);

	public List<Board> findAllBoardById(String replyId);

}
