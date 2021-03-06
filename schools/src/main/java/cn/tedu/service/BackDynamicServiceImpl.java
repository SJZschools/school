package cn.tedu.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.BackDynamicMapper;
import cn.tedu.pojo.Dynamic;
import cn.tedu.pojo.User;

@Service
public class BackDynamicServiceImpl implements BackDynamicService {
	@Autowired
	private BackDynamicMapper backDynamicMapper;
	
	public void saveDynam(Dynamic dynamic ,User user ) {
		
		dynamic.setRid(user.getId());
		dynamic.setRname(user.getNickname());
		String id = UUID.randomUUID().toString();
		dynamic.setDynamicId(id);
		dynamic.setDynamicTime(new Date());
		dynamic.setRcount(0);
		backDynamicMapper.saveDynam(dynamic);
	}

	@Override
	public List<Dynamic> findAll() {
		List<Dynamic> dynamicList = backDynamicMapper.findAll();
		return dynamicList;
	}

	@Override
	public void deleteDynamById(String dynamicId) {
		String[] ids = dynamicId.split(",");
		if(ids.length>=1){
			for(String id : ids){
				if(id != null && !"".equals(id)){
					backDynamicMapper.deleteDynamById(id);
				}
			}
		}
		
	}

}
