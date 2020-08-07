package mapper;

import java.util.List;

import entity.Student;

public interface StudentMapper {
	//查询全部学生
	public List<Student> queryAll();
	
	//根据学号查询
	public List<Student> queryByStuId(String stuId);
	
	//根据班级查询学生
	public List<Student> queryByClassName(String className);
	
	//根据姓名查询学生
	public List<Student> queryBystuName(String stuName);
	
	//根据学号删除学生
	public int deleteBystuId(String stuId);
	
	//添加学生
	public int addStudent(Student student);
	
	//修改学生
	public int alterStudent(Student student);
	
	//查询全部学号
	public List<String> queryStuId();
}
