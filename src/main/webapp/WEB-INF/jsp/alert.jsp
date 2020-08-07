<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>修改页面</title>
<link rel="stylesheet" type="text/css" href="css/normalize1.css" />
		<link rel="stylesheet" type="text/css" href="font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />	
<script type="text/javascript">
	function check(){
		var isPass = false;
		
		var stuId = document.getElementsByName("stuId")[0].value;
		
		var stuName = document.getElementsByName("stuName")[0].value;
		
		var stuAge = document.getElementsByName("stuAge")[0].value;

		var stuSex = document.getElementsByName("stuSex")[0].value;
		
		var homeAddress = document.getElementsByName("homeAddress")[0].value;
		
		var className = document.getElementsByName("className")[0].value;
		<c:forEach items="${stuIds}" var="stuId"> 
			//alert(stuId==${stuId});
			if(stuId==${stuId}){
				isPass=true;
			}
		</c:forEach>
		
		if( isPass != true){
			alert("该学号不存在");
		}

		var length = stuName.length;
		if(length<=0){
			isPass=false;
			alert("名字不能为空");
		}else{
			isPass=true;
		}
		
		length = stuAge.length;
		if(length<=0){
			isPass=false;
			alert("年龄不能为空");
		}else{
			isPass=true;
		}
		
		 length = stuSex.length;
		if(length<=0){
			isPass=false;
			alert("性别不能为空");
		}else{
			isPass=true;
		}
		
		length = homeAddress.length;
		if(length<=0){
			isPass=false;
			alert("家庭住址不能为空");
		}else{
			isPass=true;
		}
		
		length = className.length;
		if(length<=0 || className!="软件工程1班" && className!="软件工程2班"){
			isPass=false;
			alert("班级只能为软件工程1班或软件工程2班");
		} else{
			isPass=true;
		}
		
		return isPass;
	}
</script>
</head>
<body>
	
	<!-- <form action="testAlter" method="post" onSubmit="return check()">
		被修改人的学号:<input type="text" name="stuId"><br/>
		被修改人的姓名:<input type="text" name="stuName"><br/>
		被修改人的年龄:<input type="text" name="stuAge"><br/>
		被修改人的性别:<input type="text" name="stuSex"><br/>
		被修改人的家庭住址:<input type="text" name="homeAddress"><br/>
		被修改人的班级名称:<input type="text" name="className"><br/>
	<input type="submit" value="提交">
	</form> -->
	<div class="container">
		<section class="content bgcolor-1">
		<header class="htmleaf-header">
			<h1>修改页面</h1>
		</header>
			<form action="testAlter" method="post" onSubmit="return check()">
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
		
		<input type="submit" value="修改">	
	</form>
		</section>
	</div>
</body>
</body>
</html>