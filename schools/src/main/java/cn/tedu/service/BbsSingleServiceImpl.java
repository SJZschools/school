package cn.tedu.service;

import cn.tedu.mapper.BbsMapper;
import cn.tedu.mapper.BbsSingleMapper;

public class BbsSingleServiceImpl implements BbsSingleService{

	private BbsSingleMapper bbsSingleMapper;
	
	//查询所有评论
	@Override
	public String findAllReply() {
		
		return bbsSingleMapper.findAllReply();
	}

}
