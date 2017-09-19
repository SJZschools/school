package cn.tedu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.GreatMapper;
import cn.tedu.pojo.Great;

@Service
public class GreatServiceImpl implements GreatService{
	@Autowired
	private GreatMapper greatMapper;
	
	@Override
	public String findGreat(String id, String userId) {
		Great great = greatMapper.findGreatByTwoId(id , userId);
		if(great != null){
			int i = greatMapper.deleteGreatByUid(userId);
			return "no";
		}
		greatMapper.saveGreatByTwoId(id , userId);
		return "ok";
	}

}
