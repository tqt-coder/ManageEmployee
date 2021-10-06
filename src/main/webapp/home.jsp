<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
       
        #content{
            margin: 50px 20px;
        }
       
       
    </style>
</head>
<body>
    <div class="app">
        <%@include file="header.jsp" %>
        
        <h4><%= request.getAttribute("msg2") != null ? request.getAttribute("msg2"):"  " %></h4>
        <div id="content">
            <h2>Welcome to Employee Management System</h2>
        </div>
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>