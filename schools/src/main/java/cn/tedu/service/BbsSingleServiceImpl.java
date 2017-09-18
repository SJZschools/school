package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.BbsSingleMapper;
import cn.tedu.pojo.Bbs;
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

}
