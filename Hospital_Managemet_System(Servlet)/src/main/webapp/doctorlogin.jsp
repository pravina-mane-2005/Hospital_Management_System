<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login | Green City Hospital</title>

<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;600&display=swap" rel="stylesheet">

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: 'Poppins', sans-serif;
        /* ✅ Permanent working medical background */
        background: url('https://cdn.pixabay.com/photo/2017/08/06/00/08/stethoscope-2583415_1280.jpg') no-repeat center center/cover;
        background-color: #e9f4fb; /* fallback */
        height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        background-attachment: fixed;
        position: relative;
        overflow: hidden;
    }

    .overlay {
        position: absolute;
        width: 100%;
        height: 100%;
        background: rgba(255, 255, 255, 0.55);
        backdrop-filter: blur(5px);
        z-index: 0;
    }

    .login-container {
        position: relative;
        z-index: 1;
        background: rgba(255, 255, 255, 0.9);
        border-radius: 20px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.25);
        width: 400px;
        padding: 45px 35px;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
        backdrop-filter: blur(4px);
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    .login-container img {
        width: 85px;
        margin-bottom: 12px;
        filter: drop-shadow(0 2px 4px rgba(0,0,0,0.3));
    }

    .login-container h2 {
        color: #0066cc;
        font-size: 26px;
        font-weight: 600;
        margin-bottom: 25px;
        letter-spacing: 0.5px;
    }

    .input-box {
        margin-bottom: 20px;
        text-align: left;
    }

    .input-box label {
        display: block;
        font-weight: 500;
        margin-bottom: 5px;
        color: #333;
    }

    .input-box input {
        width: 100%;
        padding: 11px 13px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 15px;
        outline: none;
        transition: all 0.3s ease;
    }

    .input-box input:focus {
        border-color: #0066cc;
        box-shadow: 0 0 10px rgba(0,102,204,0.3);
    }

    .login-btn {
        background: linear-gradient(90deg, #007bff, #00aaff);
        color: white;
        font-size: 16px;
        font-weight: 600;
        border: none;
        border-radius: 10px;
        padding: 13px 0;
        width: 100%;
        cursor: pointer;
        transition: 0.3s;
        letter-spacing: 0.5px;
    }

    .login-btn:hover {
        background: linear-gradient(90deg, #00aaff, #007bff);
        transform: translateY(-2px);
    }

    .footer-text {
        margin-top: 25px;
        color: #555;
        font-size: 14px;
    }

    .footer-text a {
        color: #007bff;
        text-decoration: none;
        font-weight: 500;
    }

    .footer-text a:hover {
        text-decoration: underline;
    }
    .error-msg {
    color: #d93025;
    font-weight: 600;
    background: rgba(255, 0, 0, 0.1);
    border: 1px solid #ff4d4d;
    padding: 8px 10px;
    border-radius: 6px;
    margin-bottom: 15px;
}
</style>
</head>

<body>
    <div class="overlay"></div>
    <div class="login-container">
        <img src="https://cdn-icons-png.flaticon.com/512/387/387561.png" alt="Doctor Icon">
        <h2>Doctor Login</h2>
			<% 
		    String errorMessage = (String) request.getAttribute("errMsg"); 
		    if (errorMessage != null) { 
		%>
		    <p style="color: red; font-weight: 600; margin-bottom: 15px;">
		        <%= errorMessage %>
		    </p>
		<% 
		    } 
		%>
	

        <form action="doctorLogin" method="post">
            <div class="input-box">
                <label for="username">Username</label>
                <input type="text" id="username" name="doctor_name" placeholder="Enter your usernamme" required>
            </div>

            <div class="input-box">
                <label for="password">Password</label>
                <input type="password" id="password" name="doctor_password" placeholder="Enter your password" required>
            </div>

            <button type="submit" class="login-btn">Login</button>

            <div class="footer-text">

                <p>Back to <a href="hospital.jsp">Home Page</a></p>
            </div>
        </form>
    </div>
</body>
</html>
