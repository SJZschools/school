package cn.tedu.mapper;

import java.util.List;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.Reply;

public interface BbsSingleMapper {

	//根据评论Id查询详细信息
	public List<Reply> findAllReply();

	//更新评论次数
	public void updateBbsRecount(Bbs bbs);

}
