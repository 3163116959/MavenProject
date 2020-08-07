<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<style type="text/css">
		.box{
			width: 20px;
			height: 20px;
			padding: 2px;
			border:1px solid #ccc;
			border-radius: 2px;
		}
		a {
			text-decoration:none;
			text-decoration:none; 
			text-decoration:none;
			text-decoration:none;
		}
	</style>
</head>
<body>
	<div class="htmleaf-container">
		<header class="htmleaf-header">
			<h1>学生管理</h1>
		</header>
		<div class="container">
			<div class="row">
				<div class="col-md-12" style="padding:2em 0;">
					<div class="table-responsive">
						<table class="table table-bordered table-striped" id="mytable">
						    <thead>
						      <tr>
						        <th>学号</th>
								<th>姓名</th>
								<th>年龄</th>
								<th>性别</th>
								<th>家庭住址</th>
								<th>班级</th>
								<th>操作</th>
						      </tr>
						    </thead>
						    <tbody>
						      <c:forEach items="${students}" var="student">
								<tr>
									<td>${student.stuId}</td>
									<td>${student.stuName}</td>
									<td>${student.stuAge}</td>
									<td>${student.stuSex}</td>
									<td>${student.homeAddress}</td>
									<td>${student.className}</td>
									<td> <a style="cursor:pointer" href="ToAdd">增加</a>     <a style="cursor:pointer" href="ToDelete">删除</a>     <a style="cursor:pointer" href="ToAlert">修改</a>    <a style="cursor:pointer" href="ToQuery">查询</a> </td>
								</tr>
							  </c:forEach>
						    </tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>	
	<script src="http://cdn.bootcss.com/jquery/1.11.0/jquery.min.js" type="text/javascript"></script>
	<script>window.jQuery || document.write('<script src="js/jquery-1.11.0.min.js"><\/script>')</script>
</body>
</html>