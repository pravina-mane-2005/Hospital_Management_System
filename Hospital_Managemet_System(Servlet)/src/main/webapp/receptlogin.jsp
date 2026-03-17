<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Receptionist Login | Green City Hospital</title>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">

<style>
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
    }

    body {
        background: url('https://cdn.pixabay.com/photo/2016/11/08/05/26/reception-1804590_1280.jpg') no-repeat center center/cover;
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .login-container {
        background: rgba(255, 255, 255, 0.92);
        padding: 45px 50px;
        border-radius: 25px;
        box-shadow: 0 4px 25px rgba(0, 0, 0, 0.3);
        max-width: 400px;
        width: 100%;
        text-align: center;
        backdrop-filter: blur(8px);
    }

    .login-container img {
        width: 90px;
        height: 90px;
        margin-bottom: 15px;
        border-radius: 50%;
        background: #fff;
        padding: 10px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }

    .login-container h2 {
        color: #2c3e50;
        margin-bottom: 25px;
        font-weight: 600;
    }

    .input-field {
        text-align: left;
        margin-bottom: 22px;
    }

    .input-field label {
        font-weight: 500;
        display: block;
        margin-bottom: 6px;
        color: #333;
    }

    .input-field input {
        width: 100%;
        padding: 10px 14px;
        border-radius: 10px;
        border: 1px solid #ccc;
        outline: none;
        transition: all 0.3s ease;
    }

    .input-field input:focus {
        border-color: #0078d7;
        box-shadow: 0 0 6px rgba(0, 120, 215, 0.5);
    }

    .login-btn {
        width: 100%;
        padding: 10px;
        background-color: #0078d7;
        color: white;
        font-weight: 600;
        border: none;
        border-radius: 10px;
        cursor: pointer;
        transition: 0.3s;
    }

    .login-btn:hover {
        background-color: #005fa3;
    }

    .error-msg {
        color: red;
        font-size: 14px;
        margin-bottom: 10px;
    }

    .register-link {
        margin-top: 15px;
        font-size: 14px;
    }

    .register-link a {
        color: #0078d7;
        text-decoration: none;
        font-weight: 500;
    }

    .register-link a:hover {
        text-decoration: underline;
    }
</style>
</head>
<body>

    <div class="login-container">
        <img src="https://cdn-icons-png.flaticon.com/512/4140/4140049.png" alt="Receptionist Icon">

        <h2>Receptionist Login</h2>

                <c:if test="${not empty errMsg}">
				      <p style="color:red; font-weight:bold;">${errMsg}</p>
				  </c:if>

        <form action="receptLogin" method="post">
            <div class="input-field">
                <label for="receptionist_name">Username</label>
                <input type="text" id="name" name="name" placeholder="Enter your username" required>
            </div>

            <div class="input-field">
                <label for="receptionist_password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <button type="submit" class="login-btn">Login</button>

        </form>
    </div>

</body>
</html>
