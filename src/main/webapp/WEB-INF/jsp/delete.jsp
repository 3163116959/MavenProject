<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>删除页面</title>
<link rel="stylesheet" type="text/css" href="css/normalize1.css" />
		<link rel="stylesheet" type="text/css" href="font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />	
<script type="text/javascript">
	function check(){
		
		var stuId = document.getElementsByName("delete")[0].value;
		
		var isPass = true;
		
		var length=stuId.length;
		
		if(length<=0 || length>6){
			isPass = false;
			alert("不能为空，且长度不能大于6");
		}
		
		return isPass;
		
	}
</script>	
</head>
<body>
	<div class="container">
		<section class="content bgcolor-1">
				<header class="htmleaf-header">
			<h1>删除页面</h1>
		</header>
			<form action="testdeleteBystuId" method="post" onSubmit="return check()">
				<span class="input input--haruki">
					<input class="input__field input__field--haruki" type="text" id="input-1" name="delete"/>
					<label class="input__label input__label--haruki" for="input-1">
						<span class="input__label-content input__label-content--haruki">学 号</span>
					</label>
				</span><br/>
						<input type="submit" value="删除">
				</form>
		</section>
	</div>
</body>
</html>