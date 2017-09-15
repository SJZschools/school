package cn.tedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;

import cn.tedu.pojo.Bbs;
import cn.tedu.pojo.User;

public interface UserMapper {
	
	@Insert("insert into bbs(bss_id,creat_id,bss_title,bss_class,bss_context) "
			+ "values(#{bbsId},#{creatId},#{bssTitle},#{bssClass},#{bssContext})")
	public void saveBBS(Bbs bbs);
}
