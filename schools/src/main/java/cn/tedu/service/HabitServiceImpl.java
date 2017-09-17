package cn.tedu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import cn.tedu.mapper.HabitMapper;
import cn.tedu.pojo.Habit;
@Service
public class HabitServiceImpl implements HabitService {
	@Autowired
	private HabitMapper habitMapper;

	@Override
	@Transactional(propagation=Propagation.REQUIRED)

	public Habit findHabitById(String userId) {
		return habitMapper.findHabitById(userId);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public void updateHabit(Habit habit) {
		habitMapper.updateHabit(habit);
	}

	@Override
	@Transactional(propagation=Propagation.REQUIRED)
	public List<Habit> findAll() {
		return habitMapper.findAll();
	}

}
