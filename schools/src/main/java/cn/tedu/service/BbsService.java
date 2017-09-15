package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Bbs;

public interface BbsService {

	public List<Bbs> findAll();
	//帖子发布
	public void saveBBS(Bbs bbs);
	
}
