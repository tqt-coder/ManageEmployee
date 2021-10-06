<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        *{
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        .form-employee{
           width: 400px;
            padding: 40px 80px;
        }
        .employee-tilte{
            font-size: 24px;
        }
        .employee-infor{
            display: block;
        }
        .employee-detail{
            width: 300px;
            height: 40px;
            padding: 10px;
            font-size: 16px;
            outline: none;
        }
        .employee-infor{
            margin: 10px 0;
            font-size: 16px;
        }
        .employee-option{
            width: 300px;
            height: 40px;
            padding: 0 10px;
            outline: none;
        }
        .employee-detail__gender{
            margin-left:10px;
            margin-right: 3px;
        }
        .employee-infor__gender{
            margin: 10px 20px 0 0;
            display: inline-block;
        }
        .employee-btn{
            margin: 20px;
            width: 200px;
            height: 40px;
            background-color: rgb(75, 75, 194);
            border-color: transparent;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <div class="app">
    <%@include file="header.jsp" %>
        <form action="Handler.jsp" class="form-employee" method="Post">
            <h2 class="employee-tilte">Add an Employee</h2>
            <span class="employee-infor">Name:</span>
            <input type="text" name="nameEmployee"
            class="employee-detail" placeholder="Enter name">
            <span class="employee-infor__gender">Gender:</span>
            <input type="radio" id="gender" value="Male" name="gender"
            class="employee-detail__gender">Male
            <input type="radio" id="gender" value="Female" name="gender"
            class="employee-detail__gender">Female
            <span class="employee-infor">Date of birth:</span>
            <input type="text" name="dateOfBirthday"
            class="employee-detail" placeholder="dd/mm/yyyy">
            <span class="employee-infor">Department</span>
            <select class="employee-option" name="department">
                <option value="FA">FA</option>
                <option value="FSU1">FSU1</option>
                <option value="FSU2">FSU2</option>
                <option value="FSU3">FSU3</option>
                <option value="FSU4">FSU4</option>
            </select>
            <input type="submit" class="employee-btn" value="Add employee">
            <% request.setAttribute("id", 1); %>
        </form>
        <%@include file="footer.jsp" %>
    </div>
</body>
</html>