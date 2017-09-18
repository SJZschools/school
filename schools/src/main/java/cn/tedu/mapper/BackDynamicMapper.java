package cn.tedu.mapper;

import java.util.List;

import cn.tedu.pojo.Dynamic;

public interface BackDynamicMapper {

	void saveDynam(Dynamic dynamic);

	List<Dynamic> findAll();

	void deleteDynamById(String dynamicId);
	
}
