package cn.tedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.tedu.pojo.Bbs;

public interface BbsMapper {
	//查询所有Bbs
	public List<Bbs> findAll();

	//根据creatTime查询所有Bbs
	public List<Bbs> findAllByTime(@Param("nowPage")Integer nowPage, @Param("pageCount")Integer pageCount);
	
	//根据bssId（帖子id）查询这条数据的详细信息
	public Bbs findAllByBbsId(String bssId);
	
	//根据creatId（创建人id）查询相应的Bbs
	public List<Bbs> findAllByCreatId();
	
	//根据bssClass（标签）查询相应的Bbs
//	public List<Bbs> findAllByClass(String bssClass);
	
	//帖子发布
	@Insert("insert into bbs(bss_id,creat_id,bss_title,bss_class,bss_context) "
			+ "values(#{bssId},#{creatId},#{bssTitle},#{bssClass},#{bssContext})")
	public void saveBBS(Bbs bbs);


	//查询帖子数量
	public int findCount();

	//查询所有
	public List<Bbs> findAllBbs(@Param("nowPage")Integer nowPage, @Param("pageCount")Integer pageCount);

	/**
	 * 根据帖子Id 更新点赞次数
	 * @param bbsId
	 * @param count 
	 */
	public void updateGreat(@Param(value="bbsId")String bbsId,@Param(value="count")int count);

	
	/**
	 * 查询帖子数量
	 * @return
	 */
	public Bbs findBbsFirst();

	
}
