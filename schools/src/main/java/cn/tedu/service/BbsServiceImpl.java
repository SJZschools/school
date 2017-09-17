package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tedu.mapper.BbsMapper;
import cn.tedu.pojo.Bbs;

@Service
public class BbsServiceImpl implements BbsService{
	
	@Autowired
	private BbsMapper bbsMapper;
	//根据recount（评论数量）查询所有Bbs
	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public List<Bbs> findAll() {
		return bbsMapper.findAll();
	}
	
	//根据creatTime（创建时间）查询所有Bbs
	@Override
	public List<Bbs> findAllByTime() {
		
		return bbsMapper.findAllByTime();
	}
	
	//根据bssId（帖子id）查询这条数据的详细信息
	@Override
	public Bbs findAllByBbsId(String bssId) {
		
		return bbsMapper.findAllByBbsId(bssId);
	}

	//根据bssClass（标签）查询相应的Bbs
//	@Override
//	public List<Bbs> findAllByClass(String bssClass) {
//		
//		return bbsMapper.findAllByClass(bssClass);
//	}
	
	//帖子发布
	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public void saveBBS(Bbs bbs) {
		bbsMapper.saveBBS(bbs);
	}


}
