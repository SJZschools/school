package cn.tedu.mapper;

import org.apache.ibatis.annotations.Select;

import cn.tedu.pojo.Habit;

public interface HabitMapper {
	
	public Habit findHabitById(String userId);

}
