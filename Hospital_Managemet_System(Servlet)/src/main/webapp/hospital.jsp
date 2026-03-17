<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Green City Hospital</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

    body {
        margin: 0;
        font-family: 'Poppins', sans-serif;
        background: 
            linear-gradient(rgba(240, 248, 255, 0.8), rgba(240, 248, 255, 0.8)),
            url('https://img.freepik.com/free-photo/blur-hospital-clinic-interior_1203-7609.jpg?t=st=1728720000~exp=1728723600~hmac=8eaa6886c8294fdf4523a2c414c2e5ac4b23b251bd04ab1dcfdd781f44f8c687&w=1060');
        background-size: cover;
        background-position: center;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .container {
        background-color: rgba(255, 255, 255, 0.9);
        border-radius: 20px;
        box-shadow: 0 8px 25px rgba(0,0,0,0.2);
        width: 90%;
        max-width: 1200px;
        text-align: center;
        padding: 40px 30px;
    }

    .welcome {
        font-size: 42px;
        font-weight: 700;
        background: linear-gradient(90deg, #00796b, #2e7d32);
        -webkit-background-clip: text;
        -webkit-text-fill-color: transparent;
        margin-bottom: 10px;
        letter-spacing: 1px;
    }

    .sub-heading {
        color: #0d47a1;
        font-size: 20px;
        margin-bottom: 40px;
        font-weight: 500;
    }

    .card-container {
        display: flex;
        justify-content: space-evenly;
        align-items: center;
        flex-wrap: nowrap;
        gap: 25px;
    }

    .card {
        background: linear-gradient(135deg, #bbdefb, #e3f2fd);
        border-radius: 15px;
        width: 300px;
        padding: 25px;
        text-align: center;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        box-shadow: 0 5px 15px rgba(0,0,0,0.15);
        cursor: pointer;
    }

    .card:hover {
        transform: translateY(-10px);
        box-shadow: 0 10px 25px rgba(0,0,0,0.2);
    }

    .card img {
        width: 80px;
        height: 80px;
        margin-bottom: 20px;
    }

    .card h2 {
        color: #0d47a1;
        font-size: 22px;
        margin-bottom: 10px;
    }

    .card p {
        color: #333;
        font-size: 15px;
        margin-bottom: 20px;
    }

    .login-btn {
        background-color: #1565c0;
        color: white;
        border: none;
        border-radius: 8px;
        padding: 10px 20px;
        font-size: 15px;
        transition: background 0.3s ease;
    }

    .login-btn:hover {
        background-color: #0d47a1;
    }

    footer {
        margin-top: 40px;
        font-size: 14px;
        color: #555;
    }

    @media (max-width: 900px) {
        .card-container {
            flex-wrap: wrap;
        }
        .card {
            width: 90%;
        }
    }
</style>
</head>
<body>
    <div class="container">
        <h1 class="welcome">Welcome to Green City Hospital...!</h1>
        <div class="sub-heading">Choose your login type to continue</div>

        <div class="card-container">
          
           
          
            <div class="card">
                <img src="https://cdn-icons-png.flaticon.com/512/3135/3135715.png" alt="Manager Icon">
                <h2>Admin</h2>
                <p>Login to oversee hospital operations, staff, and reports.</p>
                <button class="login-btn" onclick="window.location.href='adminLogin.jsp'">Login as Admin</button>
            </div>
            
             <div class="card">
                <img src="https://cdn-icons-png.flaticon.com/512/3774/3774299.png" alt="Doctor Icon">
                <h2>Doctor</h2>
                <p>Login to manage patients, appointments, and medical reports.</p>
                <button class="login-btn" onclick="window.location.href='doctorlogin.jsp'">Login as Doctor</button>
            </div>
            

     
            <div class="card">
                <img src="https://cdn-icons-png.flaticon.com/512/3209/3209265.png" alt="Receptionist Icon">
                <h2>Receptionist</h2>
                <p>Manage registrations, appointments, and assist patients.</p>
                <button class="login-btn" onclick="window.location.href='receptlogin.jsp'">Login as Receptionist</button>
            </div>
        </div>

        <footer>
            © <%= java.time.Year.now() %> Green City Hospital | All Rights Reserved
        </footer>
    </div>
</body>
</html>
