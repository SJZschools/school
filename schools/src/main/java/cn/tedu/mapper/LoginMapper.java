package cn.tedu.mapper;

import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import cn.tedu.pojo.User;

public interface LoginMapper {

	User findUser(String username);

}
