<%@page import="controller.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page import="controller.ListEmployee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		HttpSession session2 = request.getSession(false);
		session2.removeAttribute("sessionName");
		HttpSession se = request.getSession();
		ListEmployee.container = new ArrayList<Employee>();
		RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
		rd.forward(request, response);
	%>
</body>
</html>