<%@ include file="header.jsp" %>

<style>

    body {
    font-family: Arial, sans-serif;
        background: linear-gradient(to right, #e0f7fa, #f1f8e9);
        margin: 0;
        padding: 0;
    }

    .register-container {
        max-width: 650px;
        margin: 50px auto;
        background: #ffffff;
        padding: 40px 35px;
        border-radius: 15px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .register-container:hover {
        transform: translateY(-5px);
        box-shadow: 0 12px 35px rgba(0, 0, 0, 0.15);
    }


    .register-container h2 {
        text-align: center;
         color: #1e3c72;
        font-weight: 700;
        margin-bottom: 10px;
        font-size: 30px;
        letter-spacing: 1px;
         font-weight:bold;
    }

   
    .text-success {
        color: #388e3c;
        text-align: center;
        margin-bottom: 10px;
        font-weight: 500;
    }

    .text-error {
        color: #d32f2f;
        text-align: center;
        margin-bottom: 10px;
        font-weight: 500;
    }

   
    .register-container form input, 
    .register-container form select {
        width: 100%;
        padding: 14px 16px;
        margin: 12px 0 22px 0;
        border-radius: 8px;
        border: 1px solid #b0bec5;
        font-size: 15px;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    .register-container form input:focus, 
    .register-container form select:focus {
        border-color: #00796b;
        outline: none;
        box-shadow: 0 0 8px rgba(0, 121, 107, 0.3);
    }


    .register-container form h5 {
        margin-bottom: 5px;
        color: #37474f;
        font-weight: 600;
        font-size: 20px;
    }


    .register-container form button {
        width: 100%;
        padding: 14px;
        background: linear-gradient(135deg, #26a69a, #00796b);
        border: none;
        border-radius: 8px;
        color: white;
        font-size: 17px;
        font-weight: 600;
        cursor: pointer;
        transition: background 0.3s ease, transform 0.2s ease;
    }

    .register-container form button:hover {
        background: linear-gradient(135deg, #00796b, #004d40);
        transform: translateY(-2px);
    }

    /* Footer */
    .footer {
        margin-top: 50px;
        text-align: center;
        color: #607d8b;
        font-size: 14px;
    }

</style>

<body>
    <div class="register-container">
        <h2>Register Patient</h2>
        
        <h6 class="text-success">${Registered}</h6>
        <h6 class="text-error">${Unregistered}</h6>
        
        <form action="registerServlet" method="post">
            <h5><label>Full Name :</label></h5>
            <input type="text" name="full_name" placeholder="Enter Patient's Name" required>

            <h5><label>Date Of Birth :</label></h5>
            <input type="date" name="date_of_birth" required>

            <h5><label>Address :</label></h5>
            <input type="text" name="address" placeholder="Enter Address" required>

            <h5><label>Disease :</label></h5>
            <input type="text" name="disease" placeholder="Enter Disease" required>

            <h5><label>Total Bill :</label></h5>
            <input type="text" name="total_bill" placeholder="Enter Total Bill" required>

            <button type="submit">Register</button>
        </form>
    </div>
</body>

<%@ include file="footer.jsp" %>
