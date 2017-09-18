package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;

public interface BackBBsService {

	int findCount();

	List<User> findAllBBs(Integer nowPage, int pageCount);

	Bbs findBBsById(String bbsId);

	void deleteAllB(String ids);

}
