<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css">

    <script type="text/javascript">
        function validate(event) {
            event.preventDefault(); // Prevent form submission
            var username = document.getElementById("id").value;
            
            var password = document.getElementById("pass").value;
            
            if(username==""){
            	alert("Please enter username");
            }
            if(username.length<5){
            	alert("Please enter usename length greater than 5");
            }
            
            let passPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{6,12}$/; 
            
            if(password==""){
           	alert("Please enter password");
            }
            else if(!password.match(passPattern)){
            	alert("Password must contain 1 character, 1 digit, 1 special symbol, and be 6-12 characters long");
            }
            
        }
    </script>
    
    </head>
<body>

    <div class="container">
    <h2 class="mt-5">Login</h2>
    <form action="${pageContext.request.contextPath}/login" method="post" class="mt-4">
        <div class="mb-3">
            <label for="username" class="form-label">Username</label>
            <input type="text" id="id" class="form-control"  name="username" placeholder="Enter your username" required>
        </div>
        <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" id="pass" class="form-control" name="password" placeholder="Enter your password" required>
        </div>
        <button onclick="validate(event)" type="submit" class="btn btn-primary">Login</button>
    </form>

    <!-- Display Error Message -->
    <c:if test="${not empty errorMessage}">
        <div class="alert alert-danger mt-3">
            ${errorMessage}
        </div>
    </c:if>
</div>

</body>
</html>