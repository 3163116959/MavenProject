package service;

import java.util.List;

import entity.Student;

public interface StudentService {
		//查询全部学生
		public List<Student> queryAll();
		
		//根据学号查询
		List<Student> queryByStuId(String stuId);
		
		//根据班级名字查询
		List<Student> queryByClassName(String className);
		
		//根据姓名查询
		List<Student> queryBystuName(String stuName);
		
		//根据学号删除学生
		public int deleteBystuId(String stuId);
		
		//添加学生
		public int addStudent(Student student);
		
		//修改学生
		public int alterStudent(Student student);
		
		//查询全部学号
		public List<String> queryStuId();
}
