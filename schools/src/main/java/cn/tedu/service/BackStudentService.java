package cn.tedu.service;

import org.springframework.stereotype.Service;

@Service
public interface BackStudentService {
<<<<<<< HEAD

=======
	public List<User> findAllStudent(Integer nowPage, Integer pageCount);

	public void addBackStudent(User user);

	public void addBackStudentInfo(UserInfo userInfo);

	public User updateBackStudent(String id);

	public void deleteOneBackStudent(String id);

	public void deleteAllStudent(String ids);

	public int findCount();

	
>>>>>>> master
}
