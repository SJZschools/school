package cn.tedu.mapper;

import java.util.List;

import cn.tedu.pojo.Advice;

public interface BackAdviceMapper {

	public abstract void saveAdvice(Advice advice);

	public abstract List<Advice> findAll();

}
