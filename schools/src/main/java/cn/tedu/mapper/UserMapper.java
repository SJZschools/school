package cn.tedu.mapper;

import org.apache.ibatis.annotations.Select;

import cn.tedu.pojo.User;

public interface UserMapper {
	
	@Select("select * from user_s where id=#{userId}")
	public User findUserById(String userId);

}
