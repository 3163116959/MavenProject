<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>好好登陆，别瞎看</title>
<link type="text/css" rel="stylesheet" href="css/style.css"></link>
<script type="text/javascript">
	function check(){
		var name1 = document.getElementsByName("name")[1].value;
		var password1 = document.getElementsByName("password")[1].value;
		
		isPass=true;
		
		var length=name1.length;
		if(length<=0 || length>6){
			isPass=false;
			alert("注册名字不能为空且长度不能大于6");
		}
		
		length=password1.length
		if(length<=0){
			isPass=false;
			alert("注册密码不能为空");
		}
		
		return isPass;
	}
	
	function check1(){
		var name = document.getElementsByName("name")[0].value;
		var password = document.getElementsByName("password")[0].value;
	
		isPass=true;
		
		var length=name.length;
		if(length<=0){
			isPass=false;
			alert("登陆名字不能为空");
		}
		length=password.length
		if(length<=0){
			isPass=false;
			alert("登陆密码不能为空");
		}
		
		return isPass;
	}
</script>
</head>
 <body>

 <div class="dowebok">
        <div class="form sign-in">
            <h2>欢迎回来</h2>
          <form action="testLogin" method="post" onSubmit="return check1()"> 
          	<label>
                <span>用户名</span>
                <input type="text" name="name"/>
            </label>
            <label>
                <span>密码</span>
                <input type="password" name="password"/>
            </label>
           <button type="submit" class="submit"> 登 陆
            </button>
          </form>
            
        </div>
      
        <div class="sub-cont">
            <div class="img">
                <div class="img__text m--up">
                    <h2>还未注册？</h2>
                    <p>立即注册，发现大量机会！</p>
                </div>
                <div class="img__text m--in">
                    <h2>已有帐号？</h2>
                    <p>有帐号就登录吧，好久不见了！</p>
                </div>
                <div class="img__btn">
                    <span class="m--up">注 册</span>
                    <span class="m--in">登 录</span>
                </div>
            </div>
            <div class="form sign-up">
                <h2>立即注册</h2>
                <form action="testRegist" method="post" onSubmit="return check()">
                <label>
                    <span>用户名</span>
                    <input type="text" name="name"/>
                </label>
                <label>
                    <span>密码</span>
                    <input type="password" name="password"/>
                </label>
                <button type="submit" class="submit">注 册</button>
                </form>
            </div>
        </div>
    </div>
    <script src="js/script.js"></script>
 </body>    
</html>