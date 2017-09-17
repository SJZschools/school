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
	
	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public List<Bbs> findAll() {
		return bbsMapper.findAll();
	}
	//帖子发布
	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public void saveBBS(Bbs bbs) {
		bbsMapper.saveBBS(bbs);
	}

}
