
<%@ include file="header.jsp" %>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
    }
    .register-container {
        max-width: 580px;
        margin: 10px auto;
        background: #fff;
        padding: 30px 40px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.1);
    }
  .register-container h2 {
        text-align: center;
        color: #1e3c72;
        font-weight: 600;
        margin-bottom: 25px;
    }
    .register-container form input, 
    .register-container form select {
        width: 100%;
        padding: 12px 15px;
        margin: 10px 0 20px 0;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 15px;
    }
    .register-container form input:focus, 
    .register-container form select:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0,123,255,0.5);
    }
    .register-container form button {
        width: 100%;
        padding: 12px;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        color: white;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }
    .register-container form button:hover {
        background-color: #0056b3;
    }
    .footer {
        margin-top: 50px;
    }
</style>
<body>
   


<div class="register-container">
    <h2>Register Doctor</h2>
    
   <h6 class ="text-success">${Registered}</h6>
    <h6 class="text-error">${Unregistered}</h6>
    
    <form action="registerDoctor" method="post">
        <h5><label>Full Name :</label></h5>
        <input type="text" name="name" placeholder="Enter Name" required>
        
        <h5><label> Status :</label></h5>
        <input type="text" name="status" placeholder="Enter Status" required>
        
         <h5><label>Specialization :</label></h5>
        <input type="text" name="specialization" placeholder="Enter Specialization" required>
        
         <h5><label>Contact No :</label></h5>
        <input type="number" name="phone_number" placeholder="Enter Phone_no" required>
        
        <button type="submit">Register</button>
    </form>
</div>
</body>
<%@ include file="footer.jsp" %>
