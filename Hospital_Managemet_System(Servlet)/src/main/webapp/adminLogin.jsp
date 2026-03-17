<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Login | Green City Hospital</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }
        body {
            margin: 0;
            font-family: 'Poppins', sans-serif;
            background: #fef6f5;
        }
        .login-wrapper {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .login-card {
            display: flex;
            width: 900px;
            max-width: 93%;
            background: white;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }
        .login-left {
            flex: 1;
            padding: 50px;
        }
        .login-left h2 {
            margin-bottom: 30px;
            color: #333;
        }
        .login-left input[type=text], .login-left input[type=password] {
            width: 100%;
            padding: 12px;
            margin: 12px 0;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .login-left input[type=submit] {
            width: 100%;
            padding: 12px;
            background-color: #7b68ee;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }
        .login-left input[type=submit]:hover {
            background-color: #6953d9;
        }
        .login-left .links {
            display: flex;
            justify-content: space-between;
            font-size: 14px;
            margin-top: 10px;
        }
        .login-left .error-message {
            color: red;
            margin-bottom: 15px;
            text-align: center;
        }
        .login-right {
            flex: 1;
            background: #fff4e6;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 30px;
            text-align: center;
        }
        .login-right img {
            max-width: 150px;
            margin-bottom: 20px;
        }
        .login-right h3 {
            margin-bottom: 10px;
            color: #333;
        }
        .login-right p {
            font-size: 14px;
            color: #666;
        }
        .social-buttons {
            margin-top: 20px;
            display: flex;
            gap: 10px;
            justify-content: center;
        }
        .social-buttons button {
            border: none;
            padding: 8px 12px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            color: white;
        }
        .google { background: #db4437; }
        .facebook { background: #4267B2; }
        .twitter { background: #1DA1F2; }
    </style>
</head>
<body>
    <div class="login-wrapper">
        <div class="login-card">
            <div class="login-left">
                <h2>Admin Login</h2>

                 <c:if test="${not empty errMsg}">
				      <p style="color:red; font-weight:bold;">${errMsg}</p>
				  </c:if>

                <form action="adminLogin" method="post">
                <label>Email Id</label>
                    <input type="text" name="email" placeholder="Enter your email address" required>
                    <label>Password </label>
                    <input type="password" name="password" placeholder="Enter your password" required>
                    <div class="links">
                        <label><input type="checkbox" name="remember"> Remember me</label>
                        <a href="#">Forgot Password?</a>
                    </div>
                    <input type="submit" value="Sign In">
                </form>
            </div>

            <!-- Right Side Illustration -->
            <div class="login-right">
                <img src="https://cdn-icons-png.flaticon.com/512/3064/3064197.png" alt="Security Illustration">
                <h3>Welcome Back!</h3>
                <p>Sign in to your account to continue.</p>
                <div class="social-buttons">
                    <button class="google">Google</button>
                    <button class="facebook">Facebook</button>
                    <button class="twitter">Twitter</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
