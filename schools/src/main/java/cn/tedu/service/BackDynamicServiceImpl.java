package cn.tedu.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Service;

import cn.tedu.mapper.BackDynamicMapper;
import cn.tedu.pojo.Dynamic;
import cn.tedu.pojo.User;

@Service
public class BackDynamicServiceImpl implements BackDynamicService {
	
	private BackDynamicMapper backDynamicMapper;
	
	public void saveDynam(Dynamic dynamic) {
		System.out.println(dynamic);
		//测试代码
		User user = new User();
		user.setId("13212132asd");
		user.setNickname("立即阿伦");
		
		
		dynamic.setRid(user.getId());
		dynamic.setRname(user.getNickname());
		String id = UUID.randomUUID().toString();
		dynamic.setDynamicId(id);
		dynamic.setDynamicTime(new Date());
		dynamic.setRcount(0);
		System.out.println(dynamic);////////////
		backDynamicMapper.saveDynam(dynamic);
	}

	@Override
	public List<Dynamic> findAll() {
		List<Dynamic> dynamicList = backDynamicMapper.findAll();
		return dynamicList;
	}

}
