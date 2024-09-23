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

<div class="container mt-4">
    <h1>Welcome to Admin Dashboard</h1>

    <!-- Navigation Menu -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light mb-4">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="overview">Overview</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="manage_users">Manage Users</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="settings">Settings</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/logout">Logout</a>
            </li>
        </ul>
    </nav>

    <!-- Admin Section -->
    <div>
        <h2>Overview</h2>
        <p>Here, you can manage the application, view user data, and modify settings.</p>

        <!-- Example Cards Section -->
        <div class="row">
            <div class="col-md-4">
                <div class="card text-white bg-primary mb-3">
                    <div class="card-body">
                        <h5 class="card-title">User Management</h5>
                        <p class="card-text">Manage all registered users and their roles.</p>
                        <a href="manage_users" class="btn btn-light">Manage Users</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-success mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Application Settings</h5>
                        <p class="card-text">Update the application settings and configurations.</p>
                        <a href="settings" class="btn btn-light">Modify Settings</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card text-white bg-warning mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Reports</h5>
                        <p class="card-text">View application reports and user statistics.</p>

</body>
</html>