package cn.tedu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.tedu.pojo.Habit;

public interface HabitMapper {
	
	public Habit findHabitById(String userId);

	public void updateHabit(Habit habit);

	@Select("select * from habit")
	public List<Habit> findAll();

}
