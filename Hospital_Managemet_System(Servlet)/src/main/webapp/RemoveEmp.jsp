<%@ include file="header.jsp" %>

<title>Remove Patient Record</title>

<style>
   
    .main-content {
        background-color: #f8f9fa;
        min-height: 100vh;
        padding-top: 30px;
        padding-bottom: 30px;
        display:flex;
        justify-content:center;
      
    }

    .remove-container {
        background: #fff;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        padding: 40px 50px;
        max-width: 600px;
        margin: 60px auto;
        text-align: center;
        transition: all 0.3s ease;
         
    }

    .remove-container:hover {
        transform: translateY(-3px);
        box-shadow: 0 8px 20px rgba(0,0,0,0.12);
    }

    .remove-container h2 {
        color: #1e3c72;
        font-weight: 600;
        margin-bottom: 25px;
        font-size: 26px;
    }

    .remove-container input[type="text"] {
        width: 100%;
        padding: 12px 14px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        margin-bottom: 20px;
        transition: border-color 0.3s;
    }

    .remove-container input[type="text"]:focus {
        border-color: #007bff;
        outline: none;
    }

    .remove-container input[type="submit"] {
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 6px;
        padding: 12px 35px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s;
    }

    .remove-container input[type="submit"]:hover {
        background-color: #0056b3;
    }

/
    .alert {
        padding: 12px 18px;
        border-radius: 6px;
        margin-bottom: 15px;
        font-weight: 500;
        font-size: 15px;
    }

    .alert-success {
        color: #155724;
        background-color: #d4edda;
        border: 1px solid #c3e6cb;
    }

    .alert-danger {
        color: #721c24;
        background-color: #f8d7da;
        border: 1px solid #f5c6cb;
    }
</style>

<!-- MAIN CONTENT -->
<div class="main-content app-content">
    <div class="container-fluid">
        <div class="remove-container">
        
        <h2>Remove Employee Record</h2>
        
        <p class="text-success">${Removed}</p>
        <p class="text-danger">${Unable}</p>
            <form action="deleteemp" method="post">
                <input type="text" name="id" placeholder="Enter Doctor ID" required>
                <br>
                <input type="submit" value="Remove">
            </form>

        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>
