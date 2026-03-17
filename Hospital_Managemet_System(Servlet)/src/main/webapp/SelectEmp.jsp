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
    
    <form action="selectemp" method="post">
       Enter Id : <input type="text" name="id" required><br><br>
        <input type="submit" value="Get">
    </form>
     
     <h2>Employee Id is : ${id } </h2>
     <h2>Employee Full_name is : ${full_name } </h2>
     <h2>Employee Role is : ${role } </h2>
     <h2>Employee Department is : ${department } </h2>
     <h2>Employee Contact is : ${contact } </h2>
     <h2>Employee Shift is : ${shift } </h2>
     <h2>Employee Payement Status is : ${payement_status } </h2>
     <h2>Employee Date_of_Joining is : ${date_of_joining } </h2>
     
     
</body>
</html>
