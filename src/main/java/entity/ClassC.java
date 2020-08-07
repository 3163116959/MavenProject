package entity;

public class ClassC {
	private String classId;
	private String className;
	
	//get set方法
	public String getClassId() {
		return classId;
	}
	public void setClassId(String classId) {
		this.classId = classId;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	
	//构造方法
	public ClassC(String classId, String className) {
		super();
		this.classId = classId;
		this.className = className;
	}
	public ClassC() {
		super();
	}
	
	//toString
	@Override
	public String toString() {
		return "ClassC [classId=" + classId + ", className=" + className + "]";
	}
}
