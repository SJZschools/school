package cn.tedu.service;

import org.springframework.stereotype.Service;

import cn.tedu.mapper.BackDynamicMapper;
import cn.tedu.pojo.Dynamic;

@Service
public class BackDynamicServiceImpl implements BackDynamicService {
	
	private BackDynamicMapper backDynamicMapper;
	
	public void saveDynam(Dynamic dynamic) {
		backDynamicMapper.saveDynam(dynamic);
	}

}
