package entity;

public class Login {
	private String name;
	private String password;
	
	//get set方法
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	//构造方法
	public Login() {
		super();
	}
	public Login(String name, String password) {
		super();
		this.name = name;
		this.password = password;
	}
	
	//toString
	@Override
	public String toString() {
		return "Login [name=" + name + ", password=" + password + "]";
	}
}
