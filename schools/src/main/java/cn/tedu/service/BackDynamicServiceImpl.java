package cn.tedu.service;

import java.util.UUID;

import org.springframework.stereotype.Service;

import cn.tedu.mapper.BackDynamicMapper;
import cn.tedu.pojo.Dynamic;

@Service
public class BackDynamicServiceImpl implements BackDynamicService {
	
	private BackDynamicMapper backDynamicMapper;
	
	public void saveDynam(Dynamic dynamic) {
		String id = UUID.randomUUID().toString();
		dynamic.setDynamicId(id);
		backDynamicMapper.saveDynam(dynamic);
	}

}
