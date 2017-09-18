package cn.tedu.mapper;

import java.util.List;

import cn.tedu.pojo.Advice;

public interface BackAdviceMapper {

	public abstract void saveAdvice(Advice advice);

	public abstract List<Advice> findAll();

	public abstract Advice findAllById(String id);

	public abstract void deleteAdviceById(String id);

}
