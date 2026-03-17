<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Get Record</title>
</head>
<body>
		<c:if test="${not empty error}">
		   <h3 style="color:red">${error}</h3>
		</c:if>

    <h2>Get Patient Record</h2>
    
    <form action="selectServlet" method="post">
       Enter Id : <input type="text" name="id" required><br><br>
        <input type="submit" value="Get">
    </form>
     
     <h2>Patient's Id is : ${id } </h2>
     <h2>Patient's Full_name is : ${fullName } </h2>
     <h2>Patient's Date_Of_Birth is : ${dateOfBirth } </h2>
     <h2>Patient's Address is : ${address } </h2>
     <h2>Patient's Disease is : ${disease } </h2>
     <h2>Patient's Total_bill is : ${totalBill } </h2>
     
     
</body>
</html>
