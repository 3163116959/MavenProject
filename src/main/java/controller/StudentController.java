package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import entity.Student;
import service.impl.StudentServiceImpl;

@Controller
public class StudentController {
	//controller调用service
	@Autowired
	@Qualifier("studentServiceImpl")
	private StudentServiceImpl studentServiceImpl;
	
	//查询全部学生
	@RequestMapping("testqueryAll")
	public ModelAndView queryAll() {
		List<Student> students = studentServiceImpl.queryAll();
		ModelAndView modelAndView = new ModelAndView("success");
		modelAndView.addObject("students", students);
		return modelAndView;
	}
	
	//根据学号查询学生
	@RequestMapping("testqueryByStuId")
	public ModelAndView queryBystuId(@RequestParam("query")String stuId) {
		List<Student> queryByStuId = studentServiceImpl.queryByStuId(stuId);
		ModelAndView mv = new ModelAndView("success");
		mv.addObject("students", queryByStuId);
		
		return mv;
	}
	
	//根据班级名字查询学生
	@RequestMapping("testqueryByClassName")
	public ModelAndView queryByClassName(@RequestParam("query")String className) {
		List<Student> queryByClassName = studentServiceImpl.queryByClassName(className);
		ModelAndView mv=new ModelAndView("success");
		mv.addObject("students", queryByClassName);
		
		return mv;
	}
	
	//根据姓名查询学生
	@RequestMapping("testqueryBystuName")
	public ModelAndView queryBystuName(@RequestParam("query")String stuName) {
		List<Student> queryBystuName = studentServiceImpl.queryBystuName(stuName);
		ModelAndView mv= new ModelAndView("success");
		mv.addObject("students", queryBystuName);
		return mv;
	}
	
	//根据学号删除学生
	@RequestMapping("testdeleteBystuId")
	public String deleteBystuId(@RequestParam("delete")String stuId) {
		if(studentServiceImpl.queryByStuId(stuId)!=null) {
			studentServiceImpl.deleteBystuId(stuId);
		}
		return "redirect:testqueryAll";
	}
	
	//添加学生
	@RequestMapping("testAddStudent")
	public String addStudent(Student student) {
		studentServiceImpl.addStudent(student);
		return "redirect:testqueryAll";
	}
	
	//修改学生
	@RequestMapping("testAlter")
	public String alterStudent(@RequestParam("stuId")String stuId,@RequestParam("stuName")String stuName,@RequestParam("stuAge")int stuAge,@RequestParam("stuSex")String stuSex,@RequestParam("homeAddress")String homeAddress,@RequestParam("className")String className) {
		
			Student student=new Student(stuId,stuName,stuAge,stuSex,homeAddress,className);
			studentServiceImpl.alterStudent(student);
			return "redirect:testqueryAll";
		
	}
	//查询全部学号
	@RequestMapping("ToAlert")
		public ModelAndView AllstuId() {
			List<String> querystuId = studentServiceImpl.queryStuId();
			ModelAndView mv=new ModelAndView("alert");
			mv.addObject("stuIds", querystuId);
			return mv;
		}	
}
