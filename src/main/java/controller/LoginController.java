package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import entity.Login;
import service.impl.LoginServiceImpl;

@Controller
public class LoginController {
	//控制器依赖service
	@Autowired
	@Qualifier("loginServiceImpl")
	private LoginServiceImpl loginServiceImpl;
	public void setLoginServiceImpl(LoginServiceImpl loginServiceImpl) {
		this.loginServiceImpl = loginServiceImpl;
	}
	
	//登陆
	@RequestMapping("testLogin")
	public String selectusers(Login login) {
//		Login login=new Login(name,password);
		int result = loginServiceImpl.selectusers(login);
		if(result==1) {
//			return "success";
			return "redirect:/testqueryAll "; 
		}else {
			return "login";
		}
	}
	
	//注册
	@RequestMapping("testRegist")
	public String addLogin(Login login) {
		//注册前先查询一下，是不是已经有这个id了
		int resultSelect = loginServiceImpl.selectusers(login);
		if(resultSelect==1) {
			return "false";
		}else {
			loginServiceImpl.addusers(login);
			return "login";
		}
	}
	
}
