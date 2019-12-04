<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<base href = "/ssm-exam/">
<script type="text/javascript" src = "js1/jquery.min.js"></script>
<script type="text/javascript" src  ="js1/bootstrap.min.js"></script>
<link type ="text/css" rel ="stylesheet" href = "css1/bootstrap.css">
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		$(function findAll(){
			$.ajax({
				url:"getAllEmp.do",
				type:"post",
				success:function(data){
					if (data == ""){
						alert("查询失败");
						$("#table1").fadeOut(0);
					}else{
						$("#table1").fadeIn(0);
						var html = "";
						for (var i = 0;i<data.length;i++){
							html = html+"<tr><td>"
							+data[i].id+
							"</td><td>"
							+data[i].eno+
							"</td><td>"
							+data[i].epassword+
							"</td><td>"
							+data[i].eage+
							"</td><td>"
							+data[i].esalary+
							"</td></tr>"
						}
					$("#table1").append($(html))
					}
				}
			});
		})	
	
	
	</script>


	<h1 style = "margin-left:30px;">欢迎你 ${emp.eno }</h1>
	<hr>
	<h3 style = "margin-left:30px;">员工列表<h3>
	
	<table id ="table1" class = "table table table-striped table-hover table-bordered" style ="width:800px;margin-left:30px;">
		<tr>
			<th>eno</th>
			<th>epassword</th>
			<th>eage</th>
			<th>email</th>
			<th>esalary</th>
			<th>esalary</th>
			<th>esalary</th>
			<th>esalary</th>
		</tr>	
	
	</table>
	
	
	
	
	
</body>
</html>