package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.BackBBsMapper;
import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;
@Service
public class BackBBsServiceImpl implements BackBBsService {
	@Autowired
	private BackBBsMapper backBBsMapper;
	@Override
	public int findCount() {
		
		return backBBsMapper.findCount();
	}
	@Override
	public List<User> findAllBBs(Integer nowPage, int pageCount) {
		Integer nowPaget  = (nowPage-1)*10+1;
		Integer pageCountt = nowPaget+pageCount-1;
		return backBBsMapper.findAllBBs(nowPaget,pageCountt);
	}
	@Override
	//根据id查询帖子
	public Bbs findBBsById(String bbsId) {
		return backBBsMapper.findBBsById(bbsId);
	}
	@Override
	public void deleteAllB(String ids) {
		String[] idss = ids.split(",");
		// 用循环批量删除
		if(idss.length>=1){
			for(String id : idss){
				if(id != null && !"".equals(id)){
					backBBsMapper.deleteAllB(id);
					//删除该帖子的点赞表
					backBBsMapper.deleteAllG(id);
					//删除该帖子的评论表
					backBBsMapper.deleteAllBo(id);
					//删除该帖子的回复表
					backBBsMapper.deleteAllR(id);
				}
			}
		}
		
	}

}
