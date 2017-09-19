package cn.tedu.mapper;

import org.apache.ibatis.annotations.Param;

import cn.tedu.pojo.Great;

public interface GreatMapper {

	public abstract Great findGreatByTwoId(@Param(value="bbsId")String id, @Param(value="userId")String userId);

	public abstract int deleteGreatByUid(String userId);

	public abstract void saveGreatByTwoId(@Param(value="bbsId")String id,@Param(value="userId")String userId);

	public abstract void updateGreat(String bbsId);

}
