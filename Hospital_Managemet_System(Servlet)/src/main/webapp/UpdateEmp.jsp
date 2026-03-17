<%@ include file="header.jsp" %>

<title>Update Patient</title>

<style>

    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background: linear-gradient(135deg, #e3f2fd, #bbdefb);
        margin: 0;
        padding: 0;
    }

    .main-content {
        background: transparent;
        min-height: 100vh;
        padding-top: 50px;
        padding-bottom: 50px;
        display: flex;
        justify-content: center;
        align-items: center;
        margin-top:0;
    }

    .update-container {
        background: #ffffff;
        border-radius: 12px;
        box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
        max-width: 650px;
        width: 100%;
        padding: 40px 50px;
        transition: 0.3s ease-in-out;
    }

    .update-container:hover {
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
    }

    .update-container h2 {
        text-align: center;
        color: #1565c0;
        font-weight: 600;
        font-size: 28px;
        margin-bottom: 25px;
        font-weight:bold;
    }

    label {
        display: block;
        font-weight: 500;
        color: #34495e;
        font-size: 16px;
        margin-top: 12px;
        margin-bottom: 6px;
    }

    input[type="text"],
    input[type="number"],
    input[type="date"] {
        width: 100%;
        padding: 12px 14px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        box-sizing: border-box;
        transition: 0.3s;
    }

    input:focus {
        border-color: #1976d2;
        outline: none;
        box-shadow: 0 0 5px rgba(25, 118, 210, 0.2);
    }

    .btn-submit {
        width: 100%;
        background: linear-gradient(135deg, #1976d2, #0d47a1);
        color: white;
        border: none;
        border-radius: 8px;
        padding: 13px;
        font-size: 17px;
        font-weight: 500;
        margin-top: 30px;
        cursor: pointer;
        transition: 0.3s;
    }

    .btn-submit:hover {
        background: linear-gradient(135deg, #1565c0, #0d47a1);
        box-shadow: 0 4px 12px rgba(21, 101, 192, 0.3);
    }

    .text-success {
        color: #2e7d32;
        text-align: center;
        font-weight: 600;
        margin-bottom: 10px;
    }

    .text-danger {
        color: #c62828;
        text-align: center;
        font-weight: 600;
        margin-bottom: 10px;
    }

    @media (max-width: 576px) {
        .update-container {
            padding: 25px 20px;
        }

        .update-container h2 {
            font-size: 22px;
        }
    }

</style>

<div class="main-content app-content">
    <div class="container-fluid">
        <div class="update-container">

         <form action="updateemp" method="post">
        <input type="hidden" name="id" value="${id}">
        <label>Full Name :</label>
        <input type="text" name="full_name" placeholder="Enter Name" value ="${full_name }"required>
        
        <label> Role :</label>
        <input type="text" name="role" placeholder="Enter Role" value ="${role }" required>
        
        <label>Department :</label>
        <input type="text" name="department" placeholder="Enter Department" value ="${department }" required>
        
        <label>Contact No :</label>
        <input type="number" name="contact" placeholder="Enter Phone_no" value ="${contact }" required>
        
        <label>Shift Info :</label>
        <input type="text" name="shift" placeholder="Enter shift" value ="${shift }"  required>
        
        <label> Payement Status  :</label>
        <input type="text" name="payement_status" placeholder="Enter Payement Status" value ="${payement_status }"  required>
        
        <label>Date-Of-Joining :</label>
        <input type="date" name="date_of_joining" placeholder="Enter Date-Of-Joining" value ="${date_of_joining }"  required>
       
        <button type="submit">Register</button>
    </form>
    </div>
</div>

