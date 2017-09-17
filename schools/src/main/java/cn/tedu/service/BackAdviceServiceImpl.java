package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.BackAdviceMapper;
import cn.tedu.pojo.Advice;

@Service
public class BackAdviceServiceImpl implements BackAdviceService {
	
	@Autowired
	private BackAdviceMapper backAdviceMapper;
	
	@Override
	public List<Advice> findAll() {
		return backAdviceMapper.findAll();
	}	

}
