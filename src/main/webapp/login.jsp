<%@page import="model.HandlerPass"%>
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
		String pass = request.getParameter("pass");
		String name = request.getParameter("username");
		if(pass.equals(HandlerPass.pass)){
			HttpSession session1 = request.getSession(true);
			session1.setAttribute("sessionName", name);
			
			RequestDispatcher rd = request.getRequestDispatcher("home.jsp");
			rd.forward(request, response);
		}
		else{
			request.setAttribute("msg", "Login failed");
			
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
	%>
</body>
</html>