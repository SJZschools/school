package cn.tedu.service;

import java.util.List;

import cn.tedu.pojo.Habit;

public interface HabitService {

	public Habit findHabitById(String userId);

	public void updateHabit(Habit habit);

	public List<Habit> findAll();

}
