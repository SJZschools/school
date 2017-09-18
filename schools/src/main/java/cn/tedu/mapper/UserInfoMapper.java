package cn.tedu.mapper;



import org.apache.ibatis.annotations.Select;

import cn.tedu.pojo.UserInfo;


public interface UserInfoMapper {
	
	public void updateself(UserInfo userInfo);
	
	@Select("select * from user_info where id=#{userId}")
	public UserInfo findUserInfoById(String userId);
	
}
