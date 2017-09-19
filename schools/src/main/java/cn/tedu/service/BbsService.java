package cn.tedu.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import cn.tedu.pojo.Bbs;

public interface BbsService {
	//根据recount（评论数量）查询所有Bbs
	public List<Bbs> findAll();
	
	//根据creatTime（创建时间）查询所有Bbs
	public List<Bbs> findAllByTime();

	//根据bssId（帖子id）查询这条数据的详细信息
	public Bbs findAllByBbsId(String bssId);
	
	//根据bssClass（标签）查询相应的Bbs
//	public List<Bbs> findAllByClass(String bssClass);
	
	//帖子发布
	public void saveBBS(Bbs bbs);
<<<<<<< HEAD

=======
	public void uploadObject(MultipartFile mFile);
>>>>>>> dml
	
}
