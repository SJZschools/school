package cn.tedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;

public interface BackBBsMapper {

	int findCount();

	List<User> findAllBBs(@Param("nowPaget")Integer nowPaget, @Param("pageCountt")Integer pageCountt);

	Bbs findBBsById(String bbsId);

	void deleteAllB(String id);

	void deleteAllG(String id);

	void deleteAllBo(String id);

	void deleteAllR(String id);

}
