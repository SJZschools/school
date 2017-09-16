package cn.tedu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tedu.mapper.HabitMapper;
import cn.tedu.pojo.Habit;
@Service
public class HabitServiceImpl implements HabitService {
	@Autowired
	private HabitMapper habitMapper;

	@Override
	public Habit findHabitById(String userId) {
		return habitMapper.findHabitById(userId);
	}

}
