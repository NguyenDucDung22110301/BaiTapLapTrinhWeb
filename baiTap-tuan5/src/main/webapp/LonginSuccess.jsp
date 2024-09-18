<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Đăng Nhập Thành Công</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
    body {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-color: #f8f9fa;
        font-family: Arial, sans-serif;
    }
    .container {
        background-color: white;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 500px;
        width: 100%;
    }
    .container h1 {
        font-size: 24px;
        color: #333;
        margin-bottom: 20px;
    }
    .container p {
        font-size: 18px;
        color: #555;
        margin-bottom: 15px;
    }
    .container a {
        color: #007bff;
        text-decoration: none;
    }
    .container a:hover {
        text-decoration: underline;
    }
    .btn-custom {
        margin-top: 10px;
    }
</style>
</head>
<body>
    <div class="container">
        <%
            String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
            Object ses = session.getAttribute("account");
            User reg = null;
            if (ses != null) {
                reg = (User) ses;
            }
        %>
        <h1>Bạn đã đăng nhập thành công</h1>
        <% if (reg != null) { %>
            <p>Chào mừng anh <%= reg.getUserName() %></p>
            <p>Bạn có muốn đăng xuất?
                <a href="dangXuat" class="btn btn-info btn-lg btn-custom">
                    <span class="glyphicon glyphicon-log-out"></span> Log out
                </a>
            </p>
            <p>Bạn có muốn đổi mật khẩu?
                <a href="ChangePass.jsp" class="btn btn-info btn-lg btn-custom">
                    <span class="glyphicon glyphicon-log-out"></span> Đổi mật khẩu
                </a>
            </p>
        <% } %>
    </div>
</body>
</html>
