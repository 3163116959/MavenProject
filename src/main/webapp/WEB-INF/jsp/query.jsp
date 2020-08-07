<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>查询页面</title>
<link rel="stylesheet" type="text/css" href="css/normalize1.css" />
		<link rel="stylesheet" type="text/css" href="font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/component.css" />	
</head>
<body>
	<div class="container">
			<section class="content bgcolor-1">
					<header class="htmleaf-header">
			<h1>查询页面</h1>
		</header>
				<form action="testqueryByStuId" method="post">
				<span class="input input--haruki">
					<input class="input__field input__field--haruki" type="text" id="input-1" name="query"/>
					<label class="input__label input__label--haruki" for="input-1">
						<span class="input__label-content input__label-content--haruki">学 号</span>
					</label>
				</span><br/>
						<input type="submit" value="查询">
				</form>
				<form action="testqueryBystuName" method="post">
				<span class="input input--haruki">
					<input class="input__field input__field--haruki" type="text" id="input-3" name="query"/>
					<label class="input__label input__label--haruki" for="input-3">
						<span class="input__label-content input__label-content--haruki">姓 名</span>
					</label>
				</span><br/>
						<input type="submit" value="查询">
				</form>
				<form action="testqueryByClassName" method="post">
				<span class="input input--haruki">
					<input class="input__field input__field--haruki" type="text" id="input-2" name="query"/>
					<label class="input__label input__label--haruki" for="input-2">
						<span class="input__label-content input__label-content--haruki">班 级 名 字</span>
					</label>
				</span><br/>
						<input type="submit" value="查询">
				</form>
			</section>
		</div>
</body>
</html>