<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">

</head>
<body>

<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div class="container">
    <h1>Welcome to Admin Dashboard</h1>
    
    <!-- Navigation Menu -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="#">Overview</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MVCProject/manage_users">Manage Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">Settings</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/MVCProject/logout">Logout</a>
            </li>
        </ul>
    </nav>

    <!-- Update Details Form -->
    <div class="mt-4">
        <h2>Update User Details</h2>
        <form action="/MVCProject/updateUser" method="post">
            <div class="mb-3">
                <label for="userId" class="form-label">User ID</label>
                <input type="text" class="form-control" id="userId" name="userId" required>
            </div>
            <div class="mb-3">
                <label for="userName" class="form-label">User Name</label>
                <input type="text" class="form-control" id="userName" name="userName" required>
            </div>
            <div class="mb-3">
                <label for="userEmail" class="form-label">User Email</label>
                <input type="email" class="form-control" id="userEmail" name="userEmail" required>
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
</div>

</body>
</html>