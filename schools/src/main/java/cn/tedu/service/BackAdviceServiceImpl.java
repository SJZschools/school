package cn.tedu.service;

import java.util.List;

import org.springframework.stereotype.Service;

import cn.tedu.mapper.BackAdviceMapper;
import cn.tedu.pojo.Advice;
import cn.tedu.pojo.User;

@Service
public class BackAdviceServiceImpl implements BackAdviceService {
	
	private BackAdviceMapper backAdviceMapper;
	
	@Override
	public List<Advice> findAll() {
		return backAdviceMapper.findAll();
	}	

}
