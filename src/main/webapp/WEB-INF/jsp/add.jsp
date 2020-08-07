<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>增加学生页面</title>
<link rel="stylesheet" type="text/css" href="css/normalize1.css" />
		<link rel="stylesheet" type="text/css" href="font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />	
<script type="text/javascript">
	function check(){
		
		 var stuId = document.getElementsByName("stuId")[0].value;
		
		var stuName = document.getElementsByName("stuName")[0].value;
		
		var stuAge = document.getElementsByName("stuAge")[0].value;

		var stuSex = document.getElementsByName("stuSex")[0].value;
		
		var homeAddress = document.getElementsByName("homeAddress")[0].value;
		
		var className = document.getElementsByName("className")[0].value;
		
		var isPass = true;
		
		var length=stuId.length;
		
		if(length<=0 || length>6){
			isPass = false;
			alert("名字长度在0~6之间");
		}
		 
		length = stuName.length;
		if(length<=0){
			isPass=false;
			alert("名字不能为空");
		}
		
		length = stuAge.length;
		if(length<=0){
			isPass=false;
			alert("年龄不能为空");
		}
		
		 length = stuSex.length;
		if(length<=0){
			isPass=false;
			alert("性别不能为空");
		}
		
		length = homeAddress.length;
		if(length<=0){
			isPass=false;
			alert("家庭住址不能为空");
		}
		
		length = className.length;
		if(length<=0 || className!="软件工程1班" && className!="软件工程2班"){
			isPass=false;
			alert("班级只能为软件工程1班或软件工程2班");
		} 
		
		return isPass;
	}
		
</script>
</head>
<body>
		<div class="container">
		<section class="content bgcolor-1">
				<header class="htmleaf-header">
			<h1>增加页面</h1>
		</header>
	<form action="testAddStudent" method="post" onSubmit="return check()">
		<span class="input input--haruki">
			<input class="input__field input__field--haruki" type="text" id="input-1" name="stuId" />
			<label class="input__label input__label--haruki" for="input-1">
				<span class="input__label-content input__label-content--haruki">学 号</span>
			</label>
		</span><br/>
		<span class="input input--haruki">
			<input class="input__field input__field--haruki" type="text" id="input-1" name="stuName" />
			<label class="input__label input__label--haruki" for="input-1">
				<span class="input__label-content input__label-content--haruki">姓 名</span>
			</label>
		</span><br/>
		<span class="input input--haruki">
			<input class="input__field input__field--haruki" type="text" id="input-1" name="stuAge" />
			<label class="input__label input__label--haruki" for="input-1">
				<span class="input__label-content input__label-content--haruki">年  龄</span>
			</label>
		</span><br/>
		<span class="input input--haruki">
			<input class="input__field input__field--haruki" type="text" id="input-1" name="stuSex" />
			<label class="input__label input__label--haruki" for="input-1">
				<span class="input__label-content input__label-content--haruki">性  别</span>
			</label>
		</span><br/>
		<span class="input input--haruki">
			<input class="input__field input__field--haruki" type="text" id="input-1" name="homeAddress" />
			<label class="input__label input__label--haruki" for="input-1">
				<span class="input__label-content input__label-content--haruki">家  庭  住  址</span>
			</label>
		</span><br/>
		<span class="input input--haruki">
			<input class="input__field input__field--haruki" type="text" id="input-1" name="className" />
			<label class="input__label input__label--haruki" for="input-1">
				<span class="input__label-content input__label-content--haruki">班  级  名  称</span>
			</label>
		</span><br/>
		
		<input type="submit" value="提交">	
	</form>
		</section>
		</div>
</body>
</html>