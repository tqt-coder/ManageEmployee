<%@page import="controller.ListEmployee"%>
<%@page import="controller.Employee"%>
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
<body>
	<jsp:useBean id="em" class="controller.Employee" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="em"/>
	<td><jsp:getProperty property="nameEmployee" name="em"/></td>
	
	<% 
		request.setAttribute("msg2", "Thêm thành công");
		String name = request.getParameter("nameEmployee");
		String gender = request.getParameter("gender");
		String date = request.getParameter("dateOfBirthday");
		String department = request.getParameter("department");
		Employee e1 = new Employee(name,gender,date,department);
		ListEmployee.container.add(e1);
		RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
		rd.forward(request, response);
	%>
         
</body>
</html>