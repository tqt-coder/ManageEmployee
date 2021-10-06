<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <style>
        .form-compulsory{
            color: red;
        }
        .form-data{
            display: block;
            width: 300px;
            height: 35px;
            outline: none;
        }
        td{
            min-width: 120px;
            padding: 6px 20px ;
        }
        tr{
            padding: 50px 0;
        }
        .form-table__btn{
            width: 100px;
            height: 35px;
            display: block;
            background-color: rgba(0, 0, 255,0.4);
            border-color: transparent;
            color: #fff;
        }
        .form-table__link{
            text-decoration: none;
        }
    </style>
</head>

<body>
    <div class="form-login">
    	<h4><%= request.getAttribute("msg") != null ? request.getAttribute("msg"): " " %></h4>
        <form action="/WebJSP/login.jsp" method="POST" class="form-wrap">
            <table class="form-table">
                <tr>
                    <td>USERNAME <span class="form-compulsory">*</span> </td>
                    <td><input class="form-data" type="text" name="username" placeholder="Enter user name"></td>
                </tr>
                <tr>
                    <td>PASSWORD <span class="form-compulsory">*</span> </td>
                    <td><input class="form-data" type="password" name="pass" placeholder="Enter password"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" class="form-table__btn" value="LOGIN"></td>     
                    <td><a class="form-table__link" href="#">Click here to register</a></td>
                </tr>
            </table>

        </form>
    </div>
</body>

</html>