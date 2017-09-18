package cn.tedu.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.BbsSingleMapper;
import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.Board;
import cn.tedu.pojo.Reply;

@Service
public class BbsSingleServiceImpl implements BbsSingleService{
	@Autowired
	private BbsSingleMapper bbsSingleMapper;

	//根据评论id查询所有评论
	@Override
	public List<Reply> findAllReply() {
		
		return bbsSingleMapper.findAllReply();
	}

	//更新评论次数
	@Override
	public void updateBbsRecount(Bbs bbs) {
		
		bbsSingleMapper.updateBbsRecount(bbs);
	}

	//根据评论Id查询回复信息
	@Override
	public List<Board> findAllBoard() {
		
		return bbsSingleMapper.findAllBoard();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List findAllReplyAll(String bssId) {
		List<Map<Reply, List<Board>>> allList = new ArrayList<Map<Reply, List<Board>>>();
		List<Reply> replyList = bbsSingleMapper.findAllReply();
		for(Reply reply : replyList){
			Map map = new HashMap();
			map.put("reply", reply);
			List<Board> boardList = bbsSingleMapper.findAllBoardById(reply.getReplyId());
			map.put("boardList", boardList);
			allList.add(map);
		}
		return allList;
	}
	
	
}
