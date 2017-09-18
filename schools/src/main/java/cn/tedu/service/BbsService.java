package cn.tedu.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import cn.tedu.pojo.Bbs;

public interface BbsService {
	//查询所有
	public List<Bbs> findAll();
	//帖子发布
	public void saveBBS(Bbs bbs);
	public void uploadObject(MultipartFile mFile);
	
}
