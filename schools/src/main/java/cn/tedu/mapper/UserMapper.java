package cn.tedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tedu.pojo.User;

public interface UserMapper {
	
	@Select("select * from user_s where id=#{userId}")
	public User findUserById(String userId);
	@Update("update user_s set nickname=#{user.nickname} where id=#{user.id}")
	public void updateUserNickname(String nickname);
	
	@Select("select h_id from u_h_p where u_id=#{userId}")
	public List<String> findHabitIdList(String userId);

}
