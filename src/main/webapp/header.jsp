<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Home</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        #header{    
            position: fix;
            top: 0;
            left: 0;
            right: 0;  
            display: flex;
            justify-content: space-between;
            background-color: #333;
            height: 100px;
            padding: 10px 20px;
        }
        .header-handler{
            flex: 2;
            display: flex;
            justify-content: space-around;
            margin-right: 80px;
        }
        .icon-home{
            margin-right: 5px;
        }
        .header-handler a{
            text-decoration: none;
            color: #ccc;
            font-size: 20px;
        }
        .header-handler a:first-child{
            color: red;
        }
        .header-infor{
            flex: 1;
            display: flex;
            justify-content: space-around;
            margin-left: 100px;
        }
        .header-infor a{
            text-decoration: none;
            color: #ccc;
            font-size: 20px;
        }
        .header-infor a:first-child{
            color: yellow;
        }
       
    </style>
</head>
<body>
    <div class="app">
        <div id="header">
            <div class="header-handler">
                <a href="/WebJSP/home.jsp" class="header-handler__home"><i class="icon-home  fas fa-home"></i>Home Page</a>
                <a href="/WebJSP/addEmployee.jsp" class="header-handler__add">Add an Employee</a>
                <a href="/WebJSP/listEmployee.jsp" class="header-handler__list">List Employees</a>
            </div>
            <div class="header-infor">
                <a href="/WebJSP/index.jsp" class="header-login"><i class="icon-home fas fa-user-circle"></i>TuanTran</a>
                <a href="/WebJSP/logout.jsp" class="logout"><i class="icon-home fas fa-user-times"></i>Logout</a>
            </div>
        </div>
    </div>
</body>
</html>