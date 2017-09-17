package cn.tedu.service;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.AdviceMapper;
import cn.tedu.pojo.Advice;
import cn.tedu.pojo.User;

@Service
public class AdviceServiceImpl implements AdviceService {
	
	@Autowired
	private AdviceMapper adviceMapper;
	
	@Override
	public void saveAdvice(Advice advice ,User user) {
		advice.setAdvcieTime(new Date());
		advice.setUser(user);
		adviceMapper.saveAdvice(advice);
	}

}
