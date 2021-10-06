<%@page import="controller.ListEmployee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
</head>
<style>
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.app2 {
	padding: 40px 80px;
}

.list-title {
	font-size: 24px;
}

table {
	margin: 50px 0;
	border-collapse: collapse;
}

th, td, tr {
	border: 1.4px solid #000;
}

tr {
	height: 50px;
}

td, th {
	width: 200px;
	text-align: center;
}

td:first-child, th:first-child {
	width: 80px;
}
</style>
<body>
	<%@include file="header.jsp"%>
	<div class="app2">
		<h2 class="list-title">List Employee</h2>
		<table>
			<tr>
				<th>ID</th>
				<th>Employee Name</th>
				<th>Gender</th>
				<th>Date of birth</th>
				<th>Department Name</th>
			</tr>

			<% for(int i=0 ; i< ListEmployee.container.size();i++){
        	   %>
			<tr>
				<td><%= i+1 %></td>
				<td><%= ListEmployee.container.get(i).getNameEmployee() %></td>
				<td><%= ListEmployee.container.get(i).getGender() %></td>
				<td><%= ListEmployee.container.get(i).getDateOfBirthday() %></td>
				<td><%= ListEmployee.container.get(i).getDepartment() %></td>
			</tr>
			<% } %>
		</table>

	</div>
	<%@include file="footer.jsp"%>
</body>
</html>