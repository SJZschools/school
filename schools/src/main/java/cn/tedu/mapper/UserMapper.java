package cn.tedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.tedu.pojo.User;

public interface UserMapper {
	
	@Select("select * from user_s where id=#{userId}")
	public User findUserById(String userId);
	
	public void updateUserNickname(User user);
	
	@Select("select h_id from u_h_p where u_id=#{userId}")
	public List<String> findHabitIdList(String userId);

	
	@Insert("insert into u_h_p (u_id,h_id) values (#{id},#{s})")
	public void addHU(@Param("id")String id, @Param("s")String s);

	public void updateUserPassword(User user);


}
